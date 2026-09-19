# Local AI Laboratory Matrix

The MULTEXPK research environments cover different constraints rather than one universal setup.

| Environment | Runtime/UI | Hardware focus | Research purpose |
|---|---|---|---|
| Laptop | LM Studio | Basic Intel shared GPU + system RAM | Lightweight local models |
| Laptop/other local host | Ollama | CPU/GPU dependent | Runtime comparison |
| VPS | Ollama + Open WebUI | 10-core AMD + 36 GB RAM, CPU | Remote CPU inference |
| Agent environment | OpenClaw + LLM runtime | Local/remote | Customer-question automation research |

Results should be recorded with exact model, quantization, context, runtime version, hardware, and workload so comparisons remain meaningful.
