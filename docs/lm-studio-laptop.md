# LM Studio on a Basic Laptop

One research environment uses **LM Studio** on a local laptop with a small shared Intel GPU configuration (approximately 1–4 GB shared graphics memory, depending on system allocation) and system RAM.

The purpose is not maximum model size. It is to test lightweight local models and compare CPU/GPU-offload behavior on ordinary hardware.

## Models

Initial experiments include lightweight:

- Phi-3 family models
- Small Qwen models
- Other compact GGUF models suitable for the available memory

Exact model files, quantization, context length, and runtime settings should be recorded for every experiment.

## Research questions

- Can the model run acceptably on basic laptop hardware?
- Does partial GPU offload improve latency?
- How does context length affect memory and response time?
- Which small model provides useful results for a specific task?
- How does LM Studio compare with Ollama on the same machine?

## Important constraint

Shared Intel graphics memory is not equivalent to dedicated VRAM. The available capacity and acceleration path depend on the laptop hardware, drivers, runtime, and model format.

Use measured benchmarks instead of assuming that a model will fit or accelerate.
