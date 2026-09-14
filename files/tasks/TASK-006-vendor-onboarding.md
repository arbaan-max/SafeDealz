# TASK-006 — Vendor onboarding APIs and React/Flutter pages

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P05 |
| Status | Complete |
| Areas | Backend / MongoDB / Admin web / Flutter / OpenAPI / Integration |
| Design screens | A08, A09, V15 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase |
| Start | P05 |
| Automatic stop after | P05 |
| May continue across intermediate phases | No |

## Goal

Onboard vendors with one wallet per account, scoped multi-store assignments, safe existing-account linking, React A08/A09, and Vendor V15 assigned stores using AppPageScaffold.

## Included

- OpenAPI `/vendors`, `/vendors/{id}`, `/vendors/links`, `/assigned-stores`.
- Admin-scoped links; Super Admin-only global status/credentials and wallet balances.
- Generic link/duplicate errors that do not leak other store relationships.
- React vendor list/form with chain-grouped branch picker.
- Vendor Flutter AppPageScaffold and V15 assigned-store view after login.

## Excluded

- Device intake (P06), live wallet recharge (P11), auction screens.
- Android APK rebuilds unless a native change is required.

## Existing files and patterns to reuse

- `createStaffAccount` / `updateStaffAccount` / `listStaff`, wallet create/read, React manager pages, Vendor login BLoC and generated clients.

## Changes required

### API contract

- Updated: `backend/openapi/openapi.json` v0.5.0.

### Backend and MongoDB

- Vendor create/update/list/link; one wallet; scoped assignment merge; vendor-safe assigned-store payload.

### Flutter, web, or Diagnostics

- Generated clients; React A08/A09; Vendor AppPageScaffold + V15.

## Acceptance criteria

- [x] Super Admin and scoped Admin can create a vendor on authorized stores with one wallet.
- [x] Admin cannot assign, update, or see stores outside scope, or read wallet balances / change global status or password.
- [x] Linking an existing vendor adds only in-scope stores and does not return other relationships.
- [x] Duplicate/link errors stay generic.
- [x] Vendor login can load V15 assigned stores grouped by chain.
- [x] Vendor feature pages take background from AppPageScaffold / `app-background` token.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Admin creates vendor on assigned store | 201; wallet balances omitted | Automated | Passed |
| TC-002 | Authorization | Admin assigns unassigned store | 403 STORE_SCOPE_DENIED | Automated | Passed |
| TC-003 | Authorization | Admin deactivates or resets vendor password | 403 FORBIDDEN | Automated | Passed |
| TC-004 | API | Super Admin sees wallet paise; Admin GET wallet hides them | Super Admin has amounts; Admin does not | Automated | Passed |
| TC-005 | API | Link existing vendor; duplicate create | Link 200 with in-scope stores only; create 409 generic | Automated | Passed |
| TC-006 | API | Vendor assigned-stores across two chains | Only assigned branches; no bank numbers | Automated | Passed |
| TC-007 | React | Empty vendor list | Empty copy | Automated | Passed |
| TC-008 | Browser | Admin can open Vendors, not Admins | A08 visible | Automated | Passed |
| TC-009 | Flutter | AppPageScaffold follows theme token; V15 empty copy | Background changes with token; empty state shown | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Passed 25/25 on 2026-09-14 | Includes dedicated P05 isolation/link cases |
| `make -f files/Makefile generate-api` | Passed | OpenAPI v0.5.0 |
| `cd react/admin && npm run lint && npm run test && npm run build` | Passed | ESLint; 14/14 Vitest |
| `cd react/admin && npm run test:e2e` | Passed 2/2 Chromium | Admin Vendors nav and A08 empty state |
| Flutter analyze/test all apps | Passed | Store Manager 6/6, Vendor 9/9, Diagnostics 5/5 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK rebuilds | No native plugin or application-id change | Next native-config phase or owner-authorized range end | Not run |

## Files changed

- OpenAPI v0.5.0, vendor link service, assigned-store presenter, P05 API tests.
- Generated Flutter vendor/assigned-store clients.
- React A08/A09, AdminShell Vendors nav, Playwright Admin vendor access.
- Vendor AppPageScaffold, V15 assigned stores, theme extension, widget tests.

## Risks and follow-ups

- Device/media/wallet-mutation drafts remain later-phase work.
- Next authorized work is P06 only after an explicit owner command.

## Completion

- Completed date: 2026-09-14
- Final result: P05 complete. Vendors can be created or linked within Admin store scope, keep one wallet, hide global balances from Admin, and see assigned stores in the Vendor app.
- Next task: Wait for the owner to authorize P06.

## Mandatory documentation synchronization

- [x] Current task, implementation.md, plan.md, phases.md updated.
- [x] Conditional files: decisions Updated; design.md + design.html Not applicable (A08/A09/V15 already specified); OpenAPI Updated; testing Updated (`check-p05`); backend plan pointer Updated; setup/deployment Not applicable.
- [x] Authorization boundary honored; stop after P05.

## Security acceptance

- [x] Scoped vendor links; no other-store leakage on list/link/duplicate; Admin cannot see global wallet or mutate global credentials/status.
