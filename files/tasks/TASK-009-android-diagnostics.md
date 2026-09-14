# TASK-009 — Android Diagnostics local tests (D01–D07)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P08 |
| Status | Done |
| Areas | Flutter / Diagnostics / Integration |
| Design screens | D01, D02, D03, D04, D05, D06, D07 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase |
| Start | P08 |
| Automatic stop after | P08 |
| May continue across intermediate phases | No |

## Goal

Run the Diagnostics app locally on the traded Android phone through identity, permissions, automated checks, full-screen touch coverage, assisted hardware checks and report review. Results stay on the phone. No QR transfer yet.

## Included

- AppPageScaffold for ordinary Diagnostics pages; diagnostic-surface token for D04.
- Injectable hardware/permission adapters; never mark Unavailable hardware as Passed.
- 120-dot touch canvas, live percentage, retries, Submit only at 90%+.
- Encrypted local session store.

## Excluded

- D08 result QR, M07 import (P09).
- Native sensor plugins / APK rebuild.
- Backend OpenAPI changes.

## Existing files and patterns to reuse

- Diagnostics bootstrap/theme, Vendor AppPageScaffold, Store Manager injectable adapters.

## Changes required

### API contract

- None. Results are local until P09.

### Backend and MongoDB

- None.

### Flutter, web, or Diagnostics

- D01–D07, adapters, local store, tests.

## Acceptance criteria

- [x] D01 shows device and IMEI suffixes or an unavailable-identity state.
- [x] D02 records granted/denied/partial permissions without fabricating later passes.
- [x] Automated and assisted checks can be Passed, Failed or Unavailable and remain visible.
- [x] D04 has 120 dots, retries, no auto-advance, Submit blocked below 90%.
- [x] Ordinary pages use AppPageScaffold; D04 uses the diagnostic surface token.
- [x] Generate result stores an encrypted local report and does not open a QR screen.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | Unit | Touch 108/120 vs 107/120 | Submit allowed / blocked | Automated | Passed |
| TC-002 | Flutter | Unavailable hardware stays Unavailable | Not shown as Passed | Automated | Passed |
| TC-003 | Flutter | Permission denied | Denied copy; checks remain unavailable | Automated | Passed |
| TC-004 | Flutter | Retry increments attempt and resets dots | Attempt 2; 120 remaining | Automated | Passed |
| TC-005 | Flutter | AppPageScaffold vs D04 diagnostic token | Different backgrounds | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| Diagnostics `flutter analyze` + `flutter test` | Passed 13/13 on 2026-09-14 | D01–D07 widgets plus generated clients |
| Store Manager / Vendor tests | Passed 15/15 and 9/9 | No product regression |
| `cd react/admin && npm run check` | Passed | 14/14 Vitest; 2/2 Chromium |
| `cd backend && npm test` | Passed 27/27 | OpenAPI unchanged |
| `make -f files/Makefile check-p08` | Passed | generate-api applied; APK not required |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK / live sensors | No native plugin in this phase; adapters cover states | Next native-config phase | Not run |

## Files changed

- Diagnostics D01–D07 pages, session cubit, hardware adapter, HMAC local store, AppPageScaffold and DiagnosticSurface theme.
- `files/Makefile` `check-p08`.
- Canonical docs synchronized; OpenAPI unchanged.

## Risks and follow-ups

- P09 adds signed QR export/import.
- P09 signed QR is complete in TASK-011; P10 waits for authorization.

## Completion

- Completed date: 2026-09-14
- Final result: P08 complete. Diagnostics runs locally through report review. Results stay encrypted on the phone. QR is not generated.
- Next task: TASK-011 (P09, completed 2026-09-14).

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Conditional files reviewed.
- [x] Stop after P08.

Conditional files: decisions Updated; design.md + design.html Not applicable (D01–D07 already specified); OpenAPI Not applicable; testing Updated (`check-p08`); backend plan pointer Updated; setup/deployment Not applicable.

## Security acceptance

- [x] No customer/KYC data; results stay local; adapters cannot invent Passed for missing hardware.
