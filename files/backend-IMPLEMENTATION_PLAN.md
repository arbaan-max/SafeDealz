# Backend implementation plan entry

The canonical roadmap is [plan.md](plan.md), with detailed phases in [phases.md](phases.md). Begin with [start.md](start.md) and follow [guides/backend-CLAUDE.md](guides/backend-CLAUDE.md).

Completed: [TASK-001 — Flutter/backend bootstrap](tasks/TASK-001-architecture-readiness.md). The health API, canonical /api-docs/swagger.json route, layered skeleton and tests pass.

Completed: [TASK-002 — P01 React admin foundation](tasks/TASK-002-react-admin-foundation.md). Persistence-only audit and outbox foundations now use the existing ESM/Mongoose structure. Replica-set tests prove atomic commit, rollback and unique outbox idempotency. No product routes, authentication, or delivery workers were added. No backend task is active; P02 waits for explicit authorization.

Completed: [TASK-003 — P02 role authentication](tasks/TASK-003-role-authentication.md). The OpenAPI-first account/session/throttle models and authentication layers implement login, refresh, logout and current-session behavior with P02 security tests.

Completed: [TASK-004](tasks/TASK-004-admin-store-assignments.md). P03 Super Admin/Admin store assignments remain complete.

Completed: [TASK-005](tasks/TASK-005-store-manager-onboarding.md). P04 Store Manager onboarding remains complete.

Completed: [TASK-006 — P05 Vendor onboarding](tasks/TASK-006-vendor-onboarding.md). Vendor APIs, scoped linking, React A08/A09 and Vendor V15 pass.

Completed: [TASK-007 — P06 Device identity](tasks/TASK-007-device-identity.md). Device identity APIs, OpenAPI v0.6.0 and Store Manager M01–M03 pass.

Completed: [TASK-008 — P07 Manual inspection and evidence](tasks/TASK-008-inspection-evidence.md). Inspection/media APIs, OpenAPI v0.7.0 and Store Manager M04–M06 pass. Diagnostic QR remains a later-phase draft. Live R2 tests wait for the authorized range regression.

Completed: [TASK-009 — P08 Android Diagnostics](tasks/TASK-009-android-diagnostics.md). Local D01–D07 tests stay on the phone.

Completed: [TASK-010 — Trade-in catalog](tasks/TASK-010-trade-in-catalog.md). Public `GET /catalog` from a backend code module.

Completed: [TASK-011 — P09 Diagnostic QR handoff](tasks/TASK-011-diagnostic-qr-handoff.md). Signed import, D08/M07/M09 and OpenAPI v0.9.0 pass.

Completed: [TASK-013 — P11 Wallet recharge](tasks/TASK-013-wallet-recharge.md). Stub Razorpay orders, raw-body HMAC webhooks, processingPaise and OpenAPI v0.11.0 pass.

Completed: [TASK-015 — P13 Vendor bidding](tasks/TASK-015-vendor-bidding.md). Fee-inclusive holds, one bid per round and OpenAPI v0.13.0 pass.

Completed: [TASK-016 — P14 Offer decision](tasks/TASK-016-offer-decision.md). Winner selection, decline/rebid/expiry and OpenAPI v0.14.0 pass.

Completed: [TASK-017 — P15 Acceptance and KYC](tasks/TASK-017-acceptance-kyc.md). Accept commits funds, KYC gates transfer and OpenAPI v0.15.0 pass.

Completed: [TASK-018 — P16 Payout and reconciliation](tasks/TASK-018-payout-reconciliation.md). Stub HMAC payout, M13/A12/A13 and OpenAPI v0.16.0 pass.

Completed: [TASK-019 — P17 Deal history and pickup](tasks/TASK-019-deal-pickup.md). Originating-store pickup, vendor deal read without KYC and OpenAPI v0.17.0 pass.

Completed: [TASK-020 — P18 Reward issuance](tasks/TASK-020-reward-issuance.md). Paid-deal branch rewards, A15/A16/A17 and OpenAPI v0.18.0 pass.

Completed: [TASK-021 — P19 Reward redemption](tasks/TASK-021-reward-redemption.md). Bound OTP debit, M18–M22 and OpenAPI v0.19.0 pass.

Completed: [TASK-022 — P20 Notifications](tasks/TASK-022-notifications.md). Role inboxes, admin broadcasts and OpenAPI v0.20.0 pass.

No backend task is active. Stop after P20; do not start P21.

Completed: [TASK-014 — P12 Auction lifecycle](tasks/TASK-014-auction-lifecycle.md). Server-timed rounds, tick close and OpenAPI v0.12.0 pass.

Confirmed future integrations: P07 adds a backend-owned Cloudflare R2 adapter for private evidence media and short-lived authorized signed operations. P11 added backend-created Razorpay recharge orders, signature-verified webhooks, reconciliation and idempotent wallet credits. Provider secrets are environment-only and neither client callbacks nor public object URLs are authoritative.

Before a backend feature, point this file to its numbered task containing the concrete implementation plan, contracts, tests and approval state. Keep detailed requirements in that canonical task rather than duplicating them here. Update this pointer on task changes and record outcomes in [implementation.md](implementation.md).
