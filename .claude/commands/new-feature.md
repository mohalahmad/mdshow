---
description: Spec a new feature and wait for approval before coding
argument-hint: <feature description>
allowed-tools: Read, Grep, Glob, Bash(git status:*), Bash(git branch --show-current:*)
---

Feature: $ARGUMENTS

1. Read CLAUDE.md and ARCHITECTURE.md. If the feature belongs to a later phase, say so and stop.
2. Ask clarifying questions you cannot answer from the repo (all at once, short).
3. After the answers, write a short spec: **Goal**, **Acceptance criteria** (testable, including the golden tests needed), **Out of scope**.
4. Propose a branch name (`feat/<name>`).
5. Wait for my approval. Do not write code or create the branch.
