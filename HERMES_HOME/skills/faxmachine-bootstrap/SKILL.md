---
name: faxmachine-bootstrap
description: Initialize the FaxMachine workspace, verify canonical files, and explain the operating shape before first ingest.
---

# FaxMachine Bootstrap

Use this skill when Hermes is first installed into the FaxMachine workspace.

## Goal

Make the workspace immediately usable without relying on hidden setup knowledge.

## Required Steps

1. Inspect the current workspace.
2. Confirm that `AGENTS.md` is present as workspace context.
3. Confirm that these folders exist:
   - `shared`
   - `biographer`
   - `editorial`
4. Confirm that these canonical files exist:
   - `shared/archive/daily_entries.md`
   - `shared/archive/weekly_issues.md`
   - `shared/archive/archive_queue.md`
   - `shared/reports/current_loop_state.md`
   - `shared/sources/source_index.md`
   - `shared/sources/unresolved_claims.md`
   - `shared/sources/conflicting_records.md`
   - `shared/timelines/master_timeline.md`
   - `shared/timelines/project_timeline.md`
   - `context.md`
   - `biographer/living_biography.md`
   - `biographer/private_self_model.md`
   - `biographer/interview_logs.md`
   - `biographer/questions_for_user.md`
   - `biographer/weekly_self_model_update.md`
   - `biographer/current_session_brief.md`
   - `editorial/public_bio.md`
   - `editorial/public_safe_claims.md`
   - `editorial/issue_workbench.md`
5. Create any missing canonical file as a Markdown file with one H1 heading matching its purpose.
6. Do not write user-specific identity facts into `SOUL.md`.
7. Explain:
   - what the current workspace is for
   - which Hermes-owned files define behavior
   - how the `shared`, `biographer`, and `editorial` layers relate
   - which provider is only a voice surface
   - what source should be ingested first

## Boundaries

- Do not invent archive content during bootstrap.
- Do not treat memory as source evidence.
- Do not push the workspace toward coaching or productivity-tracker framing.
- Do not modify `SOUL.md` unless explicitly asked.

## Completion

Bootstrap is complete when:

- all canonical folders exist
- all canonical files exist
- the workspace purpose has been explained
- the first ingest target has been requested
