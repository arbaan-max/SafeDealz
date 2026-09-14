# TASK-015 — Vendor bidding and fee holds (V01–V06, V13)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P13 |
| Status | Done |
| Areas | Backend / Flutter / Vendor / OpenAPI |
| Design screens | V01, V02, V03, V04, V05, V06, V13 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P11 |
| Automatic stop after | P15 |
| May continue across intermediate phases | Yes through P15 |

## Goal

Assigned vendors discover live auctions, place one immutable bid per round, and reserve bid plus platform fee from available wallet funds. Competitor amounts stay hidden.

## Included

- Fee bands ≤₹20k 8%, >₹20k–₹30k 7%, >₹30k 6%; rounded paise snapshot.
- One bid per vendor/round; idempotency replay returns 200.
- V01 live queue, V02 device cards, V04/V05 bid calculator, V06 confirmation, V13 my bids.

## Excluded

- Offer accept/decline/rebid (P14), KYC (P15), payout (P16).

## Existing files and patterns to reuse

- AuctionRound, wallet reserveFunds, AppPageScaffold, generated OperationsClient.

## Changes required

### API contract

- OpenAPI v0.13.0 `POST /auctions/{id}/bids`, `GET /bids`, `GET /bids/{id}`. Vendors never receive `highestAmountPaise`.

### Backend and MongoDB

- Bid unique `{ roundId, vendorAccountId }`; reserve `bid-hold:{idempotencyKey}`.

### Flutter, web, or Diagnostics

- Vendor V01/V02/V04/V06/V13 with MemoryAuctionRepository tests and generated-client bid post.

## Acceptance criteria

- [x] Boundary and rounding tests for 8/7/6 percent.
- [x] Insufficient total balance rejected.
- [x] One bid per vendor/round; same key replays.
- [x] Competitor bids and highest amount hidden from other vendors.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | Unit | ₹8,000 / ₹20,000 / ₹20,000.01 / ₹30,000.01 | 8/8/7/6 percent rounded | Automated | Passed |
| TC-002 | API | Insufficient funds | 409 | Automated | Passed |
| TC-003 | API | Second bid different key | 409; same key 200 | Automated | Passed |
| TC-004 | API | Other vendor GET auction | no highestAmountPaise, no ownBid | Automated | Passed |
| TC-005 | Flutter | V04 fee math, Add money, V06 immutable | Copy | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 31/31 |
| Store Manager analyze/test | Pass | 22/22 |
| Vendor analyze/test | Pass | 24/24 |
| Diagnostics analyze/test | Pass | 14/14 |
| `cd react/admin && npm run check` | Pass | 17/17 Vitest; 2/2 Chromium |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK | No native plugin | P15 | Not run |

## Files changed

- Bid model/service/routes, Vendor auction screens, OpenAPI v0.13.0

## Risks and follow-ups

- Continue automatically to P14.

## Completion

- Completed date: 2026-09-14
- Final result: Vendors place one fee-inclusive hold per live round; competitors cannot see amounts.
- Next task: TASK-016 — P14 offer decision and re-auction

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Continue to P14 within the P11–P15 range.

## Security acceptance

- [x] Vendor store-scope on bid; competitor amounts omitted; wallet overspend 409.
