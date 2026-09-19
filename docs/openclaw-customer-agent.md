# OpenClaw Customer-Question Agent Research

A research track uses **OpenClaw** with local/remote LLM infrastructure to investigate an agent that can help process customer questions received through WhatsApp.

Conceptual architecture:

`WhatsApp → Gateway/CRM → OpenClaw → LLM → Tools/Knowledge → Response → WhatsApp`

The gateway or CRM should remain responsible for WhatsApp transport, authentication, message history, and delivery events. OpenClaw should operate as the agent/orchestration layer.

## Agent responsibilities

Potential tasks include:

- Understand incoming customer questions
- Retrieve approved business knowledge
- Draft or send appropriate answers
- Identify when human support is required
- Maintain conversational context
- Use approved tools for bounded actions
- Record useful interaction state

## Safety boundary

The agent should not receive unrestricted production access. Separate read-only knowledge tools from write/destructive tools. Sensitive actions should require explicit approval or deterministic business rules.

Use synthetic customer conversations for public testing.
