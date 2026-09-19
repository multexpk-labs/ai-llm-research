# Ollama + Open WebUI on a CPU VPS

Another research environment uses **Ollama + Open WebUI** on a VPS for CPU-based LLM testing.

Reference environment:

- 10-core AMD CPU
- 36 GB RAM
- CPU inference
- Ollama model runtime
- Open WebUI as an interactive interface

The goal is to understand how practical local inference behaves without a dedicated GPU and to provide a convenient interface for experimentation.

## Architecture

`Browser → Open WebUI → Ollama → Local Model → CPU/RAM`

Keep Ollama bound to a private interface or protected behind an authenticated reverse proxy. Open WebUI should also be protected with strong authentication.

## Experiments

Measure:

- model load time
- first-token latency
- generation speed
- RAM usage
- CPU utilization
- context-length impact
- concurrent request behavior
- model quality for the target task

The VPS should be treated as an experimental inference host rather than assuming CPU inference is equivalent to GPU inference.
