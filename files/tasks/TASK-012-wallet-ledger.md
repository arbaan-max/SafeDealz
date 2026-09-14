# TASK-012 — Vendor wallet ledger (V07, V10, V11, A14)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P10 |
| Status | Done |
| Areas | Backend / MongoDB / Flutter / Vendor / Admin web / Integration |
| Design screens | V07, V10, V11, A14 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase |
| Start | P10 |
| Automatic stop after | P10 |
| May continue across intermediate phases | No |

## Goal

Give each vendor one personal wallet with an immutable paise ledger, available/reserved/processing amounts, concurrent reservation safety, and Super Admin visibility. Admin never sees global balances.

## Included

- Atomic credits, reservations and releases with unique idempotency keys.
- GET wallet (me / by vendor) with ledger and held reservations.
- Vendor V07/V10/V11. React A14 from A08.
- Super Admin seed credits for development. Razorpay recharge stays P11.

## Excluded

- Razorpay checkout, webhooks, client-side credit (P11).
- Bid placement that consumes holds (P13).
- Native plugin / APK rebuild.

## Existing files and patterns to reuse

- `wallet.service.js`, ledger/reservation models, AppPageScaffold, React ResourcePage, generated OperationsClient.

## Changes required

### API contract

- OpenAPI v0.10.0 wallet read/credit/reserve/release.

### Backend and MongoDB

- Transactional ledger moves; unique idempotency; vendor ownership; Admin hides amounts.

### Flutter, web, or Diagnostics

- Vendor wallet screens from generated client. A14 ledger for Super Admin; Admin restricted view.

## Acceptance criteria

- [x] Concurrent reservations cannot overspend.
- [x] Duplicate release cannot credit twice.
- [x] Wallet balances reconcile to the last ledger snapshot.
- [x] Vendor cannot read or mutate another vendor’s wallet.
- [x] Admin cannot see paise; Super Admin can.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Parallel holds of full balance | 201 and 409 | Automated | Pass |
| TC-002 | API | Release then replay | replayed true; available restored once | Automated | Pass |
| TC-003 | API | Other vendor / Admin | 403 or hidden amounts | Automated | Pass |
| TC-004 | Flutter | V07 amounts and V11 holds | Copy and rupee formatting | Automated | Pass |
| TC-005 | Flutter | Generated GET /wallets/me | Deserializes ledger | Automated | Pass |
| TC-006 | React | A14 Super Admin ledger; Admin hidden | Amounts vs Hidden | Automated | Pass |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `make -f files/Makefile generate-api` | Pass | OpenAPI v0.10.0 |
| React `npm run check` | Pass | 16/16 Vitest; 2/2 Chromium after Playwright browser install |
| Flutter analyze + test | Pass | Store Manager 20/20, Vendor 13/13, Diagnostics 14/14 |
| Backend `npm test` | Pass | 28/28 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK | No native plugin or application-id change | Next native-config phase | Not run |

## Files changed

- `backend/openapi/openapi.json`, `backend/src/services/wallet.service.js`, `backend/src/controllers/wallet.controller.js`, `backend/src/repositories/wallet.repository.js`, `backend/src/utils/presenters.js`, `backend/test/product-p03-p10.test.js`
- Vendor: wallet repository and V07/V10/V11, generated OperationsClient
- React: `VendorWalletPage.tsx` A14, A08 wallet link, organization API
- `files/Makefile` `check-p10`

## Risks and follow-ups

- Next authorized work is P11 only after an explicit owner command. Add money is visible and disabled until Razorpay.

## Completion

- Completed date: 2026-09-14
- Final result: P10 personal wallet ledger, reservations and admin visibility pass gates; stop after P10.
- Next task: Wait for the owner to authorize P11.

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Conditional files reviewed.
- [x] Stop after P10.

| File | Result |
| --- | --- |
| implementation.md, plan.md, phases.md | Updated |
| decisions.md | Updated: P10 authorized and stopped |
| design.md / design.html | Not applicable — V07/V10/V11/A14 already specified |
| testing.md | Updated `check-p10` |
| backend-IMPLEMENTATION_PLAN.md | Updated |
| Obsidian Current State and Session Log | Updated |
| Setup/deployment | Not applicable |

## Security acceptance

- [x] Integer paise, server-calculated balances, idempotency, concurrency and ownership tests pass. No client-trusted credit.
