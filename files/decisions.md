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

## DEC-008 — Security gates and inactive-session logout

Status: Confirmed by owner, 2026-09-13.

Security controls and tests belong in the phase implementing each API. Repeated-password guessing must be throttled. Refresh must check authoritative account status; inactive Store Manager/Vendor accounts receive no tokens and return to Login immediately on the inactive-session response. Protected API calls also enforce status. Detailed controls and configurable implementation defaults are in [security.md](security.md).

## DEC-009 — Four roles, assigned Admin scope and admin-first order

Status: Confirmed by owner, 2026-09-13.

Add Admin alongside Super Admin, Store Manager and Vendor. Only Super Admin creates Admins and assigns their stores; all Admin UI/API visibility is limited to assigned stores. Use three Flutter projects with Tekrio/SafeDealz identifiers and React for both administrative roles. P00 bootstraps Flutter then backend; prioritize React and administrative APIs before mobile feature flows; defer Diagnostics functionality until intake requires it. Details and conservative permissions are in [architecture.md](architecture.md). The roadmap expands from 24 to 26 phases by separating manager and vendor onboarding. Earlier phase references in historical entries retain their historical meaning.

Guide conflict resolution: the owner's explicit refresh/security requirements supersede the Flutter guide's no-refresh example. Secure storage/key-management implementation needs a concrete design before session code; no protected infrastructure was modified.
