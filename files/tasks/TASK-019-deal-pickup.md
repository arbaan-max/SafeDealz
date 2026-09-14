# TASK-019 — Deal history and pickup (M14, M16, M17, V12, A10, A11)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P17 |
| Status | Done |
| Areas | Backend / Flutter / React / OpenAPI |
| Design screens | M14, M16, M17, V12, A10, A11 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P16 |
| Automatic stop after | P20 |
| May continue across intermediate phases | Yes through P20 |

## Goal

After a paid deal, the originating store marks physical pickup. Repeated pickup is idempotent. Vendors see store location and pickup status without KYC or a mark-picked-up control. Admin can list rounds and bids.

## Included

- POST pickup, vendor GET own deal without KYC, GET deals, GET auction bids for staff, M14/M16/M17, V12, A10/A11.

## Excluded

- Rewards (P18–P19), notifications (P20), pickup deadline, vendor OTP.

## Existing files and patterns to reuse

- Deal/device statuses, scoped auctions, AppPageScaffold, ResourcePage.

## Changes required

### API contract

- OpenAPI v0.17.0 list deals, pickup, list auction bids; deal status `picked_up`.

### Backend and MongoDB

- Originating-store pickup; vendor own-deal read without customer fields.

### Flutter, web, or Diagnostics

- M14 deal, M17 confirm, M16 history, V12 purchased device, React A10/A11.

## Acceptance criteria

- [x] Only originating store can mark eligible pickup.
- [x] Repeated pickup is idempotent.
- [x] No deadline or vendor OTP.
- [x] Vendor/admin detail permissions tested.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Manager pickup after paid; replay; vendor 403 on pickup | 200 picked_up twice; vendor 403 | Automated | Passed |
| TC-002 | API | Vendor GET deal has no KYC | 200 without customerName | Automated | Passed |
| TC-003 | Flutter | M14/M17 no OTP; V12 no mark pickup | Copy | Automated | Passed |
| TC-004 | React | A10 list; A11 bids | Copy | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 35/35 |
| generate-api | Pass | OpenAPI v0.17.0 |
| Store Manager | Pass | 32/32 |
| Vendor / Diagnostics | Pass | 25/25 and 14/14 |
| React check | Pass | 21/21 Vitest; 2/2 Chromium |
| Android APK | Deferred | Passed sequentially at P20 2026-09-14 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android debug APKs | No new native plugin | P20 | Passed sequentially 2026-09-14 |

## Files changed

- Deal pickup, vendor deal read, M14/M16/M17, V12, A10/A11, OpenAPI v0.17.0

## Risks and follow-ups

- Continue automatically to P18. Stop after P20.

## Completion

- Completed date: 2026-09-14
- Final result: Paid deals can be picked up once by the originating store; vendors see location/status only.
- Next task: TASK-020 — P18 reward issuance

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Authorization boundary honored; continue through P20.

## Security acceptance

- [x] Vendor cannot mark pickup or see KYC; pickup blocked until paid; staff bid list is not exposed to vendors.
