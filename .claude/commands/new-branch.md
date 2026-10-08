---
description: Create a correctly named branch from the latest main
argument-hint: <what the branch is for>
allowed-tools: Bash(git status:*), Bash(git fetch:*), Bash(git switch:*), Bash(git branch:*)
---

Purpose: $ARGUMENTS

1. Pick the type: `feat`, `fix` or `chore`. Generate a short kebab-case name: `<type>/<name>`.
2. Run `git status --short`. If there are uncommitted changes, warn me and stop to ask how to proceed.
3. Run `git fetch origin`, then `git switch -c <branch> origin/main`.
4. Show the resulting branch and tell me the first task. Do not write any code.
