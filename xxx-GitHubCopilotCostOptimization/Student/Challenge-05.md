# Challenge 05 - Spec-Driven Development

[< Previous Challenge](./Challenge-04.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-06.md)

## Introduction

Deterministic controls—tests, linters, type checks, and security scans—are token controls. When GitHub Copilot has a spec to code against and a fast feedback loop to verify correctness, it closes the loop in one tool call instead of three model turns of trial-and-error. Every time the agent "gambles" and discovers a mistake through iteration, you pay for discovery and recovery.

In this challenge, you'll demonstrate that spec-first development isn't just good engineering—it's cost optimization.

## Description

You'll implement the same feature twice: once with no spec (trial-and-error), and once with spec-first (deterministic feedback). Compare credit spend and output correctness between the two approaches.

### Trial-and-Error Development

Implement a moderately complex feature using only a vague prompt. Provide GitHub Copilot with a high-level goal without tests, types, interfaces, or acceptance criteria. Let the agent explore, make mistakes, and iterate naturally.

Observe and record: retry loops, total credits consumed, discovery time, recovery effort, and final code quality.

### Spec-First Development

Implement the same feature using spec-first approach. Before prompting GitHub Copilot, establish your specification: type definitions or interfaces, failing test cases (TDD style), clear acceptance criteria, and enabled linters/type checkers.

Then prompt GitHub Copilot with references to your spec and tests, instructing it to implement the feature to make tests pass.

Observe and record: iterations needed, total credits consumed, whether the agent closed the loop quickly, and final code quality.

## Success Criteria

To complete this challenge successfully, you should be able to:

- Demonstrate completion of a feature using both trial-and-error and spec-first approaches
- Show measured credit costs for both approaches with the same feature complexity
- Verify that spec-first approach required fewer retry loops than trial-and-error
- Demonstrate significant credit reduction using spec-first vs. trial-and-error
- Show that spec-first output met acceptance criteria with fewer iterations
- Explain how deterministic controls (tests, types, linters) act as token controls
- Document your feedback loop hierarchy ranking mechanisms by speed and cost

## Learning Resources

- [Test-Driven Development Fundamentals](https://martinfowler.com/bliki/TestDrivenDevelopment.html)
- [Type Systems as Documentation](https://www.typescriptlang.org/docs/handbook/typescript-in-5-minutes.html)
- [The Cost of Rework in Software Development](https://martinfowler.com/articles/is-quality-worth-cost.html)
- [GitHub Copilot and Test-Driven Development](https://docs.github.com/en/copilot)

## Tips

- "Write the test first" is both good TDD and good token economics
- Type errors are free feedback—leverage them before asking the agent
- Linters catch mistakes at zero credit cost—run them before prompting for fixes
- The agent can write your tests if you provide the spec, then implement against those tests
- Research → plan → implement is cheaper than implement → discover mistake → regenerate → recover
- The single most leveraged answer to "how do I make devs more efficient with Copilot" is: give them fast deterministic feedback loops

## Advanced Challenges

Too comfortable? Try these:

- Implement pre-commit hooks that run tests/linters and provide feedback before GitHub Copilot generates fixes
- Create a CI pipeline that provides GitHub Copilot with test results as context for fixing failures
- Measure the credit cost difference between "fix this bug" (vague) vs. "fix this bug: test X fails with error Y" (specific)
