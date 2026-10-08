# mdshow architecture

mdshow previews Markdown in the terminal the way it is meant to look: real headings, bullets, tables and code blocks, with no leftover markdown symbols such as `#` or `**`. Usage: `mdshow README.md`.

## Why it exists

glow leaves `##` on subheadings by default. mdcat renders cleanly but has no simple Ubuntu install and its original repo is archived. mdshow does both: a clean preview by default and a one-command install.

## Stack

- Go (latest stable). Module path: `github.com/mohalahmad/mdshow`
- Parsing: goldmark (MIT). Styling: lipgloss (MIT). Code highlighting: chroma (MIT).
- One static binary, no runtime dependencies.
- Fully offline. No telemetry, no network calls, ever.
- License: GPL-3.0 (see `LICENSE`). Every new dependency must be license-compatible.
- Target: Ubuntu 22.04+ first, x86_64 and arm64.

## Behaviour that must always hold

- Detect terminal width and wrap text to it.
- Piped output or `NO_COLOR` set: plain text, no ANSI codes.
- Read from a file argument or from stdin.
- Never crash on malformed markdown; render what can be rendered.

## Package layout (planned)

```
cmd/mdshow/       entry point: flags, input reading, wiring
internal/render/  markdown AST -> styled text, writes to an io.Writer
internal/term/    terminal detection: width, TTY, NO_COLOR
testdata/         markdown inputs with golden outputs next to them
```

## Phases

1. **Core renderer**: headings, bold, italic, inline code, bullet and numbered lists, code blocks, links, horizontal rules.
2. **Polish**: text wrapping, nested lists, block quotes, tables with proper column widths, syntax highlighting, `--pager` flag.
3. **Packaging**: goreleaser, .deb, snap, install instructions in the README.
4. **PPA and wider distribution.**

Distribution order: GitHub Releases (binary + .deb via goreleaser), then Snap Store, then a PPA.

## Decisions

| Decision | Reason |
|---|---|
| Go | Single static binary, easy cross-compilation to x86_64 and arm64, no runtime to install. |
| goldmark for parsing | Standard CommonMark parser in Go with an AST we can walk; actively maintained. |
| lipgloss for styling | Handles colour profiles and width-aware layout; respects NO_COLOR. |
| chroma for highlighting | De facto Go syntax highlighter, many languages, terminal formatters. |
| No network, no telemetry | Privacy and offline use are core promises of the tool. |
| Renderers write to an `io.Writer` | Makes output testable with golden files and keeps stdout handling in `cmd/`. |
| Golden-file tests | Rendered terminal output is easiest to verify by comparing whole files. |
| goreleaser before Snap before PPA | Cheapest route to a working install first; PPA has the most overhead. |
| GPL-3.0 (already in repo) | Chosen by the author; dependencies must be compatible (MIT/BSD/Apache-2.0 are). |

## Deferred work

Work noticed that belongs to a later phase. Add entries here instead of doing them early.

- (none yet)
