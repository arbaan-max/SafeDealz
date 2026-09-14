# TASK-026 — End-to-end and resilience

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P24 |
| Status | Done |
| Areas | Backend / Flutter |
| Design screens | Cross-journey |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P21 |
| Automatic stop after | P24 |
| May continue across intermediate phases | Stop after this task |

## Goal

API and Flutter suites cover intake through payout, pickup and rewards, plus rebid, insufficient funds, deactivation, failed/unknown payment, offline recovery and duplicate events. Sequential Android debug APKs run at close.

## Included

- Combined P24 product journey test; sequential Store Manager, Vendor, then Diagnostics debug APKs.

## Excluded

- P25 handover, hosting, live SMS, live payout providers.

## Existing files and patterns to reuse

- P11–P20 product tests, payout HMAC stub, controllable clock.

## Changes required

### API contract

- Unchanged at OpenAPI v0.22.0.

### Backend and MongoDB

- P24 journey: insufficient funds, vendor deactivation, rebid duplicate, unknown payout blocks retry, paid replay, pickup, 800 reward points.

### Flutter, web, or Diagnostics

- Existing widget suites remain the Flutter evidence. Sequential debug APKs.

## Acceptance criteria

- [x] Happy path from accepted deal through unknown payout, retry, paid replay, pickup and rewards.
- [x] Rebid, insufficient funds and deactivated vendor are rejected correctly.
- [x] Sequential Android debug APKs built for Store Manager, Vendor, Diagnostics.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | P24 combined journey | Pass | Automated | Passed |
| TC-002 | Flutter | Existing widget journeys | Pass | Automated | Passed in P23; unchanged |
| TC-003 | Android | Sequential debug APKs | Built | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 42/42 |
| React check | Pass | 31/31 Vitest; 3/3 Chromium (P23, unchanged) |
| Store Manager / Vendor / Diagnostics tests | Pass | 39/39, 30/30, 15/15 (P23, unchanged) |
| Android APK | Pass | Sequential 2026-09-14: Store Manager, then Vendor, then Diagnostics. `flutter clean` after each build to stay inside ~5GB free disk. |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android debug APKs | Due this phase | P24 | Passed sequentially 2026-09-14 |

## Files changed

- `backend/test/product-p21-p24.test.js` P24 journey. APKs built and cleaned.

## Risks and follow-ups

- Authorized range P21–P24 is complete. Do not start P25.

## Completion

- Completed date: 2026-09-14
- Final result: End-to-end API journey and sequential debug APKs.
- Next task: None — stop after P24.

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Authorization boundary honored; stop after P24.
- [x] design.md / design.html: Not applicable — no screen change.
- [x] decisions.md: Not applicable — no new product decision.
- [x] testing.md already lists `check-p24`.
- [x] backend-IMPLEMENTATION_PLAN.md updated.
- [x] Obsidian Current State and Session Log updated.

## Security acceptance

- [x] Deactivated vendor cannot bid; unknown payout cannot retry until reconciled; duplicate paid webhooks replay; unauthenticated APIs remain 401 from prior tests.
