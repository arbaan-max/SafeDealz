# SAFEDEALZ PROJECT PLAN

This file owns project scope, architecture-level decisions, release boundaries, and phase status. Detailed coding work belongs in [implementation.md](implementation.md) and [tasks/](tasks/).

## Planning status

| Item | Status |
| --- | --- |
| Documentation workflow | Ready |
| Product design specification | Available in [design.md](design.md) |
| Interactive design reference | Available in [design.html](design.html) |
| Phase breakdown | Prepared — see [phases.md](phases.md) |
| Product implementation | P00–P28 complete. P29 handover is planned and not authorized. |

## Project setup

| Item | Decision |
| --- | --- |
| Project name | SafeDealz |
| Purpose | Multi-store mobile-device trade-in, vendor auction, payment, pickup, rewards, diagnostics, and administration platform |
| Project state | New implementation based on the approved design specification and prototype |
| Flutter location | `../flutter/` |
| Backend location | `../backend/` |
| Store Manager client | Flutter mobile app |
| Vendor client | Flutter mobile app |
| Diagnostics client | Flutter app targeting Android; native bridges where needed |
| Super Admin client | React web interface (not Flutter) |
| Backend | Node.js, Express.js, MongoDB, and Mongoose |
| API contract | OpenAPI/Swagger contract required before API-client generation |
| Development completion goal | Complete approved scope through P29; development acceptance follows the test gates; deployment excluded |
| Coding authorization | Inclusive range P26–P28 is complete. Stop. P29 is not authorized. |

## Product roles

| Role | Primary scope | Key restrictions |
| --- | --- | --- |
| Store Manager | Device intake, manual inspection, evidence, result-QR scan, auction decision, customer verification, pickup, rewards | Operates assigned branch; customer verification follows accepted offer |
| Vendor | Assigned auctions, one immutable bid per round, wallet, purchase and pickup visibility | Cannot bid above available wallet commitment; no customer KYC access |
| Admin | Assigned-store administration through React | Only assigned stores and allowed actions; cannot create Admins or change own scope |
| Super Admin | Admin creation/assignment, chains, branches, managers, vendors, assignments, wallets, auctions, payments, rewards, support, notifications, settings, audit | Administrative actions must be authorized and auditable |
| Diagnostics user (not an account role) | Runs Android device tests and displays the signed result QR | No manager/vendor login, wallet, auction controls, customer data, or store-side scanner |

The complete role permissions and screen behavior are defined in [design.md](design.md).

## Major capability groups

| Capability | Design status | Implementation status |
| --- | --- | --- |
| Authentication and account status enforcement | Defined | Complete — TASK-003 |
| Chain, branch, manager, and vendor administration | Defined | Chain/branch/Admin assignments, Store Manager and Vendor onboarding complete — TASK-004/TASK-005/TASK-006 |
| Store Manager device intake and evidence | Defined | Complete — TASK-007/TASK-008 |
| Manual condition inspection | Defined | Complete — TASK-008 |
| Android Diagnostics and signed result-QR import | Defined | Local D01–D08 and M07 import complete — TASK-009/TASK-011 |
| Vendor assignment, auction, and immutable bidding | Defined | Not started |
| Wallet reservation, fees, release, and recharge | Defined | Not started |
| Offer acceptance, customer verification, and payout | Defined | Not started |
| Pickup completion | Defined | Complete — TASK-019 |
| Customer rewards and redemption | Defined | Complete — TASK-020/TASK-021 |
| Notifications and support | Defined | Notifications complete — TASK-022; support complete — TASK-023 |
| Reports, settings, and audit history | Defined | Complete — TASK-014 settings; TASK-024 reports/audit/overview |

## Architecture status and later decisions

- Resolved in P00: three independent Flutter projects and the layered backend structure.
- Resolved in P00: canonical OpenAPI location and repeatable client-generation workflow.
- Resolved in P00: four top-level folders only—backend, flutter, files and react—with all project Markdown centralized in files and the admin client located at react/admin.
- Resolved in P00: portable local memory under files/obsidian, using only SafeDealz-relative project paths and linking all four top-level areas.
- P01: finalize compatible React libraries inside the confirmed feature-based structure.
- Flutter Diagnostics hardware integrations and supported Android versions; Flutter is confirmed.
- Authentication and refresh-token implementation.
- Background jobs, realtime auction transport, notifications, SMS, and OTP providers. Cloudflare R2 is confirmed for private object storage in P07 and Razorpay is confirmed for vendor wallet recharge in P11; exact SDK/API versions and production credentials are selected during those phases.
- MongoDB collection ownership, indexes, retention, and audit strategy.
- Local/test environments, build/test CI and development secrets management; no deployment scope.

## Execution authorization

- One requested phase is one authorization unit and ends with an automatic stop.
- An explicitly requested inclusive phase range may proceed continuously through its final phase and then stops.
- Named tasks or steps stop when that exact scope is complete.
- Verification may be scheduled across an authorized range only as allowed by [testing.md](testing.md); phase-specific tests, security gates, dependency checks, and contract validation are never skipped.

## Phase plan

The detailed roadmap is in [phases.md](phases.md). P00–P25 are complete. Update this table after every task, including when the phase remains In progress. Do not mark a phase complete until its clients, contract and tests pass.

| Phase | Goal | Status | Latest completed task |
| --- | --- | --- | --- |
| P00 | Flutter projects and backend bootstrap | Complete | TASK-001 |
| P01 | React admin foundation and shared test tooling | Complete | TASK-002 |
| P02 | Role authentication APIs and React login | Complete | TASK-003 |
| P03 | Super Admin, Admin and assigned stores | Complete | TASK-004 |
| P04 | Store Manager onboarding APIs and React pages | Complete | TASK-005 |
| P05 | Vendor onboarding APIs and React pages | Complete | TASK-006 |
| P06 | Device identity | Complete | TASK-007 |
| P07 | Manual inspection and evidence | Complete | TASK-008 |
| P08 | Android diagnostic tests | Complete | TASK-009; TASK-010 catalog addendum |
| P09 | Diagnostic QR handoff | Complete | TASK-011 |
| P10 | Wallet ledger | Complete | TASK-012 |
| P11 | Wallet recharge | Complete | TASK-013 |
| P12 | Auction lifecycle and settings | Complete | TASK-014 |
| P13 | Vendor bidding and fee holds | Complete | TASK-015 |
| P14 | Offer decision and re-auction | Complete | TASK-016 |
| P15 | Acceptance and customer verification | Complete | TASK-017 |
| P16 | Payout and reconciliation | Complete | TASK-018 |
| P17 | Deal history and pickup | Complete | TASK-019 |
| P18 | Reward issuance and policy | Complete | TASK-020 |
| P19 | Reward redemption | Complete | TASK-021 |
| P20 | Notifications and broadcasts | Complete | TASK-022 |
| P21 | Support management | Complete | TASK-023 |
| P22 | Admin oversight and reporting | Complete | TASK-024 |
| P23 | Cross-app experience verification | Complete | TASK-025 |
| P24 | End-to-end and resilience | Complete | TASK-026 |
| P25 | Admin HTML visual match | Complete | TASK-027 |
| P26 | Store Manager HTML visual match | Complete | TASK-028 |
| P27 | Vendor HTML visual match | Complete | TASK-029 |
| P28 | Diagnostics HTML visual match | Complete | TASK-030 |
| P29 | Development completion and handover | Planned | None |

Next: P28 is complete. Stop. Development handover (P29) is not authorized.

## Confirmed technology and scope

Store Manager, Vendor and Diagnostics are three Flutter apps. Super Admin is React web. The roadmap covers development, automated/manual testing, local demos and development handover only. Deployment, hosting and app-store publication are excluded. Framework selection must not be reopened in P00.

## Mandatory security checks

Read [security.md](security.md) before implementing APIs or authentication clients. Apply its phase-specific controls and automated negative tests during each feature. Inactive accounts must fail refresh and protected API calls; Store Manager and Vendor clear their sessions and return to Login on ACCOUNT_INACTIVE without a retry loop.

## Admin-first execution and application identity

Follow [architecture.md](architecture.md) for the Tekrio app IDs, Flutter/backend guide integration, React structure and four-role access model. P00 created the three Flutter projects and backend foundation. P01 scaffolds React; P02–P05 build authentication, Admin/store assignments, managers and vendors with APIs and React pages together. Diagnostics functionality starts in P08 when intake requires it.
