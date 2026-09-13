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

## Canonical references

- [Architecture](../../architecture.md)
- [Decisions](../../decisions.md)
- [Design](../../design.md)
- [Security](../../security.md)
- [Testing](../../testing.md)

Keep this note concise. Add durable context only when it helps a future session resume accurately.
