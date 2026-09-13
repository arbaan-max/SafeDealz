# SafeDealz Agent Entry Point

Every planning, design, implementation, review, and testing session in this repository must begin with [start.md](start.md) and the portable [Obsidian current-state memory](obsidian/01%20Memory/Current%20State.md).

Follow the document order and execution gates defined there. Do not begin coding from a standalone prompt without first checking the active phase and task in [plan.md](plan.md) and [implementation.md](implementation.md).

For Flutter work, also follow [guides/flutter-CLAUDE.md](guides/flutter-CLAUDE.md). For backend work, also follow [guides/backend-CLAUDE.md](guides/backend-CLAUDE.md). When a platform rule conflicts with a confirmed project decision, stop and record the conflict in [decisions.md](decisions.md) before changing the architecture.

Every implementation task must include appropriate automated tests. After verification, update [implementation.md](implementation.md) with the files changed, commands run, results, remaining work, and next task.

After every implementation task or partial handoff, follow the mandatory file-update matrix in [start.md](start.md). Update the task, implementation dashboard and phase status together before reporting completion. The phase roadmap is [phases.md](phases.md). Do not mark work complete without recorded verification.

After the canonical records are updated, refresh [Obsidian Current State](obsidian/01%20Memory/Current%20State.md) and append a short entry to [Obsidian Session Log](obsidian/01%20Memory/Session%20Log.md). Obsidian memory is a resume aid and never overrides canonical records or tested code.

The repository has exactly four top-level application/documentation folders: `backend`, `flutter`, `files`, and `react`. All Markdown documentation and agent instructions live under `files`. The React administration application belongs under `react/admin`.
