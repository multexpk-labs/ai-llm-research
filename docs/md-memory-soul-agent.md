# Markdown Memory and Agent Identity

A research pattern for agent systems is to store human-readable memory and agent guidance in Markdown files.

This can separate different kinds of information:

- `SOUL.md` — stable agent identity, behavior, boundaries, and communication principles
- `MEMORY.md` — curated long-term knowledge
- `USER.md` — approved user/customer preferences or context
- `TASKS.md` — active work state
- Daily or dated notes — short-term observations and events

## Why Markdown

Markdown is simple, inspectable, versionable, portable, and easy for humans to edit. It can also be loaded selectively into an agent context.

## Memory workflow

`Conversation → Extract useful fact → Validate → Store in appropriate MD file → Retrieve when relevant → Update carefully`

Do not automatically store every conversation. Memory should be selective and should avoid secrets, unnecessary personal data, credentials, payment information, or sensitive customer information.

## Context management

Large memory files can consume context and reduce useful reasoning space. Prefer concise curated memory, topic-specific files, summaries, and retrieval by relevance.

## Agent identity

An identity file should define behavior and operational boundaries, not secretly override application authorization or platform policy.
