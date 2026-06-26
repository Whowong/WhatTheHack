# Challenge 03 — Measurement Template

Fill in the tables as you run each prompt. Get token counts from
`View → Output → "GitHub Copilot Chat"` and/or `/usage`.

Record the **cheap-tier** and **strong-tier** model names you actually used:

- Cheap model: `____________________`
- Strong model: `____________________`

---

## Part 1 — Easy task (version sort)

| | Cheap model | Strong model |
|---|---|---|
| Answer given | | |
| Correct? (Y/N) | | |
| Total tokens | | |

**Observation:** _Were both correct? Which used fewer tokens for the same answer?_

---

## Part 2 — Hard task (letter count)

| | Cheap model | Strong model |
|---|---|---|
| Answer given | | |
| Correct? (Y/N) | | |
| Total tokens | | |

**Observation:** _Did the cheap model fail? Was its wrong answer "cheap"?_

---

## Optional — Output constraint (Part 1, strong model)

| | Strong model (no constraint) | Strong model (answer-only) |
|---|---|---|
| Total tokens | | |
| Token reduction | — | |

---

## Part 3 — Decision table

| Task | Cheap correct? | Cheap tokens | Strong correct? | Strong tokens | Use which model? |
|------|----------------|--------------|-----------------|---------------|------------------|
| Part 1 (easy) | | | | | |
| Part 2 (hard) | | | | | |

### Answers

1. Easy task — better value (correct + fewest tokens)? →
2. Hard task — what did the cheap wrong answer really cost? →
3. At 10,000 runs/day, how does your choice differ for Part 1 vs Part 2? →
4. How do you decide *up front* whether a task is "easy → cheap" or "hard → strong"? →
