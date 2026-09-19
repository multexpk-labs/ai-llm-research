# AI & LLM Research

A practical research laboratory for **AI, large language models, local inference, model evaluation, agents, automation, and AI-assisted software engineering**.

This repository focuses on reproducible experiments and engineering understanding rather than hype or benchmark collecting without context.

## Research Philosophy

**Question → Hypothesis → Environment → Experiment → Measure → Compare → Document → Reproduce**

Measured results, assumptions, and subjective observations should be clearly separated.

## Research Areas

- Open-weight and hosted LLMs
- Local and remote inference
- Ollama and model serving
- GGUF and quantization
- GPU/CPU inference and memory planning
- Context windows and KV-cache behavior
- Prompt engineering and regression testing
- Structured output / JSON generation
- Tool calling
- AI agents
- RAG and embeddings
- LLM API gateways
- Model evaluation
- Latency, throughput and resource benchmarking
- AI-assisted coding
- Automation with LLMs

## Model Evaluation

A useful evaluation considers the actual target task:

- Accuracy or task success
- Instruction following
- Structured output reliability
- Tool-call correctness
- Context handling
- Latency
- Throughput
- Memory/VRAM usage
- Failure rate
- Cost per useful result

Use a fixed, versioned evaluation set containing normal cases, edge cases, malformed input, long-context cases, and expected failure cases.

See [Model Evaluation](docs/model-evaluation.md).

## Inference & Quantization

Practical memory planning can be approximated as:

`Memory ≈ model weights + runtime overhead + KV cache + workspace`

Context length and concurrency can materially change memory requirements. Quantization can reduce memory requirements with task-dependent quality and performance trade-offs.

See [Inference and Quantization](docs/inference-and-quantization.md).

## Ollama and Local Models

Ollama is one of the practical runtimes used for local and remote model experiments.

```bash
ollama --version
ollama list
ollama ps
ollama pull MODEL
ollama show MODEL
ollama run MODEL
```

Keep inference endpoints private or behind an appropriate authenticated gateway. Do not expose an unrestricted model server directly to the public Internet.

See [Ollama and Local Models](docs/ollama-and-local-models.md).

Related organization repositories: `ollama-lab` and `llm-infrastructure`.

## Agents and Tool Calling

A practical agent can be represented as:

`User → Application → Agent → Model → Tool Router → External Service → Result`

Important engineering controls include least-privilege tools, argument validation, read/write separation, human approval for sensitive operations, bounded retries, execution limits, action logging, and deterministic fallbacks.

See [Agents and Tools](docs/agents-and-tools.md).

## Local vs Remote AI

AI workloads may run locally, on a private GPU host, or behind an application API gateway.

`Client → Authenticated API → LLM Runtime → Model`

An application gateway can provide authentication, rate limiting, routing, logging, and usage controls without exposing the underlying inference service directly.

See [Local and Remote Architecture](docs/local-remote-architecture.md).

## Prompt Experiments

Prompts are experimental inputs and should be versioned. Record model/runtime, prompt version, input fixture, expected output, actual output, evaluation criteria, and sampling parameters.

See [Prompt Experiments](docs/prompt-experiments.md).

## Benchmarking

Benchmark records should include:

- Model and quantization
- Runtime/version
- CPU/GPU/RAM/VRAM class
- Context length
- Concurrency
- Sampling configuration
- First-token latency
- Generation throughput
- Peak memory
- Error rate

Do not compare numbers produced from materially different workloads as though they were equivalent.

See `examples/benchmark-record.md`.

## Practical Utilities

- `bash/llm-host-check.sh` — inspect an inference host
- `python/llm_experiment.py` — create a reproducible experiment record
- `examples/experiment.json` — synthetic structured-output fixture
- `examples/benchmark-record.md` — benchmark template
- `tests/README.md` — testing strategy

## Research Topics

See [Research Topics](docs/research-topics.md) for a continuing list of experiments around models, inference, agents, retrieval, tool calling, evaluation, and AI-assisted engineering.

## Testing

Public CI should rely on deterministic unit tests, synthetic fixtures, mocks, and locally available models where practical. Expensive model evaluations should be separated from ordinary regression tests.

Useful coverage includes response parsing, structured output validation, tool arguments, agent state transitions, provider errors, timeout/retry behavior, authentication, and benchmark fixture consistency.

See [Testing Strategy](tests/README.md).

## Research and Reimplementation

MULTEXPK LABS uses:

**Find → Clone → Inspect → Understand → Document → Reimplement → Test → Improve**

When studying public models, runtimes, APIs, or projects, check licensing and applicable terms. The goal is understanding and original engineering, not copying proprietary source.

## Security and Responsible Research

Never commit API keys, access tokens, private endpoints, customer prompts, private datasets, production logs, or infrastructure credentials.

For agent experiments, isolate tools and permissions. Destructive or irreversible actions should require explicit controls or human approval.

## Related MULTEXPK LABS Repositories

- `llm-infrastructure`
- `ollama-lab`
- `ai-agents-automation`
- `coding-agent-lab`
- `ats-environment`
- `engineering-notes`
- `linux-vps-engine`
- `cloud-infrastructure`

---

## MULTEXPK LABS

**Zain Ul Abddin — Founder, MULTEXPK LTD ®™**

Technical education first, AI/LLM research second, community and engineering knowledge third, with relevant MULTEXPK infrastructure and cloud services supporting practical experimentation.

**MULTEXPK LTD ®™ – Secure Cloud • VPS • Hosting • Automation**

https://multexpk.com | https://webvpsserver.com | WhatsApp: +92 312 6565434 | support@multexpk.com