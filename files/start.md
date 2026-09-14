# START HERE

This is the mandatory workflow entry point for SafeDealz. Read it before planning, designing, coding, reviewing, or testing.

## Required reading order

1. [Obsidian Current State](obsidian/01%20Memory/Current%20State.md) — portable resume memory; verify it against canonical records.
2. [plan.md](plan.md) and [phases.md](phases.md) — scope, phase dependencies, tasks and completion gates.
3. [decisions.md](decisions.md) — confirmed decisions that clarify or supersede older documentation.
4. [design.md](design.md) — authoritative screen behavior, fields, validation, navigation, roles, and states.
5. [design.html](design.html) — visual and interactive client reference.
6. [implementation.md](implementation.md) — active task, completed work, verification results, and next action.
7. [testing.md](testing.md) — mandatory API, database, Flutter, integration, and regression test policy.
8. Read [guides/flutter-CLAUDE.md](guides/flutter-CLAUDE.md) for Flutter work or [guides/backend-CLAUDE.md](guides/backend-CLAUDE.md) for backend work. Read both for end-to-end features.
9. Read the current task file under [tasks/](tasks/) when one exists.

Do not ask questions already answered by these files or the repository. Inspect existing code before proposing new structures, endpoints, collections, services, blocs, or widgets.

## Source-of-truth order

When two sources disagree, use this order:

1. The owner’s latest explicit instruction, recorded in [decisions.md](decisions.md).
2. [design.md](design.md) for behavior, validation, permissions, navigation, and UI states.
3. [plan.md](plan.md) for release scope, architecture, ownership, and phase order.
4. The API contract for request/response schemas once it exists.
5. [design.html](design.html) for visual appearance and interaction reference.
6. [implementation.md](implementation.md) and task files for execution status.
7. Existing code behavior.

If the conflict changes scope, security, money movement, user permissions, data ownership, or architecture, record a proposed decision and obtain owner approval before implementing it.

## Authorization and automatic stop boundary

Interpret each owner command before creating a task:

- **Single phase:** a command such as `start P01` authorizes P01 only. Complete all P01 gates and records, then stop automatically. Do not start P02 until explicitly instructed.
- **Inclusive phase range:** a command such as `start P11 and end at P20` authorizes P11 through P20. Continue across intermediate phase boundaries after recording each completion, and stop automatically after P20.
- **Named tasks or steps:** complete only the named scope and stop, even when the parent phase has more work.

An authorized range changes pause points; it does not remove dependencies or completion gates. Required unit, widget, API, database, contract, integration, and security tests run with the phase that introduces the behavior. Broad or repeated checks such as a full `flutter build apk --debug` may be deferred to the final authorized phase only when they are not needed to validate an intermediate change and no native plugin, platform configuration, or build-system change makes an immediate build necessary. Record every deferred check in the active task and run it before completing the final phase in the range.

If a deferred final check exposes an earlier regression, fix the source phase, update its records, and rerun affected gates before declaring the range complete.

## Execution workflow

### 1. Inspect

- Inspect the repository and identify existing Flutter, backend, API-contract, database, and test structures.
- Reuse existing patterns when they satisfy the approved design.
- Never hand-edit generated Flutter API clients, generated DTOs, `*.g.dart`, or `*.freezed.dart` files.

### 2. Confirm the phase

- Find the active phase in [plan.md](plan.md).
- If phase breakdown is still pending, prepare or refine the phase breakdown only. Do not start product code.
- A phase must have a goal, included scope, exclusions, dependencies, acceptance criteria, API impact, Flutter impact, database impact, and verification gate.
- Record whether the authorization covers one phase, an inclusive range, or named tasks, including the exact automatic stop boundary.

### 3. Create the task

- Break the active phase into small or medium tasks.
- Copy [tasks/TASK_TEMPLATE.md](tasks/TASK_TEMPLATE.md) into a numbered task file.
- Update the Current Task and Task Register in [implementation.md](implementation.md).
- Define acceptance criteria and concrete tests before writing implementation code.

### 4. Define the contract

- For API-backed work, define or update the OpenAPI contract before generated Flutter client code.
- Define authentication, authorization, validation, error responses, idempotency, data ownership, and MongoDB indexes where relevant.
- Regenerate clients from the approved contract rather than editing generated files.

### 5. Implement

- Follow [guides/backend-CLAUDE.md](guides/backend-CLAUDE.md) for Node.js, Express, MongoDB, and Mongoose changes.
- Follow [guides/flutter-CLAUDE.md](guides/flutter-CLAUDE.md) for Flutter architecture and generated API usage.
- Keep changes limited to the active task and its acceptance criteria.
- Update [design.md](design.md) and [design.html](design.html) first if the requested implementation changes the approved user experience.

### 6. Test

- Implement the tests listed in the task file.
- Run the relevant unit, widget, API, database, integration, and regression checks from [testing.md](testing.md).
- A task cannot be marked complete while a required test is failing or unrecorded.
- When automation is genuinely impractical, record the exact manual procedure, result, and reason.

### 7. Record completion after every implementation task

Documentation synchronization is part of the task, not optional later work. Do it after each implementation, bug fix, test fix, and partial/blocked handoff.

| File | Required update |
| --- | --- |
| Current task in [tasks/](tasks/) | Always: actual changes, acceptance checkboxes, tests, evidence, unresolved work, status and next task |
| [implementation.md](implementation.md) | Always: current task, register, commands/results, completed/remaining work and exact next action |
| [plan.md](plan.md) | Always: phase status and latest completed task; do not advance the phase prematurely |
| [phases.md](phases.md) | Update affected phase status and completed task IDs after each task |
| [decisions.md](decisions.md) | Record new confirmed decisions, superseded rules and unresolved conflicts when applicable |
| [design.md](design.md) and [design.html](design.html) | Keep both synchronized when approved screen behavior or appearance changes |
| Canonical OpenAPI contract and generated clients | Update/regenerate when API behavior changes; never hand-edit generated files |
| [testing.md](testing.md), test suites and run instructions | Update when coverage, commands, setup or verification policy changes |
| [backend-IMPLEMENTATION_PLAN.md](backend-IMPLEMENTATION_PLAN.md) | Keep active backend task pointer current when backend work changes |
| [obsidian/01 Memory/Current State.md](obsidian/01%20Memory/Current%20State.md) and [Session Log](obsidian/01%20Memory/Session%20Log.md) | Update after canonical records so another computer or session can resume from portable local memory |
| Setup/deployment documentation | Update when configuration, migrations, environment or operational procedures change |

For each conditional file, record Updated or Not applicable with a short reason in the task. Do not rewrite unrelated design files merely to mark coding complete. A completion report must name the changes, test commands and outcomes, documentation updated, remaining limitations and next task. Never count skipped, unavailable or unrun checks as passing. If blocked, record partial progress and the exact unblock action instead of marking Done.

After synchronization, stop at the recorded authorization boundary. A completed single phase never implies permission to begin the next phase.

## Current gate

P00 is complete in [TASK-001](tasks/TASK-001-architecture-readiness.md). The next planned phase is P01, the React admin foundation. Create and approve its task before implementation; do not repeat P00.

## Mandatory security checks

Read [security.md](security.md) before implementing APIs or authentication clients. Apply its phase-specific controls and automated negative tests during each feature. Inactive accounts must fail refresh and protected API calls; Store Manager and Vendor clear their sessions and return to Login on ACCOUNT_INACTIVE without a retry loop.

## Bootstrap and access-model reference

Read [architecture.md](architecture.md) before authorization work. The current order is React foundation, role authentication, Admin/store assignments, managers, vendors, then device workflows. [TASK-001](tasks/TASK-001-architecture-readiness.md) records the completed P00 bootstrap.
