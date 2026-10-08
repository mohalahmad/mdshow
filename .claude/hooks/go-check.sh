#!/usr/bin/env bash
# PostToolUse hook for Write|Edit. Reads the hook JSON from stdin, and for a
# .go file runs gofmt -l and go vet. Problems go to stderr with exit 2 so
# Claude sees them. Output is capped at 20 lines. Clean files print nothing.
file=$(jq -r '.tool_input.file_path // empty')
case "$file" in
  *.go) ;;
  *) exit 0 ;;
esac
[ -f "$file" ] || exit 0

out=""
fmt_out=$(gofmt -l "$file" 2>&1)
[ -n "$fmt_out" ] && out+="gofmt: needs formatting (run: gofmt -w): $fmt_out"$'\n'

if [ -f "${CLAUDE_PROJECT_DIR:-.}/go.mod" ]; then
  cd "${CLAUDE_PROJECT_DIR:-.}" || exit 0
  pkg="./$(dirname "${file#"$PWD"/}")"
  vet_out=$(go vet "$pkg" 2>&1)
  [ -n "$vet_out" ] && out+="$vet_out"$'\n'
fi

if [ -n "$out" ]; then
  printf '%s' "$out" | head -n 20 >&2
  exit 2
fi
exit 0
