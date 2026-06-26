# Challenge 03 - Model Selection & Output Constraints

[< Previous Challenge](./Challenge-02.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-04.md)

## Introduction

Not every task needs the most powerful model. Under usage-based billing, cost is **not** just the model's per-token price. It is:

> **Total cost = token rate × tokens × attempts**

That last term — *attempts* — is the one people forget. A cheap model that answers a simple task correctly in a few tokens is a bargain. But that same cheap model, set loose on a task it cannot actually reason through, will hand you a **confident, wrong answer**. Now you are paying again (and again) to notice it is wrong and redo the work. The "cheap" model just became the expensive one.

In this challenge you will run the **same prompt against a cheap model and an expensive model — twice.** First on an **easy** task, then on a **hard** task. Every run, you measure two things: **the outcome (did it get it right?)** and **the token cost**. From that data you will build the skill this challenge is really about: deciding *which model to use for which job.*

> **Key Concept:** Cheap-per-token is not the same as cheap-per-task.

## Description

You will run **two tasks**, each against **two models**:

- A **cheap / lightweight model** — e.g. a "mini", "nano", "Haiku", or "Flash" tier model
- An **expensive / frontier model** — e.g. a GPT-5, Claude Sonnet, or o-series tier model

> Use whatever cheap-tier and strong-tier models your organization exposes in the GitHub Copilot Chat **model picker**. The exact names don't matter — the *pattern* does.

For every run, record the **outcome** (correct / incorrect) and the **token usage** from the VS Code Output panel (`View → Output → "GitHub Copilot Chat"`) and/or `/usage`.

> **Rule — no retries:** When the cheap model gets it wrong, **do not coach it or try again.** Record the failure and move on. The whole point is to see what each model produces *on the first shot* for each kind of task.

---

## Part 1 — An Easy Task (the cheap model should win)

Give **both** models this exact prompt:

```
Sort these software version numbers from oldest to newest and list them in
order separated by commas: 1.9.0, 1.10.0, 1.2.0, 1.11.0, 1.9.5
```

✅ Correct answer: `1.2.0, 1.9.0, 1.9.5, 1.10.0, 1.11.0`

### Record

| | Cheap model | Expensive model |
|---|---|---|
| Correct? | ? | ? |
| Total tokens | ? | ? |

### What to notice

Both models should get this right. Now compare the **token counts**. The expensive model often produces far more output — restated reasoning, explanations — for the *exact same correct answer*. On an easy task, that extra spend buys you nothing.

---

## Part 2 — A Hard Task (the cheap model should fail)

Now give **both** models this exact prompt:

```
How many times does the letter l appear in the phrase 'parallel lullaby'?
Answer with only the number.
```

✅ Correct answer: `6`  (count them yourself: para**ll**e**l** = 3, **l**u**ll**aby = 3)

### Record

| | Cheap model | Expensive model |
|---|---|---|
| Correct? | ? | ? |
| Total tokens | ? | ? |

### What to notice

The cheap model will likely answer **confidently and incorrectly** (a very common answer is `4`). You can verify the right answer yourself in seconds — *that is the point.* The wrong answer is also **cheap in tokens**, which is exactly the trap: low token cost, zero value.

The expensive model gets it right, and costs **more** tokens to do so. For this kind of task, those extra tokens are not waste — they are the price of a *correct* answer.

> Do **not** retry the cheap model. A wrong answer is the result. In the real world, the hidden cost of a cheap wrong answer is the time and tokens you burn discovering it is wrong and redoing the work.

---

## Part 3 — Compare Results & Decide

Combine your measurements into one table:

| Task | Cheap: correct? | Cheap: tokens | Strong: correct? | Strong: tokens | Which model should you use? |
|------|-----------------|---------------|------------------|----------------|-----------------------------|
| Part 1 (easy) | ? | ? | ? | ? | ? |
| Part 2 (hard) | ? | ? | ? | ? | ? |

### Questions to Answer

1. On the **easy** task, which model gave the better *value* (correct answer, fewest tokens)?
2. On the **hard** task, what did the cheap model's wrong answer actually "cost" you — even though it used fewer tokens?
3. If you ran each task **10,000 times a day**, how would your model choice differ between Part 1 and Part 2?
4. How would you decide, *before* running a task, whether it is a "Part 1" (easy → cheap) task or a "Part 2" (hard → strong) task?

---

## Optional — Output Constraints

Output tokens usually cost more than input tokens. Re-run **Part 1 with the expensive model**, but add an output constraint to the prompt:

```
...Answer with only the comma-separated list and nothing else.
```

Record the token difference vs. your earlier Part 1 run. Constraining output — "answer only", "code only", "explain in under 50 words", or a JSON schema — is a lever you control on **every** model, cheap or expensive.

## Success Criteria

To complete this challenge successfully, you should be able to:

- Run the same prompt against a cheap and an expensive model for both tasks
- Record outcome (correct/incorrect) and token usage for all four runs
- Show that on the easy task the cheap model was correct **and** cheaper
- Show that on the hard task the cheap model was confidently wrong while the expensive model was correct
- Demonstrate a token reduction on the expensive model by adding an output constraint
- Articulate a rule of thumb for deciding which model to use for a given task

## Learning Resources

- [GitHub Copilot Model Selection Guide](https://docs.github.com/en/copilot)
- [Prompt Engineering: Output Formatting Techniques](https://www.promptingguide.ai/)
- [GitHub Copilot Usage-Based Billing](https://docs.github.com/en/copilot/concepts/billing/usage-based-billing-for-organizations-and-enterprises)

## Tips

- Cost = token rate × tokens × **attempts**. A cheap *wrong* answer can be the most expensive option.
- The cheap model is great for well-defined, low-ambiguity work — and it is wasteful to *avoid* it there.
- The expensive model earns its price on tasks that need real reasoning, where a wrong first answer is costly.
- Output constraints reduce cost on *any* model — ask for the answer only when you don't need narration.
- The best model is not the smartest one — it is the one that returns a *correct* answer at the lowest total cost.

## Reflection Questions

1. Describe a real task from your own work that is a "Part 1" task. Which model would you use and why?
2. Describe a real "Part 2" task. How would you justify the higher per-token cost to your team?
3. How could you combine cheap and expensive models in a single workflow to minimize total cost (e.g., cheap model drafts, strong model reviews)?
