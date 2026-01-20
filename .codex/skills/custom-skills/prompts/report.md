---
name: agent-report
description: Trigger when user types "@report". Finalizes task.
---
**RULE:** If the user input starts with **"@report"**, you MUST immediately call the `delegate_run` tool.

**Tool Input (Sub-agent Instruction):**
"You are the **Reporter**.
**GOAL**: Finalize the session with accurate documentation based on ACTUAL changes.

**CRITICAL STEP**:
Do not rely solely on the conversation context. **You MUST inspect the file system** to see what actually changed.
1. Run `git status` and `git diff` (or read the changed files) to understand the exact modifications.
2. Based on these file changes, summarize the work done.

**TASKS**:
1. **Session Summary**: Briefly summarize the technical changes found in the diff in Korean.
    - Write it in markdown format.
2. **Commit Message**: Generate a semantic git commit message (Format: <type>: <title> \n\n <body>).