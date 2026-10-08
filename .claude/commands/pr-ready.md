---
description: Check the branch is ready for a PR and draft the title and description
allowed-tools: Bash(just test:*), Bash(just lint:*), Bash(git diff:*), Bash(git log:*), Bash(git status:*), Bash(git branch --show-current:*), Grep
---

1. Run `just test` and `just lint`. Show real output; stop and report if either fails.
2. Check scope: one logical change, inside the current phase in CLAUDE.md, nothing unrelated in `git diff main...HEAD`.
3. Check every commit on the branch (`git log main..HEAD`) follows `<type>(<scope>): <description>`.
4. Scan the diff for secrets (keys, tokens, passwords, .env content). This repo is public.
5. Draft a PR title (conventional commit style) and a description with sections: **What**, **Why**, **Changes**, **Testing**. Testing must only list what was actually run.

Do not push or create the PR.
