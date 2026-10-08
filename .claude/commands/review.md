---
description: Review the current branch against main
allowed-tools: Bash(git diff:*), Bash(git log:*), Bash(git status:*), Bash(git branch --show-current:*), Read, Grep, Glob
---

Review the current branch against `main` (`git diff main...HEAD`, `git log main..HEAD`). Check:

1. Correctness.
2. The rules in `.claude/rules/go.md` (error wrapping with %w, no panics outside main, io.Writer rendering, table-driven tests, no new dependency without approval).
3. Missing golden tests: every markdown element touched needs a `testdata/` input and expected output.
4. Terminal edge cases: narrow width, piped output, NO_COLOR, empty input, very long lines.

Report under three headings: **Must fix**, **Should fix**, **Suggestions**. Cite `file:line`. Say "none" for an empty heading. Do not edit files.
