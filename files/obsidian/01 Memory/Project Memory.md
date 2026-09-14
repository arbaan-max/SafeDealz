---
title: Project Memory
tags:
  - safedealz
  - memory/durable
---

# Project memory

## Product

SafeDealz is a device trade-in auction platform with Store Manager, Vendor, Diagnostics, Admin, and Super Admin experiences. Store Manager, Vendor, and Diagnostics are Flutter applications. Admin and Super Admin use the React web application.

## Durable technical rules

- Backend: Node.js, Express, MongoDB, and Mongoose.
- Flutter API clients and DTOs are generated from the canonical OpenAPI contract.
- React administration code belongs under `react/admin`.
- All project Markdown documentation belongs under `files`.
- Security controls are implemented and tested in the phase that introduces each API.
- Refresh checks authoritative account status. Inactive manager and vendor accounts are logged out without a retry loop.
- Every implementation updates its task, implementation status, phase status, tests, and applicable contracts or design files.
- The entire SafeDealz folder is one Git repository; do not initialize separate repositories inside backend, Flutter apps, files, or React admin.
- Sky blue is the final client-approved primary theme. Purple is secondary and must not regain primary-action ownership.
- Page backgrounds come from one semantic token and reusable page-surface component per client. Future color changes must not require individual screen edits.
- Every completed phase is an automatic stop boundary. Continue across phases only when the owner explicitly names an inclusive range, and stop after its final phase.
- Broad repeat builds may move to the final phase of an authorized range only when safe; required phase tests and security gates stay with the behavior they validate.
- React admin uses TypeScript/Vite, React Router, TanStack Query, semantic tokens and PageSurface. Backend authorization remains authoritative over UI permission helpers.
- Audit/outbox persistence uses creation-only repositories, Mongo transactions and a unique outbox idempotency key.
- Authentication uses Argon2id, fixed-claim short access JWTs, digest-only opaque rotating refresh tokens and authoritative account/session checks.
- React uses an HttpOnly refresh cookie with CSRF and memory-only access token. Store Manager/Vendor use platform secure storage and terminally reset to Login on inactive/replayed sessions.
- Cloudflare R2 is the private object store for evidence, bills and KYC media; P07 introduces the backend-authorized signed-media adapter.
- Razorpay is the vendor wallet recharge gateway; P11 credits the ledger only from verified, idempotently processed backend payment evidence.

## Canonical references

- [Architecture](../../architecture.md)
- [Decisions](../../decisions.md)
- [Design](../../design.md)
- [Security](../../security.md)
- [Testing](../../testing.md)

Keep this note concise. Add durable context only when it helps a future session resume accurately.
