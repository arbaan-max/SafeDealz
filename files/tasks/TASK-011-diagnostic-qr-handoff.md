# TASK-011 — Diagnostic QR handoff (D08, M07, M09)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P09 |
| Status | Done |
| Areas | Backend / Flutter / Diagnostics / Store Manager / Integration |
| Design screens | D08, M07, M09 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase |
| Start | P09 |
| Automatic stop after | P09 |
| May continue across intermediate phases | No |

## Goal

Diagnostics shows a signed result QR. The Store Manager scans it, the API verifies signature/IMEI/expiry/replay, and Android intake becomes auction-ready. Apple skips diagnostics.

## Included

- D08 signed QR. M07 scan/import. M09 two cards and Apple bypass.
- POST /diagnostic-imports with deviceId, payload and signature.

## Excluded

- Pairing, launching the other app, live auction P10+.
- Native camera plugin.

## Existing files and patterns to reuse

- `diagnostic.service.js`, injectable scan adapters, AppPageScaffold.

## Changes required

### API contract

- OpenAPI v0.9.0 diagnostic import.

### Backend and MongoDB

- Harden import: invalid signature, expiry, IMEI mismatch, duplicate nonce, vendor 403.

### Flutter, web, or Diagnostics

- D08 QR, M07 scan adapter, M09 review.

## Acceptance criteria

- [x] Valid import persists once and sets ready_for_auction.
- [x] Altered, expired, mismatched and duplicate QR fail.
- [x] Neither app launches the other.
- [x] Android stays awaiting diagnostics until import; Apple review does not require QR.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Valid import then replay | 201 then 409 | Automated | Pass |
| TC-002 | API | Bad signature, expired, IMEI mismatch, vendor | 400 / 403 | Automated | Pass |
| TC-003 | Flutter | M09 pending vs Apple N/A | Copy | Automated | Pass |
| TC-004 | Flutter | M07 scan imports | Imported | Automated | Pass |
| TC-005 | Flutter | D08 QR after generate | QR copy, no launcher | Automated | Pass |
| TC-006 | Flutter | Generated import client | POST /diagnostic-imports | Automated | Pass |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `make -f files/Makefile generate-api` | Pass | OpenAPI v0.9.0 in all three apps |
| React `npm run check` | Pass | 14/14 Vitest; 2/2 Chromium |
| Flutter analyze + test | Pass | See implementation.md |
| Backend `npm test` | Pass | 28/28 including serial P03–P10 suite |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK | qr_flutter is Dart-only; no native plugin, platform config, or application-id change | Next native-config phase | Not run |

## Files changed

- `backend/openapi/openapi.json`, `backend/src/services/diagnostic.service.js`, `backend/src/routes/organization.routes.js`, `backend/test/product-p03-p10.test.js`
- Diagnostics: `lib/data/diagnostics/qr.dart`, `lib/bloc/session/diagnostic_session_cubit.dart`, `lib/view/screens/diagnostics/result_page.dart`, `pubspec.yaml`, `test/diagnostic_flow_test.dart`
- Store Manager: `lib/view/screens/devices/review_page.dart`, `lib/view/screens/devices/diagnostic_scan_page.dart`, `lib/data/repositories/device_repository.dart`, `lib/data/services/diagnostic_qr_scan_adapter.dart`, `test/diagnostic_handoff_test.dart`, `test/generated_api_test.dart`
- Generated clients (not hand-edited) for all three Flutter apps

## Risks and follow-ups

- Next authorized work is P10 only after an explicit owner command.
- Native camera scan remains a later adapter implementation; tests use `DemoDiagnosticQrScanAdapter`.

## Completion

- Completed date: 2026-09-14
- Final result: P09 signed QR export/import and M09 review pass gates; stop after P09.
- Next task: Wait for the owner to authorize P11.

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Conditional files reviewed.
- [x] Stop after P09.

| File | Result |
| --- | --- |
| implementation.md, plan.md, phases.md | Updated |
| decisions.md | Updated: P09 authorized and stopped |
| design.md / design.html | Not applicable — D08/M07/M09 already specified |
| testing.md | Updated `check-p09` |
| backend-IMPLEMENTATION_PLAN.md | Updated |
| Obsidian Current State and Session Log | Updated |
| Setup/deployment | Not applicable |

## Security acceptance

- [x] QR has no price or KYC; import is Store Manager scoped; signature/expiry/IMEI/replay enforced.
