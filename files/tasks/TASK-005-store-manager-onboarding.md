# TASK-005 — Store Manager onboarding APIs and React pages

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P04 |
| Status | Complete |
| Areas | Backend / MongoDB / Admin web / OpenAPI / Integration |
| Design screens | A06, A07 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase |
| Start | P04 |
| Automatic stop after | P04 |
| May continue across intermediate phases | No |

## Goal

Create and manage Store Manager accounts with a required branch assignment, active status, session revoke, and React A06/A07 so a manager created in admin can log into Flutter with only that branch in scope.

## Included

- OpenAPI `/managers` list/create/update with `branchId`, status, optional password and `revokeSessions`.
- Super Admin global manager management; Admin limited to assigned stores.
- Multiple manager logins per branch.
- React A06 list and A07 create/edit with Back to A06.
- Server-side tests for escalation, unassigned-store assignment, cross-store updates, and inactive/revoked sessions.
- Generated Flutter OrganizationClient manager operations and login-contract coverage.

## Excluded

- Vendor onboarding UI and vendor-global credential rules (P05).
- Store Manager production feature shell / device intake (P06).
- Android APK rebuilds (no native or application-id change).

## Existing files and patterns to reuse

- `createStaffAccount` / `updateStaffAccount` / `listStaff`, store assignments, auth login, React Admin/Chain pages, OrganizationClient generation.

## Changes required

### API contract

- Updated: `backend/openapi/openapi.json` v0.4.0 with `/managers` and `/managers/{id}`.

### Backend and MongoDB

- Manager list/create/update; `branchId` and `activeSessionCount`; session revoke on deactivation, password change, or `revokeSessions`.

### Flutter, web, or Diagnostics

- Generated OrganizationClient manager operations; React A06/A07; Admin and Super Admin Managers nav.

## Acceptance criteria

- [x] Super Admin and scoped Admin can create a manager on an authorized branch.
- [x] Admin cannot assign or update a manager on an unassigned store.
- [x] Store Manager cannot create managers or Admins.
- [x] Multiple managers can share one branch.
- [x] Created manager logs in with `store_manager` audience; `/auth/me` lists only the assigned branch.
- [x] Deactivation and session revoke reject subsequent login/refresh with no new tokens.
- [x] React A06/A07 exist with Back A07→A06.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Admin creates manager on assigned branch | 201 with that `branchId` | Automated | Passed |
| TC-002 | Authorization | Admin creates manager on unassigned branch | 403 STORE_SCOPE_DENIED | Automated | Passed |
| TC-003 | Authorization | Store Manager POSTs `/managers` or `/admins` | 403 | Automated | Passed |
| TC-004 | API | Two managers on one branch; mobile login | Both 201; login 200; me has one branch | Automated | Passed |
| TC-005 | Authorization | Admin patches out-of-scope manager or reassigns to other store | 403 STORE_SCOPE_DENIED | Automated | Passed |
| TC-006 | Security | Deactivate then login; revoke then refresh | ACCOUNT_INACTIVE; refresh 401 | Automated | Passed |
| TC-007 | React | Empty manager list | Empty state copy | Automated | Passed |
| TC-008 | Browser | Admin sees Managers nav and can open A06 | Heading Managers; Admins still hidden | Automated | Passed |
| TC-009 | Flutter client | GET `/managers` deserializes | `store_manager` role and branchId | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Passed 24/24 on 2026-09-14 | Includes dedicated P04 scope/login cases |
| `make -f files/Makefile generate-api` | Passed | OpenAPI v0.4.0; manager clients generated |
| `cd react/admin && npm run lint && npm run test && npm run build` | Passed | ESLint; 13/13 Vitest |
| `cd react/admin && npm run test:e2e` | Passed 2/2 Chromium | Overview Managers nav; Admin A06 empty state |
| Flutter analyze/test all apps | Passed | Store Manager 6/6, Vendor 6/6, Diagnostics 5/5 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK rebuilds | No native plugin, application-id or build-system change | Next phase that changes native config, or owner-authorized range end | Not run |

## Files changed

- OpenAPI v0.4.0, staff/organization services, session counts, P04 API tests.
- Generated Flutter manager DTOs/clients and listManagers deserialization tests.
- React A06/A07, organization API, AdminShell, Playwright Admin manager access.
- Task, implementation, plan, phases, testing, decisions, backend plan, Obsidian memory.

## Risks and follow-ups

- Vendor, device, media and wallet draft routes remain unauthorized later-phase drafts.
- Next authorized work is P05 only after an explicit owner command.

## Completion

- Completed date: 2026-09-14
- Final result: P04 complete. Super Admin and scoped Admin can onboard Store Managers; created managers log in on the mobile audience with a single assigned branch; inactive and revoked sessions cannot mint tokens.
- Next task: Wait for the owner to authorize P05.

## Mandatory documentation synchronization

- [x] Current task: actual files, criteria, status and next action updated.
- [x] implementation.md: task register, test evidence and next action updated.
- [x] plan.md and phases.md: phase progress and completed task IDs updated.
- [x] Conditional files: decisions Updated (P04 authorized and stopped); design.md + design.html Not applicable (A06/A07 already specified); OpenAPI Updated; testing Updated (`check-p04`); backend plan pointer Updated; setup/deployment Not applicable.
- [x] Authorization boundary honored; stopped after P04.

## Security acceptance

- [x] Scoped manager creation/status; forged/unassigned branch IDs denied; role escalation denied; inactive login and revoked refresh cannot mint tokens.
- [x] React Admin can open A06 and cannot open Admins.
