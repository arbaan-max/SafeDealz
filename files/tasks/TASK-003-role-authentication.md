# TASK-003 — P02 role authentication and login clients

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P02 |
| Status | Complete |
| Areas | Backend / MongoDB / React / Flutter / OpenAPI / Security |
| Design screens | S01, A00, M24, V17 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase P02 |
| Start | P02 |
| Automatic stop after | P02 |
| May continue across intermediate phases | No |

## Goal

Implement secure four-role email/password authentication, rotating sessions and active-account enforcement; add the React administrative login and Store Manager/Vendor Flutter login/session behavior against the generated contract.

## Included

- Account/session/login-throttle persistence and login, refresh, logout and current-session APIs.
- Argon2id hashing, generic credential errors, account/IP cooldowns, signed access tokens, opaque refresh rotation/reuse revocation and authoritative active checks.
- HttpOnly web refresh cookie plus CSRF protection; mobile refresh tokens returned for secure storage.
- React A00 login, protected routing, terminal inactive logout and bounded single-flight refresh.
- Store Manager/Vendor S01 login, secure storage, generated-client service/repository/BLoC, role enforcement and terminal inactive navigation reset.
- OpenAPI generation, API/security/client/widget/browser tests and P02 development gate.

## Excluded

- Signup, forgot password, password change, account CRUD, Admin assignments and realtime revocation delivery. Account seeds are test-only until P03–P05 onboarding.

## Acceptance criteria

- [x] Four roles authenticate through one endpoint and wrong client audience is denied generically.
- [x] Account and IP throttling, unknown identifiers and parallel attempts are tested.
- [x] Refresh rotates atomically; replay revokes the family; malformed/expired/revoked tokens mint nothing.
- [x] Login, refresh and protected current-session checks reject inactive accounts with `ACCOUNT_INACTIVE`.
- [x] Web refresh uses HttpOnly cookie and CSRF; mobile credentials use platform secure storage.
- [x] React and Flutter login screens have email/password/Login and trailing eye only, with terminal logout and bounded refresh.
- [x] OpenAPI-generated Flutter clients are used through services/repositories and all security/client tests pass.

## Tests

| ID | Layer | Scenario | Expected result | Result |
| --- | --- | --- | --- | --- |
| TC-301 | API | Valid/invalid/wrong-role login | Session only for valid matching account | Passed |
| TC-302 | Security | Account/IP repeated and parallel attempts | 429 with Retry-After; no password loop | Passed |
| TC-303 | Security | Refresh rotation and replay | One rotation; replay revokes family | Passed |
| TC-304 | Security | Account deactivated after login | Refresh and protected API return ACCOUNT_INACTIVE | Passed |
| TC-305 | React | Login visibility/error/inactive and refresh retry | Exact controls; terminal errors clear session once | Passed |
| TC-306 | Flutter | Login role/session storage/inactive response | Correct audience; secure clear and Login reset | Passed |
| TC-307 | Contract | Generated clients call auth endpoints | Typed request/response and methods match spec | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `make -f files/Makefile check-p02` | Passed | Codegen, React, all Flutter analysis/tests, backend, audits and mobile APK builds |
| Backend tests | Passed | 19/19 including generic errors, client-channel enforcement, Mongo account/IP throttles, parallel attempts, refresh replay/concurrency, inactive accounts, CSRF and malformed tokens |
| React | Passed | ESLint, 10/10 Vitest tests, production build and 1/1 Chromium login/shell test |
| Flutter | Passed | Store Manager 4/4, Vendor 4/4, Diagnostics 3/3; all analyze with 0 issues |
| Android debug builds | Passed | Store Manager and Vendor APKs built after secure-storage plugin addition |
| Dependency audits | Passed | Backend and React report 0 vulnerabilities |
| `git diff --check` | Passed | No whitespace errors |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| None | Single-phase security work; all checks ran in P02 | P02 | Complete |

## Completion

- Completed date: 2026-09-14
- Final result: P02 complete; secure role authentication and login clients are ready for P03 account/store administration.
- Next task: P03 only after explicit owner instruction.

## Documentation synchronization

- [x] Task, implementation, plan, phases, decisions, testing, backend pointer and Obsidian memory updated.
- [x] OpenAPI and generated clients synchronized. Design/prototype required no change because the implemented controls match the approved S01/A00 behavior.
- [x] Stop boundary honored; P03 remains unstarted.

## Security acceptance

- [x] All implemented P02 controls and negative cases in `security.md` pass; realtime revocation transport remains scheduled with later realtime infrastructure.
- [x] No secret is logged, stored in plaintext/localStorage, or persisted in HydratedBloc.
- [x] Client refresh is single-flight, retries once, excludes auth endpoints and terminally logs out once.
