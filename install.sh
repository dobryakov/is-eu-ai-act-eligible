#!/usr/bin/env bash
# Symlink the skill into ~/.claude/skills so it is available in every project.
set -euo pipefail

src="$(cd "$(dirname "$0")" && pwd)/skills/eu-ai-act-eligible"
dest="${CLAUDE_CONFIG_DIR:-$HOME/.claude}/skills/eu-ai-act-eligible"

mkdir -p "$(dirname "$dest")"
if [ -e "$dest" ] && [ ! -L "$dest" ]; then
  echo "error: $dest exists and is not a symlink; remove it first" >&2
  exit 1
fi
ln -sfn "$src" "$dest"
echo "installed: $dest -> $src"
