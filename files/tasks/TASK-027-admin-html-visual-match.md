# TASK-027 — Admin HTML visual match

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P25 |
| Status | In progress |
| Areas | Admin web |
| Design screens | A00–A24, S04 (admin) |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase |
| Start | P25 |
| Automatic stop after | P25 |
| May continue across intermediate phases | No |

## Goal

Run React admin beside [design.html](../design.html). Mark each Admin screen **Same** or restyle it to the HTML and mark **Updated** in [screen-match.md](../screen-match.md).

## Included

- A00 split login, admin shell (nav, workspace bar, profile, notifications bell), list/form/overview/report/account/settings/support layouts vs HTML frames.

## Excluded

- Store Manager, Vendor, Diagnostics visual match (P26–P28).
- Handover (P29). New product APIs. Hosting.

## Existing files and patterns to reuse

- `AdminShell`, `ResourceKit`, `PageSurface`, sky tokens, Playwright catalog.

## Changes required

### API contract

- Unchanged.

### Backend and MongoDB

- None.

### Flutter, web, or Diagnostics

- React admin visual alignment with design.html sky-blue admin frames.

## Acceptance criteria

- [ ] Every P25 row in screen-match.md is Same or Updated.
- [ ] Login has no remember/signup/forgot-password.
- [ ] `make -f files/Makefile check-p25` passes.
- [ ] Stop after P25.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | React unit | A00 credentials and password eye | Email/password, no recovery | Automated | Not run |
| TC-002 | Playwright | Catalogued admin screens stay reachable on sky-blue | Headings and empty/error states | Automated | Not run |
| TC-003 | Manual | Each HTML admin frame vs live UI | Same or Updated | Manual | Not run |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| Not run | Not run | Fill during implementation |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| None | Single-phase P25 | — | — |

## Files changed

- Fill after implementation.

## Risks and follow-ups

- Stop after P25. Do not start P26.

## Completion

- Completed date:
- Final result:
- Next task: None — stop after P25.

## Mandatory documentation synchronization

- [ ] Current task: actual files, criteria, status and next action updated.
- [ ] implementation.md: task register, test evidence and next action updated.
- [ ] plan.md and phases.md: phase progress and completed task IDs updated.
- [ ] Conditional files reviewed: decisions, design.md + design.html, OpenAPI/generated clients, testing/run instructions, backend plan pointer, setup/deployment notes. Record each as Updated or Not applicable with reason.
- [ ] Authorization boundary honored; work stopped after the recorded phase/task, or continued only within the recorded inclusive range.

## Security acceptance

- [ ] Visual-only; do not weaken login, role gates, or session revoke.
- [ ] Existing auth/e2e authorization checks still pass.
- [ ] Record outcomes before Done.
