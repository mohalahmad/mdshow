# mdshow

mdshow is a Go command-line tool that previews Markdown in the terminal with real headings, lists, tables and code blocks and no leftover markdown symbols. It ships as one static binary, works fully offline, and is licensed GPL-3.0.

## Commands

- Build: `just build`
- Run: `just run README.md`
- Test: `just test` (or `go test ./...`)
- Lint: `just lint` (golangci-lint)
- Format: `just fmt`
- Update golden files: `just update-golden` (review the diff afterwards)

## Project docs and rules

@ARCHITECTURE.md
@.claude/rules/go.md
@.claude/rules/git.md
@.claude/rules/workflow.md

## Current phase: Phase 1 (core renderer)

Focus on:
- Project skeleton: `go.mod`, `cmd/mdshow`, `internal/render`, `internal/term`
- Rendering headings, bold, italic, inline code, bullet and numbered lists, code blocks, links, horizontal rules
- Reading from a file or stdin, plain output when piped or `NO_COLOR` is set
- A golden test for every element

Do not touch yet:
- Nested lists, block quotes, tables, syntax highlighting, `--pager` (Phase 2)
- goreleaser, .deb, snap, README install instructions (Phase 3)
- PPA (Phase 4)

If you spot later-phase work, add it to "Deferred work" in ARCHITECTURE.md and leave it.
