# TASK-020 — Reward issuance and policy (A15, A16, A17)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P18 |
| Status | Done |
| Areas | Backend / Flutter / React / OpenAPI |
| Design screens | A15, A16, A17 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P16 |
| Automatic stop after | P20 |
| May continue across intermediate phases | Yes through P20 |

## Goal

Issue customer reward points once when a store payout is paid. Points come from the accepted bid excluding fee, stay at the originating branch, and snapshot the policy version used.

## Rounding policy (confirmed before code)

- Base amount is `deal.amountPaise` (bid excluding fee).
- Issue 10 points per complete ₹100 (`floor(amountPaise / 10000) * 10`). Remainder below ₹100 issues nothing extra.
- Each point is ₹0.50 (50 paise). Example: ₹8,000 bid → 800 points → ₹400.

## Included

- Idempotent paid-deal issuance, branch-scoped ledger/account, versioned branch-only policy, A15/A16/A17.

## Excluded

- Redemption OTP (P19), notifications (P20), live SMS, chain/multi-branch redemption.

## Existing files and patterns to reuse

- Payout `applyProcessed`, wallet unique ledger keys, ResourcePage, generated OperationsClient.

## Changes required

### API contract

- OpenAPI v0.18.0 overview, customer lookup, policy GET/POST.

### Backend and MongoDB

- Reward policy/account/ledger; issue from paid webhook replay-safe.

### Flutter, web, or Diagnostics

- React A15/A16/A17; Store Manager generated-client deserialization of overview.

## Acceptance criteria

- [x] Duplicate payment event issues once.
- [x] Rounding policy confirmed and tested.
- [x] Other branches cannot see/redeem originating-branch balances.
- [x] Policy snapshots and Super Admin publish audit; chain/multi-branch stays inactive.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Paid webhook then replay | 800 points once; 40000 paise | Automated | Passed |
| TC-002 | API | Other-branch manager lookup | Empty balances | Automated | Passed |
| TC-003 | API | Chain/multi-branch policy | 409 POLICY_SCOPE_INACTIVE | Automated | Passed |
| TC-004 | React | A15/A16/A17 | Totals, ledger, inactive scope | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 36/36 |
| generate-api | Pass | OpenAPI v0.18.0 |
| Store Manager | Pass | 33/33 including generated overview client |
| Vendor / Diagnostics | Pass | 25/25 and 14/14 |
| React check | Pass | 24/24 Vitest; 2/2 Chromium |
| Android APK | Deferred | Passed sequentially at P20 2026-09-14 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android debug APKs | No new native plugin | P20 | Passed sequentially 2026-09-14 |

## Files changed

- Reward models/services, payout hook, A15/A16/A17, OpenAPI v0.18.0

## Risks and follow-ups

- Continue automatically to P19. Stop after P20.

## Completion

- Completed date: 2026-09-14
- Final result: Paid deals issue branch-only points once from bid excluding fee.
- Next task: TASK-021 — P19 reward redemption

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Authorization boundary honored; continue through P20.

## Security acceptance

- [x] Vendors cannot access rewards; other-branch managers see no redeemable balance; chain/multi-branch cannot be enabled.
