# Go rules

- Wrap every error with context using `%w`: `fmt.Errorf("render heading: %w", err)`. Never discard an error with `_`.
- No panics outside `main()`. No global mutable state; pass dependencies explicitly.
- Rendering functions take an `io.Writer` and never print directly to stdout.
- Tests are table-driven only.
- The renderer is tested with golden files: a markdown input in `testdata/` and the expected output next to it (`name.md` and `name.golden`). Every new markdown element needs a golden test. Regenerate with `just update-golden` and review the diff.
- Do not add a dependency without asking first and stating its license. The repo is GPL-3.0, so the license must be compatible (MIT, BSD, Apache-2.0 are fine).
