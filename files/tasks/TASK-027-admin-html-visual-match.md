# TASK-027 — Admin HTML visual match

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P25 |
| Status | Done |
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

- Unchanged (OpenAPI v0.22.0).

### Backend and MongoDB

- None.

### Flutter, web, or Diagnostics

- React admin restyled to HTML admin chrome: split A00, left nav + workspace bar, Plus Jakarta Sans, cards/tables/stats.

## Acceptance criteria

- [x] Every P25 row in screen-match.md is Same or Updated.
- [x] Login has no remember/signup/forgot-password.
- [x] `make -f files/Makefile check-p25` passes.
- [x] Stop after P25.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | React unit | A00 credentials and password eye | Email address, password eye, no recovery | Automated | Passed |
| TC-002 | Playwright | Catalogued admin screens stay reachable on sky-blue | Headings and empty/error states | Automated | Passed |
| TC-003 | Manual | Each HTML admin frame vs live UI | Updated after restyle | Manual | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd react/admin && npm test` | Pass | 31/31 |
| `cd react/admin && npm run test:e2e` | Pass | 3/3 Chromium |
| `make -f files/Makefile check-p25` | Pass | React 31/31 + 3/3; Flutter 39/39, 30/30, 15/15; backend 42/42 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| None | Single-phase P25 | — | — |

## Files changed

- Admin shell, login, tokens, ResourceKit, overview/reports/account/settings/notifications and list/form pages; screen-match register; TASK-027.

## Risks and follow-ups

- Stop after P25. Do not start P26.

## Completion

- Completed date: 2026-09-14
- Final result: Admin HTML visual match. All P25 rows marked Updated.
- Next task: None — stop after P25.

## Mandatory documentation synchronization

- [x] Current task: actual files, criteria, status and next action updated.
- [x] implementation.md: task register, test evidence and next action updated.
- [x] plan.md and phases.md: phase progress and completed task IDs updated.
- [x] Conditional files: decisions Not applicable (DEC-025 already recorded); design.md/html Not applicable (visual follow, no behavior change); OpenAPI Not applicable; testing.md already lists check-p25; backend plan pointer updated; setup Not applicable.
- [x] Authorization boundary honored; stopped after P25.

## Security acceptance

- [x] Visual-only; login still has no recovery/signup; Admin role still cannot open Admins (Playwright).
- [x] Existing auth/e2e authorization checks pass.
- [x] Recorded in this task.
