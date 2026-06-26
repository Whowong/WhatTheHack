# Challenge 03 — Prompts

Run each prompt **verbatim**. Do not add context, attachments, or instructions — keeping the
input identical across models is what makes the token comparison fair.

---

## Part 1 — Easy task (version sort)

```
Sort these software version numbers from oldest to newest and list them in
order separated by commas: 1.9.0, 1.10.0, 1.2.0, 1.11.0, 1.9.5
```

✅ **Correct answer:** `1.2.0, 1.9.0, 1.9.5, 1.10.0, 1.11.0`

A wrong answer usually sorts the versions as text (so `1.10.0` and `1.11.0` land before
`1.9.0`). Modern models — cheap or strong — almost always get this right.

---

## Part 2 — Hard task (letter count)

```
How many times does the letter l appear in the phrase 'parallel lullaby'?
Answer with only the number.
```

✅ **Correct answer:** `6`

Count it yourself: `para`**`l`**`` `l` ``e`**`l`** → 3, and `` `l` ``u`**`l`**`l`aby → 3.
A cheap model very commonly answers `4` — confidently, and in very few tokens.

---

## Optional — Output constraint variant (Part 1, strong model)

```
Sort these software version numbers from oldest to newest: 1.9.0, 1.10.0, 1.2.0,
1.11.0, 1.9.5. Answer with only the comma-separated list and nothing else.
```

Same task, but the constraint suppresses the explanation the strong model would otherwise
produce. Compare the token count to your original Part 1 run with the same model.
