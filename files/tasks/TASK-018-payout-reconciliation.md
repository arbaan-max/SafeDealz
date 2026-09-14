# TASK-018 — Payout and reconciliation (M13, A12, A13)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P16 |
| Status | Done |
| Areas | Backend / Flutter / Store Manager / React / OpenAPI |
| Design screens | M13, A12, A13 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P16 |
| Automatic stop after | P20 |
| May continue across intermediate phases | Yes through P20 |

## Goal

After KYC, automatically submit the store payout to a stub provider. Duplicate callbacks cannot pay twice. Unknown outcomes must be reconciled before retry. Failed payouts never blindly refund or mark paid. No admin approval gate.

## Included

- Stub HMAC payout webhook, processing/paid/needs_attention/unknown state machine, settle committed funds on success, M13/A12/A13.

## Excluded

- Pickup (P17), rewards (P18–P19), notifications (P20), live payout provider.

## Existing files and patterns to reuse

- Razorpay raw-body HMAC webhook, wallet commit/settle, Deal/PaymentInstruction, AppPageScaffold, ResourcePage.

## Changes required

### API contract

- OpenAPI v0.16.0 payments list/get/retry/reconcile; expanded payment and deal statuses; `paymentsProcessingPaise`.

### Backend and MongoDB

- Auto-submit after KYC; settle reservation on processed; keep committed funds on failed/unknown.

### Flutter, web, or Diagnostics

- M13 payment status; React A12 list and A13 detail with refresh/retry/reconcile only.

## Acceptance criteria

- [x] No admin approval gate.
- [x] Duplicate processed callbacks cannot pay twice.
- [x] Unknown outcome blocks retry until reconcile.
- [x] Failed payout never refunds or marks paid.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | KYC auto-submits; unknown then reconcile failed; retry; paid replay | processing → unknown 409 → needs_attention → paid once | Automated | Passed |
| TC-002 | API | Vendor GET /payments | 403 | Automated | Passed |
| TC-003 | Flutter | M08 verify opens M13; no Approve payout | Copy | Automated | Passed |
| TC-004 | React | A12/A13 list and retry; no Approve | Copy | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 34/34 |
| `make -f files/Makefile generate-api` | Pass | OpenAPI v0.16.0 |
| Store Manager analyze/test | Pass | 31/31 |
| Vendor / Diagnostics | Pass | 24/24 and 14/14 |
| React check | Pass | 19/19 Vitest; 2/2 Chromium |
| Android APK debug | Deferred | Passed sequentially at P20 2026-09-14 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android debug APKs | No new native plugin; previous parallel Gradle jobs stalled | P20 | Passed sequentially 2026-09-14 |

## Files changed

- payout adapter/service, wallet settle, M13, A12/A13, OpenAPI v0.16.0

## Risks and follow-ups

- Continue automatically to P17. Stop after P20.

## Completion

- Completed date: 2026-09-14
- Final result: KYC starts stub payout automatically; paid settles committed funds once; unknown must be reconciled before retry.
- Next task: TASK-019 — P17 deal history and pickup

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Authorization boundary honored; continue through P20.

## Security acceptance

- [x] HMAC webhook; vendor 403 on payments; duplicate pay blocked; failed never refunds.
