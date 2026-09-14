# SAFEDEALZ DECISION LOG

Record confirmed decisions that affect future phases or multiple tasks. Do not copy the complete screen specification here; link to [design.md](design.md).

| ID | Date | Decision | Status | Affected areas |
| --- | --- | --- | --- | --- |
| DEC-001 | 2026-09-13 | [design.md](design.md) is authoritative for behavior and [design.html](design.html) is the visual reference. | Confirmed | All clients and backend |
| DEC-002 | 2026-09-13 | Store Manager and Vendor are mobile experiences; Super Admin is a web interface; Android Diagnostics is a separate device-testing experience. | Confirmed | Architecture and releases |
| DEC-003 | 2026-09-13 | API-backed Flutter work uses an OpenAPI contract and generated clients; generated files are not manually edited. | Confirmed | API and Flutter |
| DEC-004 | 2026-09-13 | Every implementation task must define and run applicable automated tests before completion. | Confirmed | All implementation |
| DEC-005 | 2026-09-13 | Diagnostics ends with a signed result QR. M07 scans it; neither app launches the other or uses a pairing/session code. | Confirmed | Store Manager, Diagnostics, API |

## New decision format

Add the next numbered row with the decision date, exact approved outcome, status, and affected areas. If a decision supersedes another entry, keep the old entry and state which ID replaces it.

## DEC-006 — Completion records after every implementation

Status: Confirmed by owner, 2026-09-13.

After every implementation, update the current task, implementation dashboard and phase progress. Update affected design, contract, testing and decision files as applicable, recording explicit Not applicable reasons for unchanged conditional documents. Verification and documentation synchronization are required before marking work complete. See [start.md](start.md).

## DEC-007 — Confirmed frameworks and development-only scope

Status: Confirmed by owner, 2026-09-13.

Store Manager, Vendor and Diagnostics are three Flutter applications. Diagnostics targets Android; native platform integrations may support hardware tests. Super Admin is a React web application, not Flutter. These choices supersede earlier TBD technology entries. All phases cover development and testing only; the final phase is development completion and handover, with no deployment, hosting or app-store publishing.

## DEC-010 — P00 bootstrap and generator compatibility

Status: Implemented and verified, 2026-09-13.

The three Flutter projects use the identifiers in [architecture.md](architecture.md). The backend follows Controller → Service → Repository → Model and exposes only the P00 health contract plus its canonical Swagger JSON document. backend/openapi/openapi.json is the canonical contract. The verified Flutter generator versions are pinned because the latest Freezed/parser combination failed analysis and Retrofit 4.9+ did not compile with retrofit_generator 9.7. The generator emits clients and DTOs; service wrappers are thin hand-written adapters and generated files are never edited.

## DEC-011 — Flutter API generation command and Dio foundation

Status: Implemented and verified, 2026-09-13.

Run `make -f files/Makefile generate-api` from the repository root after every OpenAPI change. It regenerates Retrofit/Dio clients and Freezed JSON models for all three Flutter apps. `make -f files/Makefile check-p00` adds Flutter analysis/tests and backend tests. Each app uses its own ApiConfig and DioFactory, while backend/openapi/openapi.json remains the only editable API contract. Authentication interceptors remain in P02.

## DEC-012 — Synchronized Flutter Swagger inputs and dependency baseline

Status: Implemented and verified, 2026-09-13.

The backend serves backend/openapi/openapi.json at /api-docs/swagger.json. `make -f files/Makefile generate-api` copies the canonical file to each app's swagger/swagger.json before running swagger_parser and build_runner. The three app pubspecs use the same tested dependency baseline. Retrofit remains a generated-client runtime dependency; endpoint methods and API DTOs are generated from Swagger rather than handwritten.

## DEC-013 — Four-folder repository layout

Status: Implemented and verified, 2026-09-13.

The repository root contains only backend, flutter, files and react. All Markdown documentation and agent instructions live under files. The canonical OpenAPI contract and generator belong to backend, all three mobile applications belong to flutter, and the future React administration application belongs to react/admin.

## DEC-014 — Portable Obsidian local memory

Status: Implemented and verified, 2026-09-13.

The Obsidian vault lives at files/obsidian. It resolves the project from the nearest parent containing backend, flutter, files and react and stores no machine-specific absolute project paths. Vault notes summarize current state and link to canonical records; they never override the latest user instruction, canonical documents, or tested code. Machine-specific Obsidian workspace state and secrets are excluded.

## DEC-015 — Single Git repository

Status: Implemented, 2026-09-13.

The complete SafeDealz folder is one Git repository connected to the arbaan-max/SafeDealz GitHub repository. Backend, all three Flutter applications, project files and Obsidian memory, and React admin are versioned together. Nested Git repositories are prohibited. Local environment files, dependencies, build output, IDE state, and machine-specific Obsidian workspace files are ignored.

## DEC-016 — Client-approved sky-blue theme

Status: Confirmed and implemented, 2026-09-13.

Sky blue is the final primary theme for Store Manager, Vendor, Diagnostics, Admin, and Super Admin. Use `#0369A1` for accessible primary actions and focus, white for content on that action color, `#38BDF8` for bright supporting highlights, `#E0F2FE` for selected surfaces, and `#F0F9FF` for the default application background. Purple is a restrained secondary accent. The prototype may retain a Purple comparison option, but it opens in Sky Blue and production clients implement Sky Blue as the primary theme. Every client owns one reusable page-surface component backed by the semantic background token; screens do not hardcode page backgrounds.

## DEC-008 — Security gates and inactive-session logout

Status: Confirmed by owner, 2026-09-13.

Security controls and tests belong in the phase implementing each API. Repeated-password guessing must be throttled. Refresh must check authoritative account status; inactive Store Manager/Vendor accounts receive no tokens and return to Login immediately on the inactive-session response. Protected API calls also enforce status. Detailed controls and configurable implementation defaults are in [security.md](security.md).

## DEC-009 — Four roles, assigned Admin scope and admin-first order

Status: Confirmed by owner, 2026-09-13.

Add Admin alongside Super Admin, Store Manager and Vendor. Only Super Admin creates Admins and assigns their stores; all Admin UI/API visibility is limited to assigned stores. Use three Flutter projects with Tekrio/SafeDealz identifiers and React for both administrative roles. P00 bootstraps Flutter then backend; prioritize React and administrative APIs before mobile feature flows; defer Diagnostics functionality until intake requires it. Details and conservative permissions are in [architecture.md](architecture.md). The roadmap expands from 24 to 26 phases by separating manager and vendor onboarding. Earlier phase references in historical entries retain their historical meaning.

Guide conflict resolution: the owner's explicit refresh/security requirements supersede the Flutter guide's no-refresh example. Secure storage/key-management implementation needs a concrete design before session code; no protected infrastructure was modified.

## DEC-017 — Automatic phase stops and explicit range authorization

Status: Confirmed by owner, 2026-09-14.

A command for one phase authorizes only that phase and ends with an automatic stop after implementation, required verification, and record synchronization. An explicitly stated inclusive phase range authorizes continuous work through its final phase, then stops. A command for named tasks or steps stops after that scope. Broad repeated verification may be deferred to the final authorized phase only when [testing.md](testing.md) says it is safe; required feature, contract, dependency, integration, and security gates remain in the phase that introduces the behavior.

## DEC-018 — React administration and event persistence foundation

Status: Implemented and verified, 2026-09-14.

The administration web client uses React with TypeScript and Vite, React Router for routing, TanStack Query for server-state orchestration, semantic CSS tokens, and a reusable `PageSurface`. Vitest, Testing Library and axe cover components; Playwright covers browser behavior. Permission helpers are UI boundaries only and backend authorization remains authoritative. The backend provides creation-only audit and outbox repositories backed by Mongoose, with transaction and idempotency tests. Authentication and event publication remain later-phase work.

## DEC-019 — Authentication session and client storage model

Status: Implemented and verified, 2026-09-14.

Passwords use Argon2id. Access tokens are short-lived signed JWTs with fixed issuer, audience and algorithm; refresh tokens are opaque secrets stored server-side only as SHA-256 digests in a revocable session family. Every login, refresh and protected request checks the authoritative account and session. Web refresh uses an HttpOnly SameSite cookie plus CSRF token; React keeps access tokens only in memory. Store Manager and Vendor use platform secure storage. Clients permit one refresh in flight and retry a protected request at most once. `ACCOUNT_INACTIVE` and refresh replay clear local credentials and reset mobile navigation to Login. Login audiences are `admin_portal` for Super Admin/Admin, `store_manager`, and `vendor`, preserving email/password-only screens.

## DEC-020 — Cloudflare R2 storage and Razorpay wallet recharge

Status: Confirmed by owner, 2026-09-14.

Cloudflare R2 is the private object store for device evidence, videos, bills and later KYC media. P07 introduces the reusable backend storage adapter and signed media flow; later media phases reuse it. R2 credentials remain backend-only, objects are private, and every signed upload/download requires record and scope authorization.

Razorpay is the vendor wallet recharge gateway. P11 implements backend-created Razorpay Orders, Flutter Checkout, signature-verified webhooks, idempotent wallet credit and reconciliation. The wallet is never credited from a client success callback. Razorpay recharge does not by itself decide the separate store-payout rail planned in P16.

## DEC-021 — Authorized P03–P10 range and provider live tests

Status: Confirmed by owner, 2026-09-14.

Implement P03 through P10 inclusive, then run a separate P00–P10 regression. Live Cloudflare R2 and Razorpay tests wait until after that range. Razorpay checkout remains a P11 feature. After every completed phase, update the task file, implementation.md, plan.md, phases.md and Obsidian current-state/session log before starting the next phase in the range.

Owner follow-up on 2026-09-14: complete P03 and stop. P04 is not authorized by that instruction.

Owner follow-up on 2026-09-14: start P04, complete it, update recommended records, and stop. P05 is not authorized by that instruction.

Owner follow-up on 2026-09-14: start P05. That command authorizes P05 only; stop after P05 and do not start P06.

Owner follow-up on 2026-09-14: start P06. That command authorizes P06 only; stop after P06 and do not start P07.

Owner follow-up on 2026-09-14: start P07. That command authorizes P07 only; stop after P07 and do not start P08.

Owner follow-up on 2026-09-14: start P08. That command authorizes P08 only; stop after P08 and do not start P09.

Owner follow-up on 2026-09-14: start P09 and complete it. That command authorizes P09 only; stop after P09 and do not start P10.

Owner follow-up on 2026-09-14: start P10. That command authorizes P10 only; stop after P10 and do not start P11.

## DEC-022 — Authorized P11–P15 range

Status: Confirmed by owner, 2026-09-14.

Implement P11 through P15 inclusive. After every completed phase, update the recommended Markdown files and continue automatically. Stop after P15. P16 payout/provider transfer is not authorized. Android APK builds deferred from P11 remain due at P15 when no native plugin is added. Live Razorpay stays stubbed (HMAC/order stub). Client checkout never credits the wallet.

Owner follow-up on 2026-09-14: P15 product tests passed. Parallel `flutter build apk --debug` jobs stalled in Gradle and were aborted. Those deferred APKs remain due at the end of the next authorized range.

## DEC-023 — Authorized P16–P20 range

Status: Confirmed by owner, 2026-09-14.

Implement P16 through P20 inclusive. After every completed phase, run the phase tests, update the recommended Markdown files, and continue automatically. Stop after P20. P21 is not authorized. Android debug APKs deferred from P11–P15 must run before completing P20 when no native plugin is added. Payout provider stays stubbed with HMAC webhooks; unknown outcomes must be reconciled before retry.

## DEC-024 — Authorized P21–P24 range

Status: Confirmed by owner, 2026-09-14.

Implement P21 through P24 inclusive. After every completed phase, run the phase tests, update the recommended Markdown files, and continue automatically. Stop after P24. Visual HTML match and handover were later numbered P25–P29 (DEC-025). Android debug APKs may be deferred to P24 when no native plugin, platform configuration, or application-id change is added. Live SMS, live payout, and production hosting stay out of scope.

## DEC-025 — HTML visual-match phases before handover

Status: Confirmed by owner, 2026-09-14.

Insert four visual-match phases after P24 and move development handover to the last number. Compare each live screen to [design.html](design.html); mark it **Same** in [screen-match.md](screen-match.md) when it matches, otherwise restyle it to the HTML and mark **Updated**. Order is Admin (P25), Store Manager (P26), Vendor (P27), Diagnostics (P28). Former P25 handover is now P29. Owner later authorized P25, then P26. P25 and P26 are complete. Do not start P27 until the owner explicitly authorizes it. No hosting, store publishing, live SMS, or live payout.
