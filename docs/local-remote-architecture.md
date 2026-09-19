# Local and Remote LLM Architecture

AI workloads can run locally, on a private GPU host, or behind an application API.

## Local

`Application → Local Runtime → Model`

Useful for development, privacy-sensitive experiments, and offline work.

## Private remote inference

`Application → Authenticated API → Private LLM Host → Model`

Useful when GPU resources are centralized.

## Application gateway

`Client → Application/API Gateway → Authentication → LLM Runtime → Model`

This adds a controlled boundary for authentication, rate limiting, logging, routing, and usage policy.

Never publish credentials or unrestricted inference endpoints in public repositories.
