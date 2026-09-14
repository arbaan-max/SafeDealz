# TASK-004 — Super Admin, Admin and assigned stores

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P03 |
| Status | Complete |
| Areas | Backend / MongoDB / Admin web / OpenAPI / Integration |
| Design screens | A02, A03, A04, A05, A23, A24 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Named phase (overrides earlier P03–P10 range) |
| Start | P03 |
| Automatic stop after | P03 |
| May continue across intermediate phases | No |

## Goal

Deliver Super Admin chain/branch CRUD, Super Admin-only Admin accounts, explicit Admin-to-store assignments, and server-side store-scope isolation.

## Included

- Chain and branch APIs with Super Admin writes and scoped Admin reads.
- Super Admin Admin CRUD and assigned-branch replacement.
- OpenAPI v0.3.0, generated Flutter organization clients, React A01–A05/A23/A24.
- design.html A23/A24 and Super Admin-only assignment copy.
- Audit of account, assignment and bank changes; password re-auth for bank updates.
- Negative tests for privilege escalation, empty scope, cross-store IDs, and Admin UI denial.

## Excluded

- Store Manager and Vendor onboarding UI (P04/P05).
- Live Cloudflare R2 uploads and Razorpay checkout.
- Android APK rebuilds (no native or application-id change).

## Existing files and patterns to reuse

- Auth middleware, account/session models, audit repository, React AdminShell/RequireAccess, P02 test helpers.

## Changes required

### API contract

- Updated: `backend/openapi/openapi.json` v0.3.0 with `/chains`, `/branches`, `/admins`.

### Backend and MongoDB

- Chain, Branch, StoreAssignment models; organization service; scoped routes; isolation tests.

### Flutter, web, or Diagnostics

- Generated OrganizationClient in all three apps; React overview, chain, branch and Admin pages; Admins nav Super Admin only.

## Acceptance criteria

- [x] Super Admin can create a chain, branch and Admin with assigned stores.
- [x] Admin cannot create another Admin.
- [x] Admin lists only assigned branches; empty assignment returns no stores.
- [x] Direct IDs outside scope return `STORE_SCOPE_DENIED`.
- [x] OpenAPI contract matches the implemented P03 routes.
- [x] React A02–A05, A23 and A24 exist and follow the approved design.
- [x] design.html includes A23/A24 before those React screens were completed.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Super Admin creates Admin with one branch | 201 and assignedBranchIds contains that branch | Automated | Passed |
| TC-002 | API | Admin creates Admin | 403 FORBIDDEN | Automated | Passed |
| TC-003 | API | Admin lists branches | Only assigned branch returned | Automated | Passed |
| TC-004 | Authorization | Admin patches an unassigned branch | 403 STORE_SCOPE_DENIED | Automated | Passed |
| TC-005 | Authorization | Assignments cleared | Admin branch list is empty | Automated | Passed |
| TC-006 | React | Empty chain list copy | Empty state shown | Automated | Passed |
| TC-007 | Browser | Admin role has no Admins nav and `/admins` is denied | Access denied | Automated | Passed |
| TC-008 | Flutter client | GET `/chains` deserializes | PAI chain code | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Passed 23/23 on 2026-09-14 | Includes P03 isolation cases |
| `make -f files/Makefile generate-api` | Passed | OpenAPI v0.3.0; OrganizationClient generated |
| `cd react/admin && npm run lint && npm run test && npm run build` | Passed | 12/12 Vitest |
| `cd react/admin && npm run test:e2e` | Passed 2/2 Chromium | Overview login and Admin denial |
| Flutter analyze/test all apps | Passed | Store Manager 5/5, Vendor 5/5, Diagnostics 4/4 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK rebuilds | No native plugin, application-id or build-system change | Next phase that changes native config, or owner-authorized range end | Not run |
| Live Cloudflare R2 | Not in P03 | P07 live provider pass | Not run |
| Razorpay live keys | P11 | P11 | Not run |

## Files changed

- Backend organization domain, OpenAPI v0.3.0, generated Flutter organization clients and chain-list client tests.
- React overview/chain/branch/admin pages, RoleGate, AdminShell, Playwright Admin denial.
- design.md and design.html A23/A24.

## Risks and follow-ups

- Manager, vendor, device, media, diagnostic-import and wallet backend routes remain in the codebase as unauthorized later-phase drafts. Do not treat them as complete phases.
- P04 is the next planned phase and is not authorized by this task.

## Completion

- Completed date: 2026-09-14
- Final result: P03 complete. Super Admin can manage chains, branches and Admin store assignments; Admin scope is enforced on API and React.
- Next task: Wait for the owner to authorize P04.

## Mandatory documentation synchronization

- [x] Current task: actual files, criteria, status and next action updated.
- [x] implementation.md: task register, test evidence and next action updated.
- [x] plan.md and phases.md: phase progress and completed task IDs updated.
- [x] Conditional files: decisions Updated (P03 stop); design.md + design.html Updated; OpenAPI Updated; testing Updated (check-p03); backend plan pointer Updated; setup/deployment Not applicable.
- [x] Authorization boundary honored; stopped after P03.

## Security acceptance

- [x] Super Admin-only Admin creation; empty-scope denial; forged/unassigned branch IDs denied; assignment removal enforced on the next list.
- [x] React hides Admins navigation for Admin and `/admins` shows Access denied.
