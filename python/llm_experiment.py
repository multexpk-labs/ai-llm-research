#!/usr/bin/env python3
"""Create a small reproducible LLM experiment record."""
import argparse
import json
from datetime import datetime, timezone

p = argparse.ArgumentParser()
p.add_argument("--model", required=True)
p.add_argument("--prompt", required=True)
p.add_argument("--output", default="experiment.json")
args = p.parse_args()
record = {
    "timestamp_utc": datetime.now(timezone.utc).isoformat(),
    "model": args.model,
    "prompt": args.prompt,
    "notes": "Replace this fixture with measured runtime/model output.",
}
with open(args.output, "w", encoding="utf-8") as f:
    json.dump(record, f, indent=2)
print(args.output)
