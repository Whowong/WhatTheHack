# Challenge 03 - Session Configuration (Tools + Cache)

[< Previous Challenge](./Challenge-02.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-04.md)

## Introduction

Every MCP tool you enable adds 100-500 tokens per agent loop step. A session with 10 unused tools can burn thousands of extra tokens before you've written a line of code. Meanwhile, cache invalidation—triggered by switching models, toggling MCP servers, or editing system prompts mid-session—wipes your cache and forces a costly cold restart.

In this challenge, you'll learn to configure lean sessions and maintain high cache hit rates. The engineering target is 97-98% cache efficiency.

## Description

This challenge has two parts: tool sprawl management and cache invalidation awareness. Both directly impact your per-session costs.

### Part A: Tool Sprawl Audit

The starter codebase may have multiple MCP tools or GitHub Copilot extensions enabled. Your task:

- List all currently enabled MCP tools and extensions in your GitHub Copilot configuration
- Complete your baseline coding task with all tools enabled, recording token counts and credits
- Identify which tools were actually invoked during the task (check VS Code Output panel for tool calls)
- Disable any tools that weren't used
- Repeat the baseline task with your pruned tool configuration
- Measure credit savings from reducing tool overhead

Each tool adds token overhead to every agent step, even if never used. The overhead includes:

- Tool name and description (recurring cost)
- Tool parameter schemas (recurring cost)
- Tool availability announcements (recurring cost)

### Part B: Cache Invalidation Experiment

Complete the same refactor task twice under different session conditions:

**Clean Session:**
- Start a fresh VS Code session
- Configure your chosen model and tool set
- Complete the entire refactor without changing any configuration
- Record total credits and observe cache hit rate in Output panel

**Messy Session:**
- Start a fresh VS Code session
- Begin the refactor
- Midway through, switch to a different model
- Then toggle an MCP server off and back on
- Then edit your `.github/copilot-instructions.md` file
- Complete the refactor
- Record total credits and observe cache hit rate

Compare the two approaches. Each configuration change invalidates the cache and triggers a cold restart penalty.

### Cache Invalidation Triggers

Document your understanding of what invalidates GitHub Copilot's cache:

- Switching models mid-session
- Changing system instructions (editing copilot-instructions.md)
- Toggling MCP tools or extensions
- Switching between Agent mode and Chat mode
- Large context window changes (auto-compaction)

## Success Criteria

To complete this challenge successfully, you should be able to:

- Show a list of all MCP tools enabled before and after your audit
- Demonstrate credit savings from disabling unused tools on the baseline task
- Verify which tools were actually invoked during your task (via VS Code Output panel logs)
- Show comparative credit costs between clean session and messy session for the same refactor
- Demonstrate measurable cache hit rate difference between the two session approaches
- Explain at least three triggers that invalidate GitHub Copilot's cache
- Achieve 95%+ cache hit rate on a multi-turn coding task

## Learning Resources

- [Model Context Protocol (MCP) Overview](https://modelcontextprotocol.io/)
- [GitHub Copilot Extension Management](https://docs.github.com/en/copilot)
- [Understanding LLM Caching Strategies](https://www.anthropic.com/index/prompt-caching)

## Tips

- Each MCP tool costs tokens even when never invoked—they're advertised to the model at every step
- Cache hit rates above 97-98% are achievable with clean session hygiene
- Switching models mid-session is one of the most expensive cache invalidations
- Auto mode routes along cache boundaries to minimize invalidation
- If you must change configuration mid-task, finish your current subtask first to preserve cache value

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
