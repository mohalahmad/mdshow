---
description: Debug a problem step by step, with no guessing
argument-hint: <problem description>
allowed-tools: Bash(just:*), Bash(go test:*), Bash(go build:*), Bash(go vet:*), Bash(git diff:*), Bash(git log:*), Bash(git status:*), Read, Grep, Glob, Edit
---

Problem: $ARGUMENTS

Work in this order and show evidence at each step:
1. **Reproduce** it with a real command or failing test. If you cannot reproduce it, say so and ask one question.
2. **Locate** the cause in the code. Cite `file:line`.
3. **Explain** why it happens.
4. **Fix** the cause, minimally. Never weaken or delete a test.
5. **Verify** by rerunning the reproduction and `just test`. Show the output.
6. **Check** for the same pattern elsewhere (Grep) and report any matches without fixing them unasked.

No guessing: if a claim is not backed by output or code you read, do not make it.
