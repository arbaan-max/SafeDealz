# TASK-030 — Diagnostics HTML visual match

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P28 |
| Status | Done |
| Areas | Flutter Diagnostics |
| Design screens | D01–D08 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range P26–P28 |
| Start | P26 |
| Automatic stop after | P28 |
| May continue across intermediate phases | Yes |

## Goal

Match Diagnostics to [design.html](../design.html) mobile frames D01–D08. Request real Android permissions. Do not change QR payload, signature or Store Manager import rules.

## Included

- HTML progress chrome (ANDROID DIAGNOSTICS n of 8), sky-blue ordinary pages, D04 full-screen dark touch canvas.
- D01–D08 copy and hierarchy vs HTML: start, permissions, automatic checks, touch HUD, physical buttons, camera/sound/sensors, report review, result QR.
- `permission_handler` for camera, microphone, location and Bluetooth on device; tests keep injectable hardware.
- Main Android manifest: INTERNET, CAMERA, RECORD_AUDIO, location and Bluetooth permissions.

## Excluded

- Handover (P29). Changing HMAC/QR schema. Opening Store Manager from Diagnostics.
- Running Store Manager, Vendor and Diagnostics on the emulator at the same time.

## Existing files and patterns to reuse

- DiagnosticSessionCubit, ConfigurableDiagnosticsHardware, touch 90% gate, qr_flutter, Vendor/Store Manager html_kit.

## Changes required

### API contract

- Unchanged (OpenAPI v0.22.0).

### Backend and MongoDB

- None.

### Flutter, web, or Diagnostics

- Diagnostics restyled to HTML. Production `AndroidDiagnosticsHardware` requests OS permissions. Tests still use `DemoDiagnosticsHardware` / `ConfigurableDiagnosticsHardware`.

## Acceptance criteria

- [x] Every P28 row in screen-match.md is Same or Updated.
- [x] D04 remains a diagnostic-surface canvas, not the ordinary scaffold.
- [x] QR notice and 90% touch gate remain.
- [x] `flutter test` in Diagnostics passes.
- [x] Stop after P28. Do not start P29.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | Flutter widget | D01 identity | SafeDealz Diagnostics, IMEI suffixes, Start diagnostics | Automated | Passed |
| TC-002 | Flutter widget | Denied permissions | Related checks Unavailable, never Passed | Automated | Passed |
| TC-003 | Flutter widget | D04 90% gate and retry | Blocked at 107/120; allowed at 108; Attempt 2 | Automated | Passed |
| TC-004 | Flutter widget | D08 signed QR | Store Manager scan copy; QrImageView; local store | Automated | Passed |
| TC-005 | Flutter widget | Scaffold vs D04 canvas | Ordinary pages `#F0F9FF`; D04 diagnostic canvas | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd flutter/diagnostics && flutter analyze && flutter test` | Pass | 15/15 |
| Vendor `flutter analyze && flutter test` | Pass | 33/33 sequential after Store Manager |
| Store Manager `flutter analyze && flutter test` | Pass | 42/42 sequential first |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Diagnostics emulator permission dialogs | Low RAM; widget tests use injectable hardware | Before P29 if a device check is requested | Not run |
| Full `check-p28` generate-api + React + backend | No API change; sequential Flutter tests are the affected gate | Recorded skipped | Flutter product tests passed; OpenAPI unchanged |

## Files changed

- Diagnostics theme, html_kit, AppPageScaffold, D01–D08 screens, AndroidDiagnosticsHardware, permission_handler, main AndroidManifest.

## Risks and follow-ups

- Real OS permission dialogs appear only on device/emulator with `AndroidDiagnosticsHardware`.
- Stop. P29 handover is not authorized.

## Completion

- Completed date: 2026-09-14
- Final result: Diagnostics HTML visual match. All P28 rows marked Updated.
- Next task: None — stop after P28.

## Mandatory documentation synchronization

- [x] Current task updated.
- [x] implementation.md, plan.md, phases.md, screen-match.md updated.
- [x] Conditional files: decisions, testing.md (check-p28 already listed), OpenAPI Not applicable.
- [x] Authorization boundary honored; stopped after P28.

## Security acceptance

- [x] QR payload/signature/import unchanged.
- [x] Local-only report storage unchanged.
- [x] Diagnostics flow tests passed including unavailable hardware never shown as Passed.
