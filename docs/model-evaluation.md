# Model Evaluation

Model evaluation should match the task rather than relying on a single generic benchmark.

## Useful dimensions

- Task accuracy
- Instruction following
- Structured output reliability
- Tool-call correctness
- Context handling
- Latency
- Throughput
- Memory/VRAM usage
- Failure rate
- Cost per useful result

## Test set

Use a fixed, versioned evaluation set for comparisons. Include normal cases, edge cases, malformed input, long context, and expected failure cases.

## Reporting

Record model/runtime/configuration and aggregate results. Keep representative failures because averages can hide important behavior.
