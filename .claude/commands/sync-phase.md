---
description: Report phase progress and update Current phase in CLAUDE.md
allowed-tools: Bash(git log:*), Bash(git status:*), Bash(just test:*), Bash(ls:*), Read, Grep, Glob, Edit
---

1. Read CLAUDE.md and ARCHITECTURE.md for the current phase and its scope.
2. Review recent commits (`git log --oneline -30`), the code layout, and the result of `just test` (show real output).
3. Report what is done and what remains in the current phase, based only on what exists in the repo.
4. Update only the "Current phase" section of CLAUDE.md to match: focus, and what not to touch. Keep CLAUDE.md under 60 lines. If the phase is complete, say so and ask before moving to the next one.
