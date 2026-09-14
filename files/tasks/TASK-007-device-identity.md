# TASK-007 — Device identity APIs and Store Manager M01–M03

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P06 |
| Status | Done |
| Areas | Backend / MongoDB / Flutter / OpenAPI / Integration |
| Design screens | M01, M02, M03 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase |
| Start | P06 |
| Automatic stop after | P06 |
| May continue across intermediate phases | No |

## Goal

Let Store Managers create and resume device drafts with dual IMEI capture, Apple/Android identity fields, list filters, and AppPageScaffold. Camera OCR is an injectable adapter so fields stay editable.

## Included

- OpenAPI device list/create/get/patch for identity drafts.
- Allowlisted status/branch filters, IMEI uniqueness at the branch (both IMEI fields), Apple vs Android validation.
- Store Manager M01 home, M02 device list filters, M03 identity form, scan-correction adapter, draft resume.
- AppPageScaffold backed by ThemeData `app-background`.

## Excluded

- M04 inspection, M05/M06 evidence, diagnostic QR (P07–P09).
- Native camera plugin / APK rebuild.

## Existing files and patterns to reuse

- Draft `device.service` validation, Vendor AppPageScaffold/theme extension, Store Manager login BLoC.

## Changes required

### API contract

- OpenAPI v0.6.0 `/devices` and `/devices/{id}`.

### Backend and MongoDB

- Identity create/update/list with scope, duplicate IMEI, allowlisted query filters.

### Flutter, web, or Diagnostics

- Generated OperationsClient; M01–M03; ImeiScanAdapter; AppPageScaffold.

## Acceptance criteria

- [x] Apple requires storage and battery 1–100 and rejects RAM.
- [x] Android requires storage and RAM 4/6/8/12/24 GB and has no battery field.
- [x] IMEIs are distinct 15-digit strings that keep leading zeros; duplicates at the branch return 409.
- [x] Scan fills both IMEI fields and the manager can correct them.
- [x] Drafts list/filter and resume via GET/PATCH.
- [x] Cross-store create/read denied; vendor cannot create devices or see drafts.
- [x] Manager feature pages use AppPageScaffold / background token.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Apple with RAM | 400 | Automated | Passed |
| TC-002 | API | Android create + leading-zero IMEI | 201; IMEI preserved | Automated | Passed |
| TC-003 | API | Duplicate IMEI at branch / matching IMEIs | 409 / 400 | Automated | Passed |
| TC-004 | Authorization | Other-branch create/get; vendor POST | 403 | Automated | Passed |
| TC-005 | Validation | Object status query | 400 | Automated | Passed |
| TC-006 | API | List drafts and PATCH resume | Filter returns draft; PATCH updates model | Automated | Passed |
| TC-007 | Flutter | Apple form hides RAM; Android hides battery | Conditional fields | Automated | Passed |
| TC-008 | Flutter | Scan then correct IMEI | Fields filled then edited | Automated | Passed |
| TC-009 | Flutter | AppPageScaffold token; empty M02 | Background follows token; empty copy | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Passed 26/26 on 2026-09-14 | Dedicated P06 identity plus prior phases |
| `cd react/admin && npm run check` | Passed | 14/14 Vitest; 2/2 Chromium |
| Store Manager `flutter analyze` + `flutter test` | Passed 11/11 | Login, generated OperationsClient, M01–M03 widgets |
| Vendor `flutter analyze` + `flutter test` | Passed 9/9 | No product regression |
| Diagnostics `flutter analyze` + `flutter test` | Passed 5/5 | No product regression |
| `make -f files/Makefile check-p06` | Equivalent gates run 2026-09-14 | Generate-api already applied; APK not required |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK rebuilds | No native camera plugin or application-id change | Next native-config phase | Not run |

## Files changed

- `backend/openapi/openapi.json` v0.6.0 device identity operations.
- `backend/src/services/device.service.js`, `device.repository.js`, P06 tests.
- Store Manager AppPageScaffold, theme extension, M01–M03, ImeiScanAdapter, OperationsClient usage.
- Generated Flutter clients in all three apps; `files/Makefile` `check-p06`.

## Risks and follow-ups

- Inspection/media/QR remain later-phase drafts on the backend.
- Next authorized work is P07 only after an explicit owner command.

## Completion

- Completed date: 2026-09-14
- Final result: P06 complete. Store Managers can create and resume dual-IMEI drafts with Apple/Android identity rules, list filters, and AppPageScaffold. Camera scan is an injectable adapter; no native plugin.
- Next task: Wait for the owner to authorize P07.

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Conditional files reviewed.
- [x] Stop after P06.

Conditional files: decisions Updated; design.md + design.html Not applicable (M01–M03 already specified); OpenAPI Updated; testing Updated (`check-p06`); backend plan pointer Updated; setup/deployment Not applicable.

## Security acceptance

- [x] Allowlisted fields/filters; store scope on reads/writes; vendor cannot create or list drafts; duplicate IMEI enforced.
