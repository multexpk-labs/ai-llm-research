#!/usr/bin/env bash
set -u
echo "=== LLM Host ==="
echo "Host: $(hostname)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo
echo "=== Memory ==="
free -h 2>/dev/null || true
echo
echo "=== Disk ==="
df -h / 2>/dev/null || true
echo
echo "=== GPU ==="
if command -v nvidia-smi >/dev/null 2>&1; then
  nvidia-smi --query-gpu=name,memory.total,memory.used,utilization.gpu --format=csv,noheader
else
  echo "nvidia-smi not available"
fi
echo
echo "=== Ollama ==="
if command -v ollama >/dev/null 2>&1; then
  ollama --version
  ollama list
else
  echo "ollama not installed"
fi
