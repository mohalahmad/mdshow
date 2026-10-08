---
description: Suggest a conventional commit message for the staged changes
allowed-tools: Bash(git diff --cached:*), Bash(git branch --show-current:*)
---

Read `git diff --cached` and the current branch (`git branch --show-current`).

If nothing is staged, say "Nothing is staged." and stop.

Otherwise write one commit message:
- Format: `<type>(<scope>): <description>`
- Types: feat, fix, docs, test, refactor, chore, ci, build
- Scopes: render, term, cli, test, ci, build, docs
- Lowercase, imperative mood, subject at most 72 characters
- Optional body after a blank line explaining what and why

Output only the message inside one plain code block, with no explanation. Do not run `git commit`.
