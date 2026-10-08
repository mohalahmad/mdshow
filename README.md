# mdshow

Preview Markdown in your terminal the way it is meant to look, with no leftover symbols.

## Status

mdshow is in early development (Phase 1) and is not yet installable. No released version exists, and nothing below works today unless it says otherwise.

## Why

Existing tools either leave markdown symbols in the output (glow keeps `##` on subheadings by default) or are hard to install on Ubuntu (mdcat's original repo is archived). mdshow aims for a clean preview by default and a one-command install.

## Planned usage

Not implemented yet.

```
mdshow README.md          # preview a file
cat README.md | mdshow    # read from stdin
mdshow --pager README.md  # page long output (Phase 2)
```

## Planned install

Coming in Phase 3, for Ubuntu 22.04 and newer on x86_64 and arm64:

- Snap
- .deb package from GitHub Releases

There is no build-from-source section yet. The Justfile has a `build` recipe, but the code it builds does not exist. This section will be added once the first version builds.

## Roadmap

- [ ] Phase 1: core renderer (headings, bold, italic, inline code, lists, code blocks, links, horizontal rules)
- [ ] Phase 2: polish (text wrapping, nested lists, block quotes, tables, syntax highlighting, `--pager`)
- [ ] Phase 3: packaging (goreleaser, .deb, snap, install instructions)
- [ ] Phase 4: PPA and wider distribution

See [ARCHITECTURE.md](ARCHITECTURE.md) for the decisions behind these.

## Principles

- Works fully offline. No telemetry, no network calls.
- One binary with no runtime dependencies.
- Detects terminal width and wraps text to it.
- Prints plain text with no ANSI codes when output is piped or `NO_COLOR` is set.

## Contributing

Issues and pull requests are welcome. Branch names and commit messages follow the rules in [.claude/rules/git.md](.claude/rules/git.md).

## License

GPL-3.0. See [LICENSE](LICENSE).
