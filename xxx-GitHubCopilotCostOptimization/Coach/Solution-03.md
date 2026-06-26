# Challenge 03 - Model Selection & Output Constraints - Coach's Guide

[< Previous Solution](./Solution-02.md) - **[Home](./README.md)** - [Next Solution >](./Solution-04.md)

## Notes & Guidance

This challenge teaches one durable idea: **total cost = token rate × tokens × attempts**, so
*cheap-per-token is not cheap-per-task.* Students prove it by running the same prompt on a
cheap and an expensive model across an **easy** task and a **hard** task, measuring outcome
and tokens. The magic is the contrast: opposite winners on the two tasks.

### The core mechanic

| | Easy task (version sort) | Hard task (letter count) |
|---|---|---|
| Cheap model | ✅ correct, **fewer tokens** | ❌ confidently wrong, few tokens (a trap) |
| Strong model | ✅ correct, more tokens | ✅ correct, more tokens |
| **Lesson** | Use the cheap model → save credits | Cheap wrong answer is the costliest option → pay for capability |

### Reference answer key (measured)

Measured via the GitHub Models inference API, **n=4 per cell** (see
`Solutions/Challenge-03-ModelSelection-Solutions/`). Exact numbers will vary by model/version;
the **pattern** is what matters.

| Model | Easy: pass rate | Easy: avg tokens | Hard: pass rate | Hard: avg tokens |
|---|---|---|---|---|
| `gpt-4.1-nano` (cheap) | **4/4 (100%)** | ~93 | **0/4 (0%)** — always "4" | ~31 |
| `gpt-5` (strong) | **4/4 (100%)** | ~325 | **4/4 (100%)** | ~391 |

Takeaways to draw out:
- Easy task: identical correct answer, but the cheap model used **~3.5× fewer tokens.**
- Hard task: the cheap model was wrong **every** time and *cheaper* — the low cost is
  worthless because the answer is wrong. The strong model cost ~13× the cheap model's tokens
  and was the only one correct.

### Why these specific tasks

- **Version sort (easy):** real, practical, and both tiers get it right — so the only
  differentiator is token cost. Clean "cheap wins" demonstration.
- **Letter counting (hard):** exploits a structural weakness (tokenization) that small models
  reliably fail, and the answer is **human-verifiable in seconds** — students can *see* the
  cheap model is wrong without trusting us.
- **Rejected:** the coin-change "greedy trap." We tested it — modern small models pass it, so
  it does NOT discriminate. Don't use reasoning puzzles that cheap models have caught up on.

### The "no retry" rule (important)

Tell students explicitly: when the cheap model fails Part 2, **do not coach or retry it.** The
point is the first-shot outcome. In real workflows the hidden cost is the human time + extra
tokens spent discovering the answer is wrong and redoing it. Retrying hides that lesson.

## How students run it

No codebase. Students use the **VS Code Copilot Chat model picker** to switch between a
cheap-tier and strong-tier model, paste the two prompts from
`Student/Resources/Challenge-03-ModelSelection/prompts.md`, and read tokens from the Output
panel / `/usage`. They fill in `measurements-template.md`.

> Orgs expose different models. Coach students to pick *any* cheap-tier vs strong-tier pair
> their picker offers — the pattern holds. If your org only exposes one tier, use the coach
> answer key above as the demonstration.

## Expected Time

~45 minutes:
- 15 min: Part 1 (easy) on both models
- 15 min: Part 2 (hard) on both models
- 10 min: Part 3 compare + discussion
- 5 min: optional output-constraint run

## Success Criteria Validation

Students should produce a completed Part 3 table showing **opposite winners**: cheap model
wins the easy task on tokens; strong model is the only correct option on the hard task. Bonus:
a measurable token drop on the strong model when an output constraint is added to Part 1.

## Common Blockers

- **Student retries the cheap model until it's right.** Stop them — that defeats the lesson.
- **Org exposes only one model tier.** Fall back to the answer key, or use the coach harness
  to demo live.
- **Token counts not visible.** Ensure the GitHub Copilot extension is current and the Output
  panel "GitHub Copilot Chat" channel is selected (covered in Challenge 00).
- **Cheap model happens to pass the hard task once.** It's stochastic; have them run it 2–3×.
  It fails the large majority of the time.

## Hints to Share

- "Cheap" is about *total* cost, not per-token price. A wrong answer you have to redo is the
  most expensive outcome.
- Match the model to the task: cheap for well-defined/low-ambiguity work, strong for anything
  needing real reasoning.
- Output constraints cut cost on any model — but they don't make a wrong model right.

## Reference Data & Reproduction

See `Solutions/Challenge-03-ModelSelection-Solutions/`:
- `harness.py` — measurement harness (counts pass/fail + tokens, with rate-limit backoff)
- `results.md` — the measured tables above
