# Git rules

- Never commit directly to `main`. Branch names: `feat/<name>`, `fix/<name>`, `chore/<name>`.
- One logical change per branch.
- Conventional commit messages: `<type>(<scope>): <description>`. Scopes: render, term, cli, test, ci, build, docs.
- Run `just lint` and `just test` before pushing.
- Never commit secrets. This repo is public.
