# Challenge 03 — Deferred Enhancements (TODO)

Coach/author notes. The challenge as committed is **complete and runnable**, but a review
(walking it against Challenges 01/02 and running it live) flagged that the *concept* is strong
while the *activity* is light (~10 min: 4 prompts + a table) compared to C01/C02 (30–60 min of
hands-on building). The items below would bring it to C01-level depth without losing the crisp
"cheap-per-token ≠ cheap-per-task" framing. Handle in a follow-up.

## A. Add activity depth (fills the 45-min slot)
- [ ] "**Classify your own task**" exercise: student writes 2 real tasks from their own work,
      predicts easy→cheap vs hard→strong, runs each on both model tiers, and checks the
      prediction. Makes the lesson personal and transferable.
- [ ] Add an **Advanced Challenges** section (C01 has one; C03 currently doesn't):
  - Try a **mid-tier / reasoning-tier** model on the hard task — where's the price/capability knee?
  - Build a **two-model workflow**: cheap model drafts, strong model reviews — measure total cost.
  - Try **Auto mode** (if the org exposes it) and compare routing + cost to manual selection.

## B. Pre-empt the "gotcha" objection
- [ ] Add ~1 paragraph: the letter-count task tests the model's **direct reasoning**, not its
      ability to emit code. A sharp student will say "I'd just have it write code to count."
      Connect it to agentic coding: the model constantly reasons *within* tasks (choosing logic,
      comparing values, judging correctness) — and that is exactly where a weak model is
      confidently wrong. Model selection governs reasoning quality, not just code emission.

## C. Token-count variance note
- [ ] Add a note in the student doc: token counts vary run-to-run (strong models especially —
      reasoning tokens). Observed gpt-5 on the easy task: 229 / 325 / 357 tokens across runs.
      Tell students to **focus on the pattern / ratio, not the absolute number**, and to run a
      task 2–3× if a result looks anomalous.

## D. Scope decision (was in the ORIGINAL Challenge-03, dropped in the rewrite)
- [ ] Decide whether to re-add, likely as **optional/Advanced**:
  - **Reasoning levels** — compare credit use across reasoning-effort settings.
  - **Auto mode** — when automatic routing beats manual model choice (original success criterion
    was "Explain when Auto mode provides value vs. manual selection").
- Options discussed: (1) re-add both as Advanced, (2) leave out for focus, (3) add Auto mode only.
  Pending owner sign-off.

## Validated data (do not lose — basis for the answer key)
Measured via GitHub Models API (`harness.py`), single-shot, no retries:

| Model | Easy (version sort) | Hard (letter count) |
|---|---|---|
| gpt-4.1-nano (cheap) | ✅ 4/4 pass, ~93 tok | ❌ 0/4 pass, ~31 tok (always "4") |
| gpt-5 (strong) | ✅ 4/4 pass, ~229–357 tok | ✅ 4/4 pass, ~295–391 tok |

Output constraint (gpt-5, easy task): 229 → 169 tok = **−26%**, identical answer.
Rejected: ministral-3b (too weak — fails the easy task); coin-change greedy trap (modern small
models pass it — no longer discriminates).
