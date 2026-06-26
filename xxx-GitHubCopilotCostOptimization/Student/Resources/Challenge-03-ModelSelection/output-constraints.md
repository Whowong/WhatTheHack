# Output Constraints — Cheat Sheet

Output tokens usually cost more than input tokens. Constraining what the model *produces* is
a cost lever you control on **every** model. Use these patterns when you don't need narration.

| Goal | Add to your prompt | Effect |
|---|---|---|
| Answer only | "Answer with only the number/value, nothing else." | Removes restated reasoning + preamble |
| Code only | "Output only the code. No explanation, no markdown fences." | Cuts the "Here's how it works..." paragraphs |
| Cap verbosity | "Explain in 50 words or fewer." | Hard ceiling on output length |
| Structured output | "Respond as JSON matching: `{ \"result\": number }`" | Prevents rambling; easy to parse |
| No restatement | "Do not repeat the question or summarize the task." | Removes echo of the input |
| Bounded list | "List at most 3 items." | Stops over-generation |

## Why it matters

A strong model asked an easy question will often spend most of its tokens *explaining* an
answer you already trust. The constraint keeps the correctness and drops the cost.

## Try it

Take any Part 1 run on the strong model and re-run it with `"Answer with only the
comma-separated list and nothing else."` appended. Compare total tokens — the answer is
identical, the cost is lower.

> Note: constraints reduce **output** tokens. They do not fix a model that is *wrong*
> (see Part 2). For a task the cheap model can't reason through, a constraint just gives you
> a wrong answer faster — model selection, not output shape, is the fix there.
