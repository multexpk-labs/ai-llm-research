# AI & LLM Research

A practical research laboratory for **AI, large language models, local inference, model evaluation, agents, automation, and AI-assisted software engineering**.

This repository records reproducible experiments across ordinary laptops, CPU VPS infrastructure, and agent-based automation.

## Research Philosophy

**Question → Hypothesis → Environment → Experiment → Measure → Compare → Document → Reproduce**

Measured results, assumptions, and subjective observations should be clearly separated.

## Research Environments

MULTEXPK LABS intentionally tests AI workloads across different hardware constraints:

| Environment | Runtime / UI | Hardware | Purpose |
|---|---|---|---|
| Local laptop | LM Studio | Basic Intel shared GPU + system RAM | Lightweight local model experiments |
| Local/other host | Ollama | CPU/GPU dependent | Runtime and model comparison |
| VPS | Ollama + Open WebUI | 10-core AMD, 36 GB RAM, CPU | Remote CPU inference |
| Agent environment | OpenClaw + LLM runtime | Local/remote | Customer-question and automation research |

The exact model, quantization, context length, runtime version, hardware and workload should be recorded for meaningful comparisons.

## LM Studio on a Basic Laptop

One research environment uses **LM Studio** on a normal laptop with a small shared Intel GPU configuration, approximately 1–4 GB of shared graphics memory depending on system allocation.

The purpose is to test lightweight GGUF models rather than chase large-model performance.

Initial model experiments include:

- Phi-3 family models
- Small Qwen models
- Other compact models suitable for the available memory

See [LM Studio Laptop Research](docs/lm-studio-laptop.md).

Shared Intel graphics memory is not equivalent to dedicated VRAM. Actual acceleration depends on hardware, drivers, runtime, model format and offload configuration, so results must be measured.

## Ollama + Open WebUI on VPS CPU

Another environment runs **Ollama + Open WebUI** on a VPS with approximately:

- 10-core AMD CPU
- 36 GB RAM
- CPU inference
- Ollama model runtime
- Open WebUI interface

Architecture:

`Browser → Open WebUI → Ollama → Model → CPU/RAM`

This environment is useful for studying practical CPU inference, remote access architecture, model loading, context behavior and resource consumption without dedicated GPU hardware.

See [Ollama + Open WebUI VPS Research](docs/ollama-openwebui-vps.md).

## OpenClaw Customer-Agent Research

A major research direction is using **OpenClaw** with local/remote LLM infrastructure to investigate an agent for handling customer questions received through WhatsApp.

Conceptual flow:

`WhatsApp → Gateway/CRM → OpenClaw → LLM → Knowledge/Tools → Response → WhatsApp`

The WhatsApp gateway or CRM remains responsible for transport, authentication, message history and delivery events. OpenClaw acts as the agent/orchestration layer.

Potential agent tasks include understanding questions, retrieving approved business knowledge, drafting responses, identifying human-support cases, maintaining useful context, and using bounded tools.

See [OpenClaw Customer-Agent Research](docs/openclaw-customer-agent.md).

## Markdown Memory / Agent Soul

One research pattern is to use human-readable Markdown files for agent identity and memory.

Example structure:

```text
agent/
├── SOUL.md
├── MEMORY.md
├── USER.md
├── TASKS.md
└── memory/
    ├── 2026-09-19.md
    └── 2026-09-20.md
```

Typical roles:

- `SOUL.md` — stable identity, behavior and boundaries
- `MEMORY.md` — curated long-term knowledge
- `USER.md` — approved user/customer context
- `TASKS.md` — active work state
- dated files — short-term observations/events

Markdown is simple, inspectable, versionable and portable. Memory should be selective rather than automatically storing every conversation.

See [Markdown Memory and Agent Identity](docs/md-memory-soul-agent.md).

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

Use fixed, versioned evaluation sets containing normal cases, edge cases, malformed input, long-context cases and expected failures.

## Inference & Quantization

A practical planning approximation is:

`Memory ≈ model weights + runtime overhead + KV cache + workspace`

Context length and concurrency can materially change memory requirements. Quantization can reduce memory requirements with task-dependent quality and performance trade-offs.

See [Inference and Quantization](docs/inference-and-quantization.md).

## Ollama

Useful operations include:

```bash
ollama --version
ollama list
ollama ps
ollama pull MODEL
ollama show MODEL
ollama run MODEL
```

Keep inference endpoints private or behind an authenticated gateway. Do not expose an unrestricted model server directly to the public Internet.

See [Ollama and Local Models](docs/ollama-and-local-models.md).

## Agents and Tool Calling

A practical agent can be represented as:

`User → Application → Agent → Model → Tool Router → External Service → Result`

Use least-privilege tools, argument validation, read/write separation, approval for sensitive actions, bounded retries, execution limits and action logging.

When a task has deterministic steps, ordinary automation may be more reliable than an agent.

## Local vs Remote AI

`Client → Authenticated API → LLM Runtime → Model`

An application gateway can provide authentication, rate limiting, routing, logging and usage controls without exposing the inference service directly.

## Prompt Experiments

Prompts should be versioned. Record model/runtime, prompt version, input fixture, expected output, actual output, evaluation criteria and sampling parameters.

## Benchmarking

Record:

- Model and quantization
- Runtime/version
- CPU/GPU/RAM/VRAM
- Context length
- Concurrency
- Sampling configuration
- First-token latency
- Generation throughput
- Peak memory
- Error rate

Do not compare results from materially different workloads as though they were equivalent.

## Practical Utilities

- `bash/llm-host-check.sh` — inference-host inspection
- `python/llm_experiment.py` — experiment record generator
- `examples/benchmark-record.md` — benchmark template
- `examples/memory-layout.md` — synthetic Markdown memory layout
- `examples/customer-agent-flow.md` — synthetic OpenClaw/WhatsApp flow
- `tests/README.md` — testing strategy

## Testing

Public CI should use deterministic tests, synthetic fixtures and mocks. Expensive model evaluations should be separated from ordinary regression tests.

For customer-agent research, test routing, memory selection, tool permissions, response validation, human handoff, duplicate messages, retries and provider failures without using real customer data.

## Security and Responsible Research

Never commit API keys, access tokens, private endpoints, customer conversations, private datasets, production logs, WhatsApp session files or infrastructure credentials.

Agent memory must be treated as data. Store only information necessary for the task, and apply appropriate access controls and retention rules.

## Research and Reimplementation

MULTEXPK LABS uses:

**Find → Clone → Inspect → Understand → Document → Reimplement → Test → Improve**

Check licenses and applicable model/provider terms. The goal is understanding and original engineering, not copying proprietary source.

## Related MULTEXPK LABS Repositories

- `llm-infrastructure`
- `ollama-lab`
- `ai-agents-automation`
- `coding-agent-lab`
- `ATS-environment`
- `whatsapp-automation`
- `engineering-notes`
- `cloud-infrastructure`

---

## MULTEXPK LABS

**Zain Ul Abddin — Founder, MULTEXPK LTD ®™**

Technical education first, AI/LLM research second, community and engineering knowledge third, with relevant MULTEXPK infrastructure and cloud services supporting practical experimentation.

**MULTEXPK LTD ®™ – Secure Cloud • VPS • Hosting • Automation**

https://multexpk.com | https://webvpsserver.com | WhatsApp: +92 312 6565434 | support@multexpk.com