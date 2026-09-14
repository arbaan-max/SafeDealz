# TASK-017 — Acceptance and customer verification (M08, M12)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P15 |
| Status | Done |
| Areas | Backend / Flutter / Store Manager / OpenAPI |
| Design screens | M08, M12 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P11 |
| Automatic stop after | P15 |
| May continue across intermediate phases | Yes through P15 |

## Goal

Accepting an offer atomically commits bid plus fee, creates a payment instruction in awaiting-customer-verification, then collects KYC and a separate purchased-device identity. Provider transfer waits for KYC. Stop after this phase.

## Included

- Accept vs expiry one-outcome race, commitReservation, Deal + PaymentInstruction, stub OTP `123456`, ID/portrait adapters, purchased Apple/Android identity with distinct 15-digit IMEIs.
- Deferred Android debug APKs from P11–P14.

## Excluded

- Provider payout/transfer (P16). No admin approval gate.

## Existing files and patterns to reuse

- Auction accept window, wallet reservations, catalog storage/RAM, ImeiScanAdapter, AppPageScaffold.

## Changes required

### API contract

- OpenAPI v0.15.0 accept, deal read, OTP, verify.

### Backend and MongoDB

- commitReservation holds funds without returning them to available; KYC flips the instruction to ready_for_transfer.

### Flutter, web, or Diagnostics

- M12 Confirm posts accept; M08 KYC form.

## Acceptance criteria

- [x] Accept/expiry race has one outcome.
- [x] Vendor cannot read KYC.
- [x] Apple purchased model/storage, Android RAM, distinct 15-digit IMEIs.
- [x] Provider transfer waits for KYC.
- [x] Deferred APKs run in this final authorized phase. Deferred to P20 after Gradle stall; sequential debug APKs passed 2026-09-14.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Accept then replay | 201 then 200 same deal; reserved 0 | Automated | Passed |
| TC-002 | API | Vendor GET deal | 403 | Automated | Passed |
| TC-003 | API | Wrong OTP / Apple RAM / same IMEI | 400 | Automated | Passed |
| TC-004 | API | Accept after deadline | 409; round needs_reauction | Automated | Passed |
| TC-005 | Flutter | M12 Confirm; M08 no Apple RAM; scan IMEIs | Copy | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 33/33 |
| `make -f files/Makefile generate-api` | Pass | OpenAPI v0.15.0 |
| Store Manager analyze/test | Pass | 29/29 |
| Vendor / Diagnostics | Pass | 24/24 and 14/14 |
| React check | Pass | 17/17 Vitest; 2/2 Chromium |
| Android APK debug | Deferred then passed at P20 | Sequential Store Manager, Vendor, Diagnostics debug APKs 2026-09-14 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android debug APKs | Parallel Gradle jobs stalled at P15 | P20 | Passed sequentially 2026-09-14 |

## Files changed

- Deal/PaymentInstruction, commitReservation, M12/M08, OpenAPI v0.15.0

## Risks and follow-ups

- Stop after P15. P16 payout is not authorized.

## Completion

- Completed date: 2026-09-14
- Final result: Accept commits funds and opens KYC; transfer stays gated until verification; range P11–P15 stops here.
- Next task: None inside this authorization. P16 waits for an explicit owner command.

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Authorization boundary honored; stopped after P15.

## Security acceptance

- [x] Manager-only accept/KYC; vendor 403 on deal KYC; accept/expiry cannot both succeed.
