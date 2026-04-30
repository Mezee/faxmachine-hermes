# FaxMachine Capability Map

This file states what outcomes FaxMachine claims, and how Hermes can actually achieve them.

The goal is to keep the repo honest:

- no fake feature claims
- no hidden workflow code
- no provider-owned behavior disguised as Hermes behavior

## Ownership Boundary

Hermes owns:

- interview judgment
- archive interpretation
- editorial framing
- loop-stage decisions

Providers own:

- voice transport
- calendar data
- Discord delivery

Future code should own:

- adapters
- persistence
- replay
- verification

## Outcome Parity Map

| User-visible outcome | Hermes path | Workspace surface | Provider role |
| --- | --- | --- | --- |
| Initialize FaxMachine workspace | `faxmachine-bootstrap` skill | `WORKSPACE/`, `WORKSPACE/AGENTS.md`, canonical files | none |
| Decide what today’s interview should learn | Hermes planning judgment + interview-session authoring skill | `WORKSPACE/context.md`, `WORKSPACE/shared/reports/current_loop_state.md`, `WORKSPACE/biographer/current_session_brief.md` | calendar is timing input only |
| Shape the live interview | interview-session authoring skill | `WORKSPACE/biographer/current_session_brief.md` | ElevenLabs delivers the voice session |
| Preserve the source trail | Hermes reads and updates shared source files | `WORKSPACE/shared/sources/` | provider may supply transcript/audio later |
| Write private identity synthesis | `biographer` role workspace | `WORKSPACE/biographer/` | none |
| Add to archive of record | Hermes writes durable archive outputs into shared layer | `WORKSPACE/shared/archive/` | none |
| Track where the loop currently is | Hermes reads and updates loop-state files | `WORKSPACE/context.md`, `WORKSPACE/shared/reports/current_loop_state.md`, `WORKSPACE/shared/archive/archive_queue.md` | none |
| Draft public-safe weekly issue material | `editorial` role workspace | `WORKSPACE/editorial/` | Discord may provide clarifications |
| Publish a weekly editorial artifact | Hermes assembles issue from shared archive + editorial workbench | `WORKSPACE/shared/archive/weekly_issues.md`, `WORKSPACE/editorial/issue_workbench.md` | future publishing adapter only |

## Current Real Capabilities

What the repo can honestly claim right now:

- Hermes can bootstrap the workspace through a real skill.
- Hermes has a clear shared workspace with role separation.
- Hermes has a clear shared loop-state surface.
- Hermes has a dedicated interview-session authoring skill.
- The repo defines where archive truth, private synthesis, and editorial drafting belong.

## Current Missing Capabilities

What the repo does not yet fully have:

- dedicated `biographer` role skill
- dedicated `editorial` role skill
- example artifacts showing the full loop
- provider adapters packaged in this clean repo
- explicit publish workflow

## Primitive Surfaces Hermes Can Use

Current primitive surfaces are file-based:

- read shared state
- update shared state
- write session brief
- write archive artifacts
- write editorial artifacts
- track unresolved claims
- track contradictions
- track timeline continuity

## Rule

If a new README claim is added, it must be mapped here.

If a user outcome cannot be expressed as a Hermes path plus a workspace surface, it is not a real capability yet.
