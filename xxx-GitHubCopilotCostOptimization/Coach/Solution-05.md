# Challenge 05 - Spec-Driven Development - Coach's Guide 

[< Previous Solution](./Solution-04.md) - **[Home](./README.md)** - [Next Solution >](./Solution-06.md)

## Notes & Guidance

This challenge proves that deterministic controls (tests, types, linters) are token controls. When GitHub Copilot has a spec to code against, it closes the loop in one call instead of three model turns of trial-and-error.

### Key Concepts to Explain

**The Feedback Loop Hierarchy (Cost & Latency):**

1. **Type errors:** Instant feedback, zero credits
2. **Linter violations:** Seconds, zero credits  
3. **Unit tests:** Seconds, zero credits
4. **Agent trial-and-error:** Minutes, high credit cost

**Spec-First Approach:**
- Write failing tests before implementation (TDD)
- Define types/interfaces that constrain the solution space
- Establish clear acceptance criteria in the prompt
- Let the agent code against the spec

**Why This Reduces Cost:**
- Tests catch errors deterministically instead of agent discovering through iteration
- Type checkers provide instant feedback vs. agent debugging
- Clear acceptance criteria prevent "did I meet the requirements?" prompting
- The research → plan → implement loop prevents expensive backtracking

### Expected Time

60 minutes:
- 25 minutes: Implement feature trial-and-error style (Part A)
- 25 minutes: Implement same feature spec-first (Part B)
- 10 minutes: Compare and document findings

### Success Criteria Validation

Students should demonstrate at least 30% credit reduction using spec-first vs. trial-and-error for the same feature complexity.

### Common Blockers

**Students Don't Know How to Write Specs:**

Guide them:
1. Start with types/interfaces (what shape is the solution?)
2. Write failing tests (what behavior must exist?)
3. Document acceptance criteria (when am I done?)

**Students Skip Research/Plan Phases:**

Explain: The agent can help write your spec! Ask "what tests should I write for feature X?" before asking "implement feature X."

### Hints to Share

- "Write the test first" is both good TDD and good token economics
- Let the agent help write your tests if you provide requirements
- Type errors are free feedback—leverage them before prompting for fixes
- The most expensive code is code you have to regenerate after discovering the approach was wrong
- Research → plan → implement is cheaper than implement → discover wrong → regenerate → recover

### Key Insight for Students

The single most leveraged answer to "how do I make my team more efficient with GitHub Copilot" is: give them fast deterministic feedback loops. Tests, types, and linters close loops in zero credits instead of expensive model turns.
