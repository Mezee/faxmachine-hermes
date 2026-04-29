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
   - `archive`
   - `biography`
   - `interviews`
   - `editorial`
   - `reports`
   - `sources`
   - `timelines`
   - `schemas`
4. Confirm that these canonical files exist:
   - `archive/daily_entries.md`
   - `archive/weekly_issues.md`
   - `biography/living_biography.md`
   - `biography/private_self_model.md`
   - `biography/public_bio.md`
   - `interviews/questions_for_user.md`
   - `interviews/interview_logs.md`
   - `editorial/public_safe_claims.md`
   - `reports/weekly_self_model_update.md`
   - `sources/source_index.md`
   - `sources/unresolved_claims.md`
   - `sources/conflicting_records.md`
   - `timelines/master_timeline.md`
   - `timelines/project_timeline.md`
5. Create any missing canonical file as a Markdown file with one H1 heading matching its purpose.
6. Do not write user-specific identity facts into `SOUL.md`.
7. Explain:
   - what the current workspace is for
   - which Hermes-owned files define behavior
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
