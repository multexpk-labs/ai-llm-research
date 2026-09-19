# Inference and Quantization

Local inference depends on model weights, runtime overhead, KV cache, context length, concurrency, and hardware memory.

A useful planning model is:

`Memory ≈ model weights + runtime overhead + KV cache + workspace`

## Quantization

Quantized formats can reduce memory requirements and may improve practical deployment capacity, with possible quality or performance trade-offs.

Common research questions:

- Which quantization fits available memory?
- How does context length affect memory?
- What changes with concurrent requests?
- Does quantization materially affect the target task?

Measure rather than assuming.
