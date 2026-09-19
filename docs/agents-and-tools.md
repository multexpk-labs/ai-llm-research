# Agents, Tools and Automation

An LLM agent is more than a model call. A practical system may include planning, tool selection, state, permissions, execution, observation, and recovery.

Reference flow:

`User → Application → Agent → Model → Tool Router → External Service → Result`

## Engineering rules

- Give agents the minimum required tools.
- Validate tool arguments.
- Separate read and write permissions.
- Require approval for sensitive or irreversible operations.
- Bound retries and execution time.
- Log tool calls and outcomes.
- Provide deterministic fallbacks where possible.

When a task has known deterministic steps, ordinary automation may be more reliable than an agent.
