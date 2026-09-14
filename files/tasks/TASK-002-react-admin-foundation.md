# TASK-002 — P01 React admin foundation and shared test tooling

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P01 |
| Status | Complete |
| Areas | Admin web / Backend / MongoDB / Integration |
| Design screens | Shared foundation; no operational screen |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase P01 |
| Start | P01 |
| Automatic stop after | P01 |
| May continue across intermediate phases | No |

## Goal

Create a production-ready TypeScript React administration foundation, reusable sky-blue application shell, centralized API and permission boundaries, component/browser test tooling, transactional Mongo test support, audit/outbox persistence foundations, and one P01 verification command.

## Included

- React/Vite TypeScript application under `react/admin` using the approved feature-based organization.
- Semantic theme tokens and reusable `PageSurface` applied by the shared shell.
- Route metadata and role/permission guards for future Super Admin and Admin pages.
- Central API adapter with standardized success/error parsing; no authentication implementation.
- Unit/component/accessibility/browser smoke tests.
- Backend audit/outbox models and repositories plus a real replica-set transaction test.
- Root P01 check command and local CI workflow; no deployment.

## Excluded

- Login, sessions, refresh tokens, operational dashboards, CRUD pages, assignments, production audit writers, outbox workers, and product APIs. These begin in P02 and later phases.

## Existing files and patterns to reuse

- `files/architecture.md`, `files/security.md`, `files/testing.md`, backend ESM conventions, canonical OpenAPI generator, and the P00 Mongo replica-set helper.

## Acceptance criteria

- [x] React TypeScript app follows the approved feature structure and builds without errors.
- [x] Shared shell applies `--app-background` only through `PageSurface`; overriding the token updates the rendered surface.
- [x] Permission guard denies missing roles/permissions and supports Super Admin/Admin route metadata without pretending to enforce backend access.
- [x] Page components use the centralized API adapter instead of direct fetch calls.
- [x] Component tests include keyboard/accessibility checks and browser smoke tooling runs.
- [x] Mongo audit/outbox foundation persists atomically in a transaction and exposes required indexes.
- [x] Canonical OpenAPI generation remains reproducible and all three Flutter foundation tests pass.
- [x] One P01 command runs React, backend, Flutter, and contract checks.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-201 | React component | Render shared shell and override background token | All shell pages inherit the new token through PageSurface | Automated | Passed |
| TC-202 | React authorization | Role or permission is missing | Guard renders an accessible access-denied state | Automated | Passed |
| TC-203 | React API | Standard success/error envelopes | Adapter returns data or typed error without page-level fetch | Automated | Passed |
| TC-204 | Browser | Load responsive foundation route | Shell works at desktop, 375px portrait and 812×375 landscape/reduced-motion | Automated | Passed |
| TC-205 | Backend/Mongo | Write audit and outbox records in one transaction | Commit, rollback and unique idempotency verified | Automated | Passed |
| TC-206 | Contract/integration | Regenerate clients and run existing samples | No generator output changes; all existing tests pass | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `npm run check` in `react/admin` | Passed | ESLint; 7 Vitest tests; production build; 1 Chromium test |
| `npm audit --audit-level=high` in `react/admin` | Passed | 0 vulnerabilities |
| `npm test && npm audit --audit-level=high` in `backend` | Passed | 8 tests; 0 failures; 0 vulnerabilities |
| `make -f files/Makefile check-p01` | Passed | Codegen; React; all Flutter analyze/tests; backend 8/8 |
| `git diff --check` | Passed | No whitespace errors |
| Visual review | Passed | Sky theme, readable hierarchy, responsive layout and no fabricated totals |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| None | Single-phase authorization; all P01 checks ran now | P01 | Complete |

## Files changed

- `react/admin`: configuration, lockfile, app shell, providers/router, shared tokens/UI/auth/API utilities, tests and Playwright smoke test.
- `backend/src/models`, `backend/src/repositories` and `backend/test/audit-outbox-foundation.test.js`: transactional audit/outbox foundation.
- `.github/workflows/development-checks.yml` and `files/Makefile`: development checks with no deployment.
- Canonical task, plan, phase, implementation, testing, backend pointer, decision and Obsidian memory records.

## Risks and follow-ups

- Authentication/session behavior remains P02. Permission guards improve navigation UX but the backend remains authoritative.
- Audit/outbox foundations require feature services to write meaningful events in later phases.

## Completion

- Completed date: 2026-09-14
- Final result: P01 complete; React admin and shared development-test foundations are ready for P02.
- Next task: P02 only after explicit owner instruction.

## Mandatory documentation synchronization

- [x] Current task, implementation dashboard, plan, and phases updated.
- [x] Decisions and testing/backend-plan records updated. Design/prototype: not applicable; approved shared behavior is unchanged. OpenAPI: unchanged and clients regenerated with no output changes. Deployment: excluded.
- [x] Obsidian Current State and Session Log updated after canonical records.
- [x] Authorization boundary honored; P02 remains unstarted.

## Security acceptance

- [x] Route guards fail closed for absent role/permission and clearly state that server authorization remains authoritative.
- [x] API adapter does not store credentials or add token persistence.
- [x] Audit records are immutable through the repository surface; outbox idempotency key is uniquely indexed.
- [x] Dependency audits and negative tests pass before Done.
