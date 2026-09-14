# TASK-025 — Cross-app experience verification

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P23 |
| Status | Done |
| Areas | Flutter / React / Backend |
| Design screens | Catalogued SM, Vendor, Diagnostics and Admin screens |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P21 |
| Automatic stop after | P24 |
| May continue across intermediate phases | Yes through P24 |

## Goal

Every catalogued screen is reachable. Loading, empty and error states, the sky-blue production theme, and nested back navigation are covered by Flutter widget tests and admin browser tests.

## Included

- Route catalogues, M24/V17 account, V03 media viewer, nested Back controls, admin Playwright sweep, unauthenticated oversight 401, dependency audits.

## Excluded

- New product workflows, live SMS, Android APKs (due P24).

## Existing files and patterns to reuse

- AppPageScaffold, ResourcePage, generated auth password/session clients.

## Changes required

### API contract

- Unchanged at OpenAPI v0.22.0.

### Backend and MongoDB

- P23 product test: unauthenticated `/overview`, `/reports`, `/audit` return 401.

### Flutter, web, or Diagnostics

- SM M24 and Account tab; Vendor V17/V03; nested Back; admin catalog/back/empty/error Playwright.

## Acceptance criteria

- [x] Catalogued routes resolve in Store Manager, Vendor and Diagnostics.
- [x] Admin browser test reaches A01–A24/S04 surfaces, nested back, empty reports and overview error.
- [x] Sky-blue scaffold `#F0F9FF` asserted on account/media and admin body.
- [x] Unauthenticated oversight is 401.
- [x] Backend and React `npm audit --audit-level=high` report 0 vulnerabilities.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | Flutter | Named routes for catalogued screens | Resolve | Automated | Passed |
| TC-002 | Flutter | M24/V17/V03 theme and Back | Copy | Automated | Passed |
| TC-003 | React e2e | Admin catalog, back, empty, error | Chromium | Automated | Passed |
| TC-004 | API | Unauthenticated oversight | 401 | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 41/41 |
| `cd backend && npm audit --audit-level=high` | Pass | 0 vulnerabilities |
| React check | Pass | 31/31 Vitest; 3/3 Chromium |
| `cd react/admin && npm audit --audit-level=high` | Pass | 0 vulnerabilities |
| Store Manager | Pass | 39/39 |
| Vendor / Diagnostics | Pass | 30/30 and 15/15 |
| Android APK | Deferred | Due at P24 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android debug APKs | No native plugin | P24 | Not run |

## Files changed

- Account and media screens, nested Back, Playwright experience spec, P23 401 test.

## Risks and follow-ups

- Continue automatically to P24. Stop after P24. Do not start P25.

## Completion

- Completed date: 2026-09-14
- Final result: Catalogued screens reachable with sky-blue theme, nested back, and loading/empty/error coverage.
- Next task: TASK-026 — P24 end-to-end and resilience

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Authorization boundary honored; continue through P24 then stop.
- [x] design.md / design.html: Not applicable — connected existing catalogue screens.
- [x] decisions.md: Not applicable — no new product decision.
- [x] testing.md already lists `check-p23`.
- [x] backend-IMPLEMENTATION_PLAN.md updated.
- [x] Obsidian Current State and Session Log updated.

## Security acceptance

- [x] Oversight routes remain 401 without a session; high-severity npm audits are clean; existing authorization tests still pass.
