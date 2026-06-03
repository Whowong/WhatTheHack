# Challenge 05 - Spec-Driven Development

[< Previous Challenge](./Challenge-04.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-06.md)

## Introduction

Deterministic controls—tests, linters, type checks, and security scans—are token controls. When GitHub Copilot has a spec to code against and a fast feedback loop to verify correctness, it closes the loop in one tool call instead of three model turns of trial-and-error. Every time the agent "gambles" and discovers a mistake through iteration, you pay for discovery and recovery.

In this challenge, you'll demonstrate that spec-first development isn't just good engineering—it's cost optimization.

## Description

You'll implement the same feature twice: once with no spec (trial-and-error), and once with spec-first (deterministic feedback). Compare credit spend and output correctness between the two approaches.

### Part A: Trial-and-Error Development

Implement a moderately complex feature using only a vague prompt:

- Provide GitHub Copilot with a high-level goal (e.g., "add user authentication")
- Do NOT provide tests, types, interfaces, or acceptance criteria
- Do NOT establish linting or type-checking as part of your workflow
- Let the agent explore, make mistakes, and iterate

Observe and record:

- How many retry loops occur (agent generates code, you test, it fails, agent fixes)
- Total credits consumed
- Time spent on discovery (agent asking clarifying questions)
- Time spent on recovery (fixing incorrect implementations)
- Final code quality

### Part B: Spec-First Development

Implement the same feature using spec-first approach:

**Before prompting GitHub Copilot, create:**
- Type definitions or interfaces that define the shape of your solution
- Test cases that specify expected behavior (these can fail initially—TDD style)
- Clear acceptance criteria in your prompt or attached specification file
- Enable linters and type checkers in your workflow

**Then prompt GitHub Copilot with:**
- A link to your type definitions/interfaces
- A link to your failing tests
- Clear acceptance criteria
- Instruction: "Implement this feature to make these tests pass"

Observe and record:

- How many iterations needed (should be significantly fewer)
- Total credits consumed
- Whether the agent closed the loop in one pass vs. multiple retries
- Final code quality

### The Feedback Loop Hierarchy

Rank feedback mechanisms by cost and latency:

- **Fastest/Cheapest:** Type errors (instant feedback, zero credit cost)
- **Fast/Cheap:** Linter violations (seconds, zero credit cost)
- **Medium:** Unit tests (seconds, zero credit cost)
- **Slow/Expensive:** Agent trial-and-error (minutes, high credit cost)

### Key Concepts

Document your understanding of how deterministic controls reduce token spend:

- When tests catch errors deterministically, the agent doesn't spend turns discovering the error through iteration
- Type checkers provide instant feedback loops (zero credits) vs. agent debugging (high credits)
- The research → plan → implement loop: sessions that skip research/planning burn tokens regenerating context after the first wrong turn
- CI signals (test pass/fail, lint pass/fail, security scan results) close loops in one tool call instead of three model turns

## Success Criteria

To complete this challenge successfully, you should be able to:

- Demonstrate completion of a feature using trial-and-error (Part A) and spec-first (Part B) approaches
- Show measured credit costs for both approaches with the same feature complexity
- Verify that spec-first approach required fewer retry loops than trial-and-error
- Demonstrate at least 30% credit reduction using spec-first vs. trial-and-error
- Show that spec-first output met acceptance criteria with fewer iterations
- Explain how at least three deterministic controls (tests, types, linters) act as token controls
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

***This is a template for a single challenge. The italicized text provides hints & examples of what should or should NOT go in each section.  You should remove all italicized & sample text and replace with your content.***

## Pre-requisites (Optional)

*Your hack's "Challenge 0" should cover pre-requisites for the entire hack, and thus this section is optional and may be omitted.  If you wish to spell out specific previous challenges that must be completed before starting this challenge, you may do so here.*

## Introduction

*This section should provide an overview of the technologies or tasks that will be needed to complete the this challenge.  This includes the technical context for the challenge, as well as any new "lessons" the attendees should learn before completing the challenge.*

*Optionally, the coach or event host is encouraged to present a mini-lesson (with a PPT or video) to set up the context & introduction to each challenge. A summary of the content of that mini-lesson is a good candidate for this Introduction section*

*For example:*

When setting up an IoT device, it is important to understand how 'thingamajigs' work. Thingamajigs are a key part of every IoT device and ensure they are able to communicate properly with edge servers. Thingamajigs require IP addresses to be assigned to them by a server and thus must have unique MAC addresses. In this challenge, you will get hands on with a thingamajig and learn how one is configured.

## Description

*This section should clearly state the goals of the challenge and any high-level instructions you want the students to follow. You may provide a list of specifications required to meet the goals. If this is more than 2-3 paragraphs, it is likely you are not doing it right.*

***NOTE:** Do NOT use ordered lists as that is an indicator of 'step-by-step' instructions. Instead, use bullet lists to list out goals and/or specifications.*

***NOTE:** You may use Markdown sub-headers to organize key sections of your challenge description.*

*Optionally, you may provide resource files such as a sample application, code snippets, or templates as learning aids for the students. These files are stored in the hack's `Student/Resources` folder. It is the coach's responsibility to package these resources into a Resources.zip file and provide it to the students at the start of the hack.*

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
