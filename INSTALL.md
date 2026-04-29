# Install FaxMachine Into Hermes

This repo follows the same basic Hermes packaging pattern as Chronofile:

- `HERMES_HOME/SOUL.md` goes into the Hermes profile home
- `HERMES_HOME/memories/` goes into the Hermes profile memory directory
- `HERMES_HOME/skills/` goes into the Hermes profile skills directory
- `WORKSPACE/AGENTS.md` becomes the workspace context
- `WORKSPACE/` becomes the working directory

## Option A

Run:

```bash
bash commands/install_faxmachine.sh
```

## Option B

Manual install:

```bash
hermes profile create faxmachine
faxmachine setup
```

Then copy:

```bash
PROFILE_HOME="$HOME/.hermes/profiles/faxmachine"

cp HERMES_HOME/SOUL.md "$PROFILE_HOME/SOUL.md"

mkdir -p "$PROFILE_HOME/memories"
cp HERMES_HOME/memories/USER.md "$PROFILE_HOME/memories/USER.md"
cp HERMES_HOME/memories/MEMORY.md "$PROFILE_HOME/memories/MEMORY.md"

mkdir -p "$PROFILE_HOME/skills"
cp -R HERMES_HOME/skills/* "$PROFILE_HOME/skills/"

mkdir -p "$HOME/faxmachine"
cp -R WORKSPACE/* "$HOME/faxmachine/"

faxmachine config set terminal.cwd "$HOME/faxmachine"
```

Then start:

```bash
faxmachine chat
```

Then give Hermes the bootstrap prompt from `BOOTSTRAP_PROMPT.md`.

That prompt tells Hermes to use the `faxmachine-bootstrap` skill so initialization is a Hermes capability, not a manual ritual.
