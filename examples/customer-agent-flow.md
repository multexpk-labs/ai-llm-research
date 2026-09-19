# Synthetic Customer Question Flow

```text
Customer asks a WhatsApp question
        ↓
WhatsApp gateway / CRM receives message
        ↓
Validate tenant + message
        ↓
OpenClaw receives bounded task
        ↓
Load relevant approved Markdown knowledge
        ↓
LLM generates candidate response
        ↓
Policy / business-rule check
        ↓
Send automatically OR request human review
        ↓
Record status
```

Use mock customers and synthetic questions in tests.
