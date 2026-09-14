# TASK-010 — Trade-in catalog from backend (P08 extension)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P08 |
| Status | Done |
| Areas | Backend / Flutter / Store Manager / Diagnostics / Integration |
| Design screens | M03, M04, M05, D01–D07 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P08 (reopened for catalog) |
| Automatic stop after | P09 |
| May continue across intermediate phases | Yes through P09 |

## Goal

Serve identity, inspection, evidence and diagnostic option lists from one backend catalog module. Apps load it when starting a flow and keep answers local until save/send.

## Included

- GET /catalog from a code module (no collection).
- Store Manager dropdowns and inspection/evidence labels from that response.
- Diagnostics check labels from the same catalog when reachable.
- Server validation against the same lists; catalogVersion stored on new devices.

## Excluded

- Admin UI to edit the catalog.
- D08/M07 QR (TASK-011 / P09).

## Existing files and patterns to reuse

- `inspection-catalog.js`, Store Manager M03–M05, Diagnostics session cubit.

## Changes required

### API contract

- OpenAPI v0.8.0 `GET /catalog` (superseded by v0.9.0 with diagnostic import).

### Backend and MongoDB

- Public catalog payload; storage/RAM validated from the module, not mongoose enums.

### Flutter, web, or Diagnostics

- Load catalog on New trade-in and inspection; Diagnostics uses catalog labels.

## Acceptance criteria

- [x] Storage, RAM and inspection options are not hardcoded as the source of truth in Store Manager.
- [x] Unknown storage is rejected by the API.
- [x] Vendor cannot be required to authenticate to read catalog (public lists only).
- [x] Form answers still persist only on Continue/save.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | GET /catalog | Lists include 128 GB and inspection keys | Automated | Pass |
| TC-002 | API | Create device with unknown storage | 400 | Automated | Pass |
| TC-003 | Flutter | New trade-in uses catalog storage | Dropdown from repository | Automated | Pass |
| TC-004 | Flutter | Generated catalog client | GET /catalog deserializes | Automated | Pass |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| Backend catalog test | Pass | Included in `npm test` |
| Generated catalog client | Pass | Store Manager `generated_api_test.dart` |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK | No native plugin | Next native-config phase (with TASK-011) | Not run |

## Files changed

- `backend/src/services/inspection-catalog.js`, `backend/src/controllers/catalog.controller.js`, device validation, OpenAPI `/catalog`
- Store Manager catalog repository and M03–M05 dropdown sources
- Diagnostics optional catalog labels on `DiagnosticSessionCubit`

## Risks and follow-ups

- Catalog remains a code module; no admin editor.

## Completion

- Completed date: 2026-09-14
- Final result: Public catalog lists drive intake options; unknown storage is rejected.
- Next task: TASK-011 P09 (completed in the same session after authorization)

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Conditional files reviewed.
- [x] Continue to P09 after P08 records.

## Security acceptance

- [x] Catalog contains no customer data; device writes still require Store Manager auth and catalog validation.
