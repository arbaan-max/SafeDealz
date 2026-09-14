# TASK-014 — Auction lifecycle and settings (M10, A20)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P12 |
| Status | Done |
| Areas | Backend / Flutter / Store Manager / Admin web |
| Design screens | M10, A20 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P11 |
| Automatic stop after | P15 |
| May continue across intermediate phases | Yes through P15 |

## Goal

Store Managers start a server-timed auction round. Close recovers after a worker restart. Super Admin configures future-round bidding and acceptance minutes.

## Included

- Start/cancel/tick, duplicate-start block, one live round per device, A20 1–30 / 1–60 minutes applying to future rounds, M10 countdown.

## Excluded

- Vendor bids (P13), offer accept/decline/rebid (P14), KYC (P15), payout (P16).

## Existing files and patterns to reuse

- Device ready_for_auction, AppPageScaffold, ResourceForm, outbox events.

## Changes required

### API contract

- OpenAPI v0.12.0 settings and auction start/get/cancel/tick.

### Backend and MongoDB

- AuctionRound, platform settings singleton, injectable clock.

### Flutter, web, or Diagnostics

- M10 live auction; A20 Super Admin settings.

## Acceptance criteria

- [x] Duplicate start blocked.
- [x] Close survives worker restart.
- [x] No simultaneous live rounds.
- [x] Settings change future rounds only.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Second start while live | 409 | Automated | Passed |
| TC-002 | API | Tick after close deadline twice | Closed once | Automated | Passed |
| TC-003 | API | Settings 10 then new round | New closesAt uses 10; prior unchanged | Automated | Passed |
| TC-004 | Flutter/React | M10 countdown label; A20 save | Copy | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 30/30 |
| `make -f files/Makefile generate-api` | Pass | OpenAPI v0.12.0 |
| Store Manager analyze/test | Pass | 22/22 |
| Vendor / Diagnostics | Pass | 17/17 and 14/14 |
| `cd react/admin && npm run check` | Pass | 17/17 Vitest; 2/2 Chromium |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK | No native plugin | P15 | Not run |

## Files changed

- Auction round/settings/clock, M10, A20, OpenAPI v0.12.0

## Risks and follow-ups

- Continue automatically to P13.

## Completion

- Completed date: 2026-09-14
- Final result: Live rounds are unique, close is idempotent after restart, settings apply to future rounds only.
- Next task: TASK-015 — P13 vendor bidding

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Continue to P13 within the P11–P15 range.

## Security acceptance

- [x] Store-scoped start/cancel; Super Admin-only settings writes.
