# Challenge 01 - Context Engineering

[< Previous Challenge](./Challenge-00.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-02.md)

## Introduction

Every token sent to GitHub Copilot has a cost. Context that persists across every interaction—like global `.github/copilot-instructions.md` files—creates recurring costs that compound quickly. Meanwhile, broad workspace references like `#Codebase` pull in unnecessary files, adding tokens you don't need.

In this challenge, you'll learn to engineer your context precisely. You'll audit an over-stuffed global instructions file, restructure it into scoped path-specific files, and replace broad references with pinned attachments. The goal: reduce the base cost of every Copilot interaction while maintaining quality.

## Description

The starter codebase includes an intentionally bloated `.github/copilot-instructions.md` file that loads on every GitHub Copilot interaction. Your challenge is to reduce the base cost of every interaction through context optimization.

### Instruction Scoping

Audit the global instructions file and restructure it for efficiency:

- Identify which rules apply universally vs. only to specific languages or directories
- Minimize the global file by moving scoped rules to appropriate locations
- Consider converting task-specific patterns to GitHub Copilot Skills that activate conditionally
- Discover how language-specific and path-specific instruction files work

### Attachment Precision

Experiment with workspace references to understand their token cost:

- Compare using `#Codebase` vs. pinning specific files for the same coding task
- Measure the token difference between broad and precise attachment strategies
- Verify that output quality remains equivalent with more precise attachments

Use the baseline coding task from Challenge 00 to measure the impact of your optimizations. Compare credit consumption before and after restructuring to demonstrate measurable savings.

## Success Criteria

To complete this challenge successfully, you should be able to:

- Demonstrate that your restructured global `.github/copilot-instructions.md` is significantly smaller than the original
- Show path-specific or language-specific instruction files you created with rules moved from the global file
- Verify that at least one task-specific pattern has been converted to a GitHub Copilot Skill
- Show token count comparison between using `#Codebase` vs. pinned file attachments for a specific task
- Demonstrate measurable credit reduction on the baseline coding task
- Verify that code quality remained equivalent after optimization

## Learning Resources

- [GitHub Copilot Instructions Documentation](https://docs.github.com/en/copilot/customizing-copilot/adding-custom-instructions-for-github-copilot)
- [GitHub Copilot Skills Overview](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-skills)
- [Understanding Context Windows in Large Language Models](https://www.anthropic.com/index/prompting-long-context)

## Tips

- Persistent instructions are recurring costs—they load on every call
- Skills are conditional costs—they only load when invoked
- Attachments are per-call costs—you control exactly what's included
- The engineering target: keep always-on global instructions under 1000 tokens
- Scoped instructions should be discoverable: if a rule only applies to `/api`, put the instruction file in `/api/.github/`

*Success criteria goes here. The success criteria should be a list of checks so a student knows they have completed the challenge successfully. These should be things that can be demonstrated to a coach.* 

*The success criteria should not be a list of instructions.*

*Success criteria should always start with language like: "Validate XXX..." or "Verify YYY..." or "Show ZZZ..." or "Demonstrate you understand VVV..."*

*Sample success criteria for the IoT sample challenge:*

To complete this challenge successfully, you should be able to:
- Verify that the IoT device boots properly after its thingamajig is configured.
- Verify that the thingamajig can connect to the mothership.
- Demonstrate that the thingamajic will not connect to the IoTProxyShip

## Learning Resources

_List of relevant links and online articles that should give the attendees the knowledge needed to complete the challenge._

*Think of this list as giving the students a head start on some easy Internet searches. However, try not to include documentation links that are the literal step-by-step answer of the challenge's scenario.*

***Note:** Use descriptive text for each link instead of just URLs.*

*Sample IoT resource links:*

- [What is a Thingamajig?](https://www.bing.com/search?q=what+is+a+thingamajig)
- [10 Tips for Never Forgetting Your Thingamajic](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
- [IoT & Thingamajigs: Together Forever](https://www.youtube.com/watch?v=yPYZpwSpKmA)

## Tips

*This section is optional and may be omitted.*

*Add tips and hints here to give students food for thought. Sample IoT tips:*

- IoTDevices can fail from a broken heart if they are not together with their thingamajig. Your device will display a broken heart emoji on its screen if this happens.
- An IoTDevice can have one or more thingamajigs attached which allow them to connect to multiple networks.

## Advanced Challenges (Optional)

*If you want, you may provide additional goals to this challenge for folks who are eager.*

*This section is optional and may be omitted.*

*Sample IoT advanced challenges:*

Too comfortable?  Eager to do more?  Try these additional challenges!

- Observe what happens if your IoTDevice is separated from its thingamajig.
- Configure your IoTDevice to connect to BOTH the mothership and IoTQueenBee at the same time.
