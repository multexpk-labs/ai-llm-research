# Ollama and Local Models

Ollama provides a practical local model-serving environment for experiments and application integration.

Useful operations include:

```bash
ollama --version
ollama list
ollama ps
ollama pull MODEL
ollama show MODEL
ollama run MODEL
```

For API experiments, keep the endpoint private or protected by an appropriate authentication/reverse-proxy design. Do not expose a raw local inference service to the public Internet without security controls.

See the organization repositories `ollama-lab` and `llm-infrastructure` for deployment-oriented material.
