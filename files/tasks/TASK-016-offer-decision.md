# TASK-016 — Offer decision and re-auction (M11, M15)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P14 |
| Status | Done |
| Areas | Backend / Flutter / Store Manager / OpenAPI |
| Design screens | M11, M15 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P11 |
| Automatic stop after | P15 |
| May continue across intermediate phases | Yes through P15 |

## Goal

Closing a live round selects the highest bid (earliest createdAt on a tie), releases losers, and opens a manager acceptance window. Decline, expiry and rebid release the winner and return the device to needs-reauction. No customer KYC yet.

## Included

- Deterministic winner, loser hold release, acceptance deadline, M11/M15, decline reasons including required Other text, rebid with expected amount starting a new round.

## Excluded

- Accept creating a deal/payment instruction (P15), KYC (P15), payout (P16).

## Existing files and patterns to reuse

- AuctionRound, Bid, releaseReservation, injectable clock, AppPageScaffold.

## Changes required

### API contract

- OpenAPI v0.14.0 decline/rebid; tick reports expired acceptance rounds.

### Backend and MongoDB

- Close selects winner; no bids → needs_reauction; tick expires acceptance.

### Flutter, web, or Diagnostics

- M11 highest offer; M15 needs re-auction; M12 shell without accept POST.

## Acceptance criteria

- [x] Highest then earliest wins; losers released.
- [x] No bids → needs_reauction.
- [x] Fake-clock acceptance expiry releases the winner once.
- [x] Other requires reason; duplicate rebid 409.
- [x] No pre-acceptance customer KYC.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Equal bids | Earliest createdAt wins; loser available restored | Automated | Passed |
| TC-002 | API | Decline Other blank | 400 | Automated | Passed |
| TC-003 | API | Rebid then rebid again | 409 | Automated | Passed |
| TC-004 | API | Tick after acceptance deadline twice | Expired once | Automated | Passed |
| TC-005 | Flutter | M11 countdown; M15 no-bids copy | Copy | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 32/32 |
| `make -f files/Makefile generate-api` | Pass | OpenAPI v0.14.0 |
| Store Manager analyze/test | Pass | 26/26 |
| Vendor / Diagnostics | Pass | 24/24 and 14/14 |
| React check | Pass | 17/17 Vitest; 2/2 Chromium (unchanged this phase) |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK | No native plugin | P15 | Not run |

## Files changed

- Auction close/expire/decline/rebid, M11/M15, OpenAPI v0.14.0

## Risks and follow-ups

- Continue automatically to P15. M12 Confirm remains disabled until accept API.

## Completion

- Completed date: 2026-09-14
- Final result: Offers are deterministic, holds release on lose/decline/expiry/rebid, and no KYC is collected before accept.
- Next task: TASK-017 — P15 acceptance and customer verification

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Continue to P15 within the P11–P15 range.

## Security acceptance

- [x] Manager-only decline/rebid; vendor cannot see competitor amounts; expired/declined offers cannot be decided twice.
