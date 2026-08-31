# Challenge 06 - Token Golf Competition - Coach's Guide 

[< Previous Solution](./Solution-05.md) - **[Home](./README.md)**

## Notes & Guidance

Token Golf is the capstone challenge where teams apply all optimization techniques competitively. This is both a validation of learning and a motivating team activity.

### Coach Pre-Work (CRITICAL)

**You must complete the Token Golf task yourself before the hack:**

1. Implement the coding task specified in `/Student/Resources/Challenge06/token-golf-task.md`
2. Use optimization techniques from Challenges 1-5
3. Record your total credit consumption—this becomes "par"
4. Document your approach: prompt sequence, model choices, techniques used
5. Prepare to share your "par score" at the start of Challenge 06

**Setting Par:**

Your "par score" should represent a well-optimized solution—not perfect, but competent. Aim for:
- Global instructions scoped appropriately (Challenge 01)
- Efficient model selection (Challenge 02)
- Clean session hygiene (Challenge 03)
- Proactive compaction (Challenge 04)
- Spec-first approach (Challenge 05)

Typical par scores for a moderate complexity task: 15-25 credits (vs. 60-100 unoptimized).

### Key Concepts to Explain

**Scorecard Requirements:**

Teams must document their complete approach, not just final credits. This prevents "got lucky" wins and ensures learning transfer. Required scorecard elements:

- Total credits consumed (from VS Code Output panel)
- Prompt sequence (what prompts, in what order)
- Models selected for each subtask (e.g., Haiku for boilerplate, Sonnet for complex logic)
- Techniques from previous challenges applied:
  - Which instruction scoping strategy (Challenge 01)
  - Output constraints used (Challenge 02)
  - Tools pruned (Challenge 03)
  - Compaction points (Challenge 04)
  - Spec-first approach (Challenge 05)
- Any custom techniques or strategies

**What Counts Toward Score:**

- All GitHub Copilot interactions: inline completions, chat, edits, workspace queries
- Token costs visible in VS Code Output panel
- From task start to acceptance criteria met (tests pass, docs exist, quality standards met)

**What Doesn't Count:**

- Manual typing (zero cost)
- Linters/type checkers/tests running locally (zero cost)
- Time spent (not measured, only credits)

### Task Design Guidance

The Token Golf task should:
- Be completable in 45-60 minutes by an experienced developer
- Have clear, measurable acceptance criteria (tests pass, docs exist, etc.)
- Offer multiple solution approaches (so there's no single "right" path)
- Require enough complexity that optimization techniques matter

**Example Task Structure:**

```markdown
# Token Golf Task: Build a Rate-Limiting Middleware

## Functional Requirements
- Implement rate limiting middleware that tracks requests per IP address
- Support configurable limits (requests per minute)
- Return HTTP 429 when limit exceeded
- Clean up expired entries periodically

## Acceptance Criteria
- All provided unit tests pass
- Middleware handles concurrent requests correctly
- Documentation includes usage examples
- Code passes linting and type checking
- No security vulnerabilities in rate tracking logic

## Provided Files
- tests/rate-limiter.test.ts (failing tests you must make pass)
- types/middleware.ts (type definitions)
- example-usage.md (what the docs should look like)
```

### Competition Format Options

**Option 1: All Teams Same Task (Standard)**
- Everyone implements the same feature
- Direct comparison of credit costs
- Simplest to judge

**Option 2: Teams Choose Task (Advanced)**
- Provide 2-3 tasks of similar complexity
- Teams choose which to implement
- Normalizes for skill/interest differences

**Option 3: Live Leaderboard (High Energy)**
- Teams submit scores as they complete
- Display running leaderboard on screen
- Creates competitive energy

### Common Blockers

**Teams Don't Know Where to Start:**

Hint: Apply the research → plan → implement loop:
1. Research: Read requirements, understand acceptance criteria
2. Plan: Write failing tests, define types, establish spec
3. Implement: Use GitHub Copilot to code against the spec

**Teams Optimize for Speed, Not Cost:**

Remind: This is token golf, not speed golf. Taking an extra 2 minutes to write tests first can save 20 credits in trial-and-error.

**Teams Hit Dead-Ends and Burn Credits Recovering:**

Encourage `/clear` when stuck—start fresh rather than spending credits digging out of a wrong approach.

### Expected Time

60 minutes total:
- 5 minutes: Explain task and rules, announce "par score"
- 45 minutes: Teams implement and measure
- 10 minutes: Debrief and winning strategies

### Judging Criteria

**Primary:** Lowest credit cost meeting all acceptance criteria

**Tiebreakers (in order):**
1. Completion time (earliest submission)
2. Code quality (subjective coach judgment)

**Disqualifications:**
- Missing acceptance criteria (tests fail, docs missing, linting errors)
- Scorecard not documented (can't verify techniques used)

### Debrief Discussion Points

After announcing the winner, discuss:

**Winning Strategies:**
- What techniques from Challenges 1-5 did the winner apply?
- Where did other teams spend unnecessary credits?
- What would you do differently next time?

**Key Lessons:**
- "Write the test first" is both good TDD and good token economics
- Cheaper models with tight constraints often beat expensive models with verbose output
- The biggest credit burns are recovery loops—avoid them with upfront specs
- Cache hygiene matters—context rot forces expensive recovery

### Variations for Future Events

**Handicap System:**
- Give less experienced teams a credit bonus (e.g., +10 credits)
- Levels the playing field while still rewarding optimization

**Relay Format:**
- Teams implement different features sequentially
- Each team inherits the codebase from the previous team
- Tests cache management and context handoff strategies

**Real-World Constraints:**
- Limit model selection (e.g., Haiku only—forces maximum efficiency)
- Introduce mid-task requirement changes (tests cache invalidation handling)

### Reference Par Scores

Typical par scores for well-designed tasks:
- Simple task (15-20 min): 10-15 credits
- Moderate task (30-45 min): 15-25 credits
- Complex task (60 min): 25-40 credits

If student scores are all within 10% of par, the task is well-calibrated. If spread is wide (some 2x par, some under par), the task may have trap paths that burn credits unnecessarily.

### Post-Event Follow-Up

Encourage teams to:
- Document their organization's "token golf guidelines" based on learnings
- Share winning strategies internally
- Apply these techniques to real work (measure before/after on production tasks)
- Track team-wide credit spend reduction over next 30 days