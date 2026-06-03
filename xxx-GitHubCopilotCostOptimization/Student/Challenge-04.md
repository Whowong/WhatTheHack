# Challenge 04 - Context Window Management

[< Previous Challenge](./Challenge-03.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-05.md)

## Introduction

Context windows grow with every interaction. As your session accumulates messages, attachments, and generated code, the context window fills. When utilization gets too high, quality degrades—responses become less accurate, the model "forgets" earlier decisions, and credits burn faster as you pay to transmit bloated context.

In this challenge, you'll learn when and how to use `/compact` (the steering wheel) vs. `/clear` (the reset button). The biggest avoidable cost isn't running `/compact` too often—it's running it too late, after context rot has already degraded quality and forced expensive recovery loops.

## Description

Complete a multi-turn coding task designed to intentionally grow your context window. You'll compare two approaches: proactive compaction vs. reactive recovery.

### Context Rot Observation

Start a coding task that involves multiple related features or refactors. Intentionally let the context window grow by adding numerous file attachments, requesting verbose explanations, and allowing the conversation to accumulate without intervention.

Monitor context window utilization (visible in VS Code status bar or Output panel) and observe what happens as it fills. Look for quality degradation signals like inconsistencies, forgotten requirements, or repeated questions. Record credits consumed and note any incorrect outputs or rework needed.

### Proactive Compaction

Restart the same multi-turn task using proactive `/compact` at natural breakpoints (after completing a feature, before switching topics). Keep the context window lean throughout and monitor how compaction summarizes previous work while preserving state. Compare credits consumed and output quality vs. the unmanaged approach.

### Emergency Reset

Demonstrate when `/clear` is appropriate by starting a task where you realize mid-way that your approach is fundamentally wrong. Use `/clear` to wipe context and start fresh with a corrected approach. Understand the cold cache penalty from `/clear` vs. preserved cache with `/compact`.

### Context Management Strategy

Develop and document your team's rules for context management: when to compact, what constitutes "natural breakpoints," when to clear vs. compact, and how to balance cache preservation vs. context hygiene.

## Success Criteria

To complete this challenge successfully, you should be able to:

- Demonstrate observable quality degradation when context window grows too large
- Show credit cost comparison between unmanaged context growth and proactive compaction approaches
- Verify that proactive `/compact` maintained output quality throughout the multi-turn task
- Demonstrate appropriate use of `/clear` when the context becomes fundamentally misaligned
- Explain the difference in cache impact between `/compact` (preserves cache) and `/clear` (cold restart)
- Document your team's context management strategy with specific decision criteria

## Learning Resources

- [Understanding Context Windows and Token Limits](https://www.anthropic.com/index/prompting-long-context)
- [GitHub Copilot Chat Commands Documentation](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-chat)
- [Managing Long Conversations with AI Assistants](https://www.promptingguide.ai/)

## Tips

- Context rot starts when the window gets too full—don't wait until the last moment
- `/compact` is the steering wheel (summarize, preserve state)—use it proactively
- `/clear` is the reset button (wipe everything)—use it when direction changes
- Natural breakpoints: feature complete, tests passing, architecture decision made
- The cost isn't running `/compact`—it's NOT running `/compact` until quality has already degraded
- Compact before you feel the pain, not after

***NOTE:** Do NOT provide direct links to files or folders in the What The Hack repository from the student guide. Instead, you should refer to the Resource.zip file provided by the coach.*

***NOTE:** As an exception, you may provide a GitHub 'raw' link to an individual file such as a PDF or Office document, so long as it does not open the contents of the file in the What The Hack repo on the GitHub website.*

***NOTE:** Any direct links to the What The Hack repo will be flagged for review during the review process by the WTH V-Team, including exception cases.*

*Sample challenge text for the IoT Hack Of The Century:*

In this challenge, you will properly configure the thingamajig for your IoT device so that it can communicate with the mother ship.

You can find a sample `thingamajig.config` file in the `/ChallengeXX` folder of the Resources.zip file provided by your coach. This is a good starting reference, but you will need to discover how to set exact settings.

Please configure the thingamajig with the following specifications:
- Use dynamic IP addresses
- Only trust the following whitelisted servers: "mothership", "IoTQueenBee" 
- Deny access to "IoTProxyShip"

You can view an architectural diagram of an IoT thingamajig here: [Thingamajig.PDF](/Student/Resources/Architecture.PDF?raw=true).

## Success Criteria

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
