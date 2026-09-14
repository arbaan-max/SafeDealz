# Backend implementation plan entry

The canonical roadmap is [plan.md](plan.md), with detailed phases in [phases.md](phases.md). Begin with [start.md](start.md) and follow [guides/backend-CLAUDE.md](guides/backend-CLAUDE.md).

Completed: [TASK-001 — Flutter/backend bootstrap](tasks/TASK-001-architecture-readiness.md). The health API, canonical /api-docs/swagger.json route, layered skeleton and tests pass.

Completed: [TASK-002 — P01 React admin foundation](tasks/TASK-002-react-admin-foundation.md). Persistence-only audit and outbox foundations now use the existing ESM/Mongoose structure. Replica-set tests prove atomic commit, rollback and unique outbox idempotency. No product routes, authentication, or delivery workers were added. No backend task is active; P02 waits for explicit authorization.

Completed: [TASK-003 — P02 role authentication](tasks/TASK-003-role-authentication.md). The OpenAPI-first account/session/throttle models and authentication layers implement login, refresh, logout and current-session behavior with P02 security tests.

Active: none. P03 is complete in [TASK-004](tasks/TASK-004-admin-store-assignments.md). Wait for P04 authorization. Manager/vendor/device/wallet draft routes in the backend are not an authorized phase.

Confirmed future integrations: P07 adds a backend-owned Cloudflare R2 adapter for private evidence media and short-lived authorized signed operations. P11 adds backend-created Razorpay recharge orders, signature-verified webhooks, reconciliation and idempotent wallet credits. Provider secrets are environment-only and neither client callbacks nor public object URLs are authoritative.

Before a backend feature, point this file to its numbered task containing the concrete implementation plan, contracts, tests and approval state. Keep detailed requirements in that canonical task rather than duplicating them here. Update this pointer on task changes and record outcomes in [implementation.md](implementation.md).
