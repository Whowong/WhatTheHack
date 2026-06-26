# Challenge 03 — Coach Solution Assets

Reference data and tooling for the coach. **Not** distributed to students — students use the
VS Code Copilot Chat model picker + Output panel.

## Contents

| File | Purpose |
|---|---|
| `harness.py` | Measurement harness: runs N trials of each (model, task), counts pass/fail, averages tokens, with rate-limit backoff |
| `results.md` | The measured answer-key tables referenced in `Solution-03.md` |

## Running the harness

The harness calls the **GitHub Models inference API** and authenticates with your
`gh auth token`.

```bash
# default: gpt-4.1-nano vs gpt-5, both tasks, n=4
python harness.py --models "openai/gpt-4.1-nano" "openai/gpt-5" --tasks sort letter -n 4 --sleep 2
```

Output is a summary table of pass rate + average tokens per (model, task), and a
`results.json` dump.

### Notes
- The free GitHub Models tier is rate-limited; the harness backs off on HTTP 429. For large N,
  expect it to run slowly. n=4 is sufficient to demonstrate the pattern.
- Strong models (e.g. `gpt-5`) throttle the most. Increase `--sleep` if you see many retries.
- `--tasks` accepts `sort` (easy) and `letter` (hard).
