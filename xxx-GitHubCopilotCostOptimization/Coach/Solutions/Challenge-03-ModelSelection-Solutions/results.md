# Challenge 03 — Measured Results (Answer Key)

Source: GitHub Models inference API. Method: `harness.py`, **n=4 trials per (model, task)**,
single-shot (no retries). Exact token counts vary by model version; the **pattern is stable.**

## Summary

| Model | Task | Pass rate | Avg total tokens |
|---|---|---|---|
| `openai/gpt-4.1-nano` (cheap) | sort (easy) | **4/4 — 100%** | 93 |
| `openai/gpt-4.1-nano` (cheap) | letter (hard) | **0/4 — 0%** (always "4") | 31 |
| `openai/gpt-5` (strong) | sort (easy) | **4/4 — 100%** | 325 |
| `openai/gpt-5` (strong) | letter (hard) | **4/4 — 100%** | 391 |

## Interpretation

- **Easy task (version sort):** both models 100% correct. The cheap model produced the
  identical answer using **~3.5× fewer tokens** (93 vs 325). Paying for the strong model here
  buys nothing → **use the cheap model.**
- **Hard task (letter count):** the cheap model was **wrong every single time** (always "4")
  and was *cheaper* in tokens — the low cost is a trap because the output is useless. The
  strong model was the only correct option, at ~13× the cheap model's token cost →
  **pay for capability.**

## Models we evaluated and rejected as the "cheap" pick

| Model | Why rejected |
|---|---|
| `mistral-ai/ministral-3b` | Too weak — failed the **easy** task (2/8), breaking the "cheap wins Part 1" story |
| coin-change "greedy trap" task | Modern small models pass it — no longer discriminates; replaced with letter counting |

## Reproduce

```bash
python harness.py --models "openai/gpt-4.1-nano" "openai/gpt-5" --tasks sort letter -n 4 --sleep 2
```
