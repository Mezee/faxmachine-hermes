# FaxMachine

The personal chronofile that interviews you, archives you, and publishes you back to yourself.

> Built as a Hermes-native system for the Hermes Agent Creative Hackathon.

Most personal AI systems either chat with you or track you. FaxMachine does something else: it treats your life as documentary material. Hermes decides what it needs to learn, conducts or shapes a daily voice interview, turns the result into an immutable archive entry, and then builds a weekly editorial artifact from the week of evidence.

## What It Does

You speak. Hermes listens with a purpose.

Over time it starts building:

- a daily record of what actually happened
- an evolving identity image grounded in evidence
- a weekly artifact that surfaces patterns, tensions, and what is worth preserving

The point is not to produce motivational summaries. The point is to build a durable record that becomes more useful over time.

## Architecture

```mermaid
flowchart TD
    A(["Hermes decides what it needs to learn"]) --> B["Author interview stance<br/>goal • opening question • follow-ups • stop condition"]
    B --> C["ElevenLabs voice session<br/>voice surface only"]
    C --> D["Transcript + audio return"]
    D --> E["Biographer profile<br/>evidence • interpretation • hypotheses"]
    E --> F["Immutable daily archive entry"]
    F --> G["Editorial profile<br/>weekly issue synthesis"]
    G --> H(["Weekly fax / magazine artifact"])

    style A fill:#1f6feb,color:#fff
    style C fill:#238636,color:#fff
    style F fill:#9a6700,color:#fff
    style H fill:#8250df,color:#fff
```

## Hermes Features Used

| Feature | How It Is Used |
|---|---|
| Profiles | Separate `biographer` and `editorial` roles |
| SOUL | Defines the baseline stance of the archival intelligence |
| Memory | Holds stable operating rules and bounded user preferences |
| Skills | Defines how Hermes authors one interview session |
| Workspace Context | Keeps the archive, biography, interview, editorial, and timeline files legible |
| Tools / Providers | Lets Hermes use voice, calendar, and Discord without those providers owning the behavior |

## Core Loop

1. Hermes decides what it wants to learn today.
2. Hermes creates the interview stance.
3. ElevenLabs delivers the session as the voice surface.
4. Hermes turns the result into one immutable daily archive entry.
5. Hermes uses the week of archive entries to create one editorial artifact.

## Workspace Shape

This repo is a Hermes bootstrap package, not a traditional app scaffold.

```txt
HERMES_HOME/
  SOUL.md
  memories/
  skills/

WORKSPACE/
  AGENTS.md
  archive/
  biography/
  interviews/
  editorial/
  reports/
  sources/
  timelines/
  schemas/
```

## Canonical Files

- `WORKSPACE/archive/daily_entries.md`
- `WORKSPACE/archive/weekly_issues.md`
- `WORKSPACE/biography/living_biography.md`
- `WORKSPACE/biography/private_self_model.md`
- `WORKSPACE/biography/public_bio.md`
- `WORKSPACE/interviews/questions_for_user.md`
- `WORKSPACE/interviews/interview_logs.md`
- `WORKSPACE/editorial/public_safe_claims.md`
- `WORKSPACE/reports/weekly_self_model_update.md`
- `WORKSPACE/sources/source_index.md`
- `WORKSPACE/sources/unresolved_claims.md`
- `WORKSPACE/sources/conflicting_records.md`
- `WORKSPACE/timelines/master_timeline.md`
- `WORKSPACE/timelines/project_timeline.md`

## Quick Start

```bash
bash commands/install_faxmachine.sh
faxmachine chat
```

Then use the prompt in [BOOTSTRAP_PROMPT.md](./BOOTSTRAP_PROMPT.md).

## What Hermes Owns

Hermes owns:

- what the interview is trying to learn
- how the interviewer behaves
- what counts as enough evidence
- how archive material is interpreted
- how the weekly issue is framed

Providers do not own that behavior.

## Providers

- ElevenLabs: voice surface
- Google Calendar: timing input
- Discord: sparse clarification line

## Project Structure

```mermaid
graph LR
    A["faxmachine-hermes-repo"] --> B["HERMES_HOME/"]
    A --> C["WORKSPACE/"]
    A --> D["commands/"]
    A --> E["INSTALL.md"]
    A --> F["BOOTSTRAP_PROMPT.md"]
    A --> G["VALIDATION.md"]

    B --> B1["SOUL.md"]
    B --> B2["memories/"]
    B --> B3["skills/"]

    C --> C1["archive/"]
    C --> C2["biography/"]
    C --> C3["interviews/"]
    C --> C4["editorial/"]
    C --> C5["reports/"]
    C --> C6["sources/"]
    C --> C7["timelines/"]
    C --> C8["schemas/"]
```

## Why This Is Different

FaxMachine is not trying to be:

- a personal OS
- a wellness tracker
- a life coach
- a productivity assistant

It is trying to be:

- a biographer
- an archive
- an editorial system

The weekly artifact matters more than the interface.

## Install

See [INSTALL.md](./INSTALL.md).

## Validation

See [VALIDATION.md](./VALIDATION.md).
