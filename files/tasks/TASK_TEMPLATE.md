# TASK-XXX — Task name

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | PXX |
| Status | Planned |
| Areas | Flutter / Admin web / Diagnostics / Backend / MongoDB / Integration |
| Design screens | IDs from [../design.md](../design.md) |

## Goal

Describe one small or medium deliverable with a reviewable result.

## Included

- Define the exact work included in this task.

## Excluded

- Define nearby work intentionally left for another task.

## Existing files and patterns to reuse

- Inspect and list these before implementation.

## Changes required

### API contract

- Endpoints, schemas, errors, authorization, and idempotency.

### Backend and MongoDB

- Controllers, services, repositories, models, indexes, jobs, and integrations.

### Flutter, web, or Diagnostics

- Screens, routes, state, repositories, generated clients, components, and accessibility behavior.

## Acceptance criteria

- [ ] Add measurable criteria derived from the approved phase and design.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | Unit | Main business rule | Define exact expected result | Automated | Not run |
| TC-002 | API/integration | Successful request | Define status and response | Automated | Not run |
| TC-003 | Validation | Invalid or missing input | Define rejection behavior | Automated | Not run |
| TC-004 | Authorization | Wrong role or scope | Access is rejected without data leakage | Automated | Not run |
| TC-005 | Regression | Relevant edge case | Reported behavior cannot recur | Automated where practical | Not run |

Remove rows that genuinely do not apply and add task-specific cases. Do not begin coding with generic expected results.

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| Not run | Not run | Fill during implementation |

## Files changed

- Fill after implementation.

## Risks and follow-ups

- Record remaining risks, migrations, provider dependencies, and later tasks.

## Completion

- Completed date:
- Final result:
- Next task:

## Mandatory documentation synchronization

- [ ] Current task: actual files, criteria, status and next action updated.
- [ ] implementation.md: task register, test evidence and next action updated.
- [ ] plan.md and phases.md: phase progress and completed task IDs updated.
- [ ] Conditional files reviewed: decisions, design.md + design.html, OpenAPI/generated clients, testing/run instructions, backend plan pointer, setup/deployment notes. Record each as Updated or Not applicable with reason.

Record command, working directory, date, exit result and relevant test counts or evidence path. No credentials or customer information in evidence. Done requires all applicable criteria and tests passing, plus synchronized documentation. Blocked/partial work records the remaining action rather than a completion date.

## Security acceptance

- [ ] List applicable controls from [security.md](../security.md), abuse cases and expected API/client behavior.
- [ ] Run authorization, validation, rate-limit/replay/concurrency tests appropriate to this task.
- [ ] Record outcomes and fix failing required security checks before Done.
