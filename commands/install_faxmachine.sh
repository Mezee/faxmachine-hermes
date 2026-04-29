#!/usr/bin/env bash
set -euo pipefail

PROFILE_NAME="${1:-faxmachine}"
WORKSPACE_DIR="${2:-$HOME/faxmachine}"
PROFILE_HOME="$HOME/.hermes/profiles/$PROFILE_NAME"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

hermes profile create "$PROFILE_NAME" || true

mkdir -p "$PROFILE_HOME/memories"
mkdir -p "$PROFILE_HOME/skills"
mkdir -p "$WORKSPACE_DIR"

cp "$REPO_DIR/HERMES_HOME/SOUL.md" "$PROFILE_HOME/SOUL.md"
cp "$REPO_DIR/HERMES_HOME/memories/USER.md" "$PROFILE_HOME/memories/USER.md"
cp "$REPO_DIR/HERMES_HOME/memories/MEMORY.md" "$PROFILE_HOME/memories/MEMORY.md"
cp -R "$REPO_DIR/HERMES_HOME/skills/." "$PROFILE_HOME/skills/"
cp -R "$REPO_DIR/WORKSPACE/." "$WORKSPACE_DIR/"

"$PROFILE_NAME" config set terminal.cwd "$WORKSPACE_DIR"

echo "Installed FaxMachine into Hermes profile: $PROFILE_NAME"
echo "Workspace: $WORKSPACE_DIR"
