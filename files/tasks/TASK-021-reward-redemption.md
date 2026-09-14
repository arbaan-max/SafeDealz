# TASK-021 — Reward redemption (M18–M22)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P19 |
| Status | Done |
| Areas | Backend / Flutter / OpenAPI |
| Design screens | M18, M19, M20, M21, M22 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P16 |
| Automatic stop after | P20 |
| May continue across intermediate phases | Yes through P20 |

## Goal

Store managers redeem branch-scoped points with an OTP bound to branch, discount and invoice. Debit is atomic. Cashiers apply the discount in separate billing software.

## Included

- Start/confirm/list redemptions, stub OTP `123456`, M18–M22.

## Excluded

- Notifications (P20), POS integration, admin reversal UI, live SMS.

## Existing files and patterns to reuse

- Reward account/ledger, KYC stub OTP, AppPageScaffold, generated OperationsClient.

## Changes required

### API contract

- OpenAPI v0.19.0 redemption start, OTP resend, confirm and list.

### Backend and MongoDB

- Pending redemption, hashed OTP, 5-minute expiry, 5 attempts, 60-second resend cooldown, unique redeem ledger key.

### Flutter, web, or Diagnostics

- Store Manager M18–M22.

## Acceptance criteria

- [x] Concurrent/repeated confirm cannot double-spend.
- [x] Expired OTP, wrong branch, insufficient points and over-bill rejected.
- [x] Partial balance and history remain correct.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Partial redeem then replay | 600 remaining; replayed | Automated | Passed |
| TC-002 | API | Expired OTP / other branch | 409 / 404 | Automated | Passed |
| TC-003 | Flutter | M18–M22 | Lookup through receipt | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 37/37 |
| generate-api | Pass | OpenAPI v0.19.0 |
| Store Manager | Pass | 35/35 |
| Vendor / Diagnostics | Pass | 25/25 and 14/14 |
| React check | Pass | 24/24 Vitest; 2/2 Chromium |
| Android APK | Deferred | Passed sequentially at P20 2026-09-14 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android debug APKs | No new native plugin | P20 | Passed sequentially 2026-09-14 |

## Files changed

- Redemption model/service, M18–M22, OpenAPI v0.19.0

## Risks and follow-ups

- Continue automatically to P20, then stop.

## Completion

- Completed date: 2026-09-14
- Final result: Branch-only redemption with bound OTP and atomic debit.
- Next task: TASK-022 — P20 notifications

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Authorization boundary honored; continue through P20 then stop.

## Security acceptance

- [x] OTP stored as digest; expired/wrong/locked codes rejected; other-branch managers cannot redeem originating-branch points; vendor 403.
