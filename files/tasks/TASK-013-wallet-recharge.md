# TASK-013 — Razorpay wallet recharge (V08, V09)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P11 |
| Status | Done |
| Areas | Backend / Flutter / Vendor / Integration |
| Design screens | V08, V09 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P11 |
| Automatic stop after | P15 |
| May continue across intermediate phases | Yes through P15 |

## Goal

Vendors recharge the personal wallet through a backend-created Razorpay order. Only a verified webhook credits the ledger. Client checkout success never credits.

## Included

- POST recharge order, webhook signature verification, duplicate/out-of-order handling, failed payments, V08/V09 with injectable checkout adapter.

## Excluded

- Live Razorpay credentials (stub orders + HMAC like R2 stubs). Auction P12+. Native Razorpay SDK.

## Existing files and patterns to reuse

- `creditWallet`, AppPageScaffold, injectable adapters.

## Changes required

### API contract

- OpenAPI v0.11.0 recharge + acknowledge. Webhook stays off the generated Flutter client; HMAC uses the raw body.

### Backend and MongoDB

- Recharge records, unique payment/order IDs, raw-body HMAC, processingPaise from pending orders.

### Flutter, web, or Diagnostics

- V08 amount, V09 status; Add money enabled. Demo Razorpay checkout adapter.

## Acceptance criteria

- [x] Invalid signatures rejected.
- [x] Duplicate/out-of-order webhooks credit once.
- [x] Client success alone never credits.
- [x] Failed payments do not credit; later capture still credits once.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Bad webhook signature | 400 | Automated | Passed |
| TC-002 | API | Capture then replay | Credit once | Automated | Passed |
| TC-003 | API | Client acknowledge | Balance unchanged; processing 50000 | Automated | Passed |
| TC-004 | Flutter | V08/V09 pending vs confirmed | Copy and navigation | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 29/29 including P11 HMAC/ack/capture |
| `make -f files/Makefile generate-api` | Pass | OpenAPI v0.11.0 |
| Vendor `flutter analyze` / `flutter test` | Pass | 17/17 |
| Store Manager / Diagnostics analyze/test | Pass | 20/20 and 14/14 |
| `cd react/admin && npm run check` | Pass | 16/16 Vitest; 2/2 Chromium |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK | Injectable Dart checkout adapter; no native plugin | P15 | Not run |
| Live Razorpay | No production credentials; HMAC stub matches provider algorithm | After authorized live-provider work | Not run |

## Files changed

- `backend/src/services/recharge.service.js`, `razorpay.adapter.js`, `wallet-recharge` model/repository, webhook on raw body in `app.js`
- `backend/openapi/openapi.json` v0.11.0
- Vendor V08/V09, `RazorpayCheckoutAdapter`, wallet repository recharge methods

## Risks and follow-ups

- Continue automatically to P12 after this task records completion.

## Completion

- Completed date: 2026-09-14
- Final result: Webhook HMAC is authoritative; client acknowledge never credits; capture credits once.
- Next task: TASK-014 — P12 auction lifecycle (M10, A20)

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Conditional files reviewed: decisions Updated; design.md/html Not applicable (V08/V09 already specified); testing Updated; backend plan Updated.
- [x] Continue to P12 within the P11–P15 range.

## Security acceptance

- [x] Webhook HMAC on raw body; unique order/payment IDs; client callback is not authoritative.
