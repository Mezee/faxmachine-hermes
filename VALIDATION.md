# Validation

This repo is designed as a Hermes bootstrap package.

## Expected Mapping

- `HERMES_HOME/SOUL.md`
  - profile identity layer
- `HERMES_HOME/memories/MEMORY.md`
  - durable operating memory
- `HERMES_HOME/memories/USER.md`
  - bounded user preference and known-fact memory
- `HERMES_HOME/skills/...`
  - Hermes-owned skills
- `WORKSPACE/AGENTS.md`
  - workspace context
- `WORKSPACE/...`
  - durable working material

## Design Checks

- behavior lives in Hermes-owned files first
- ElevenLabs is only the voice surface
- archive is Markdown-first
- evidence is separated from hypothesis
- weekly issue is a first-class artifact
- workspace is concrete and inspectable
- workspace initialization is a Hermes skill, not only a manual prompt
