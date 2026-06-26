# Challenge 03 — Model Selection — Resources

This folder contains everything you need for Challenge 03. There is **no codebase to run** —
the challenge is about sending two short prompts to two different models and measuring what
comes back.

## What's here

| File | Purpose |
|---|---|
| `prompts.md` | The two exact prompts (easy + hard) and their correct answers |
| `measurements-template.md` | Blank tables to record outcome + tokens for each run |
| `output-constraints.md` | Cheat sheet of output constraints to reduce token cost |

## How to run it (VS Code + GitHub Copilot Chat)

1. Open GitHub Copilot Chat in VS Code.
2. Use the **model picker** to select a **cheap-tier** model (e.g. a "mini" / "nano" /
   "Haiku" / "Flash" model your org exposes).
3. Paste a prompt from `prompts.md` exactly as written. Record the answer and the token
   usage from `View → Output → "GitHub Copilot Chat"` (and/or `/usage`).
4. Switch the model picker to an **expensive-tier** model (e.g. GPT-5 / Sonnet / o-series)
   and run the **same** prompt. Record again.
5. Repeat for both the easy and the hard prompt.
6. Fill in `measurements-template.md` and answer the Part 3 questions.

> **Rule:** Do not retry or coach the cheap model when it gets the hard task wrong. A wrong
> first answer is a valid — and important — result.
