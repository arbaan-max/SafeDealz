---
title: Memory Workflow
tags:
  - safedealz
  - workflow/memory
---

# Memory workflow

## At the start of work

1. Read [[01 Memory/Current State]].
2. Read the canonical implementation status and active task.
3. Check [[01 Memory/Session Log]] only when historical context is needed.
4. Validate memory against current code and canonical documents.

## During work

- Capture temporary thoughts in `01 Memory/Inbox`.
- Move durable conclusions into [[01 Memory/Project Memory]].
- Put confirmed decisions in the canonical [decision log](../../decisions.md).
- Do not copy secrets or customer information into notes.

## After work

1. Update the canonical task and implementation records required by [start.md](../../start.md).
2. Replace stale text in [[01 Memory/Current State]] with the new active gate and next action.
3. Append one dated summary to [[01 Memory/Session Log]].
4. Remove resolved scratch notes from `01 Memory/Inbox`.
5. Confirm that new links are relative and no absolute machine path was introduced.
6. Stop at the recorded authorization boundary. Record the next planned action without beginning it unless it falls inside an explicitly authorized inclusive phase range.
