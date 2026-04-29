# Bootstrap Prompt

Use this prompt inside the `faxmachine` Hermes profile after installing the files.

```txt
Inspect the current workspace.

Confirm that AGENTS.md is loaded as workspace context.

Confirm that the canonical folders exist:
- archive
- biography
- interviews
- editorial
- reports
- sources
- timelines
- schemas

Confirm that the canonical files exist:
- archive/daily_entries.md
- archive/weekly_issues.md
- biography/living_biography.md
- biography/private_self_model.md
- biography/public_bio.md
- interviews/questions_for_user.md
- interviews/interview_logs.md
- editorial/public_safe_claims.md
- reports/weekly_self_model_update.md
- sources/source_index.md
- sources/unresolved_claims.md
- sources/conflicting_records.md
- timelines/master_timeline.md
- timelines/project_timeline.md

Create any missing files as empty Markdown files with one H1 heading.

Do not write user-specific identity facts into SOUL.md.

Then explain:
1. what the current FaxMachine workspace is for
2. which Hermes role files define behavior
3. which provider is only a voice surface
4. what source should be ingested first
```
