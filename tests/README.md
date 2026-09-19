# Testing Strategy

Public tests should use synthetic prompts, fixtures, mocks, and locally available models where practical.

Useful coverage includes:

- Request validation
- Structured output parsing
- Prompt regression tests
- Tool argument validation
- Agent state transitions
- Provider error handling
- Timeout/retry behavior
- Model response normalization
- API authentication
- Benchmark fixture consistency

For expensive model evaluations, separate deterministic unit tests from manually or periodically executed model benchmarks.
