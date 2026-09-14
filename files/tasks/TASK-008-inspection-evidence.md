# TASK-008 — Manual inspection and evidence (M04–M06)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P07 |
| Status | Done |
| Areas | Backend / MongoDB / Flutter / OpenAPI / Integration |
| Design screens | M04, M05, M06 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Single phase |
| Start | P07 |
| Automatic stop after | P07 |
| May continue across intermediate phases | No |

## Goal

Let Store Managers complete the seven-step manual inspection and capture seven evidence items plus a bill when required, using private signed media grants without a native camera plugin.

## Included

- OpenAPI inspection PUT and media sign/complete/download.
- Allowlisted inspection answers, age/bill rules, lock rejection, seven captures plus bill.
- R2 adapter with stub grants when credentials are absent; expiry, retake, checksum and cross-store denial.
- Store Manager M04–M06, injectable capture adapter, AppPageScaffold.

## Excluded

- M09 review, diagnostic QR (P08/P09).
- Native camera plugin / live Cloudflare R2 / APK rebuild.

## Existing files and patterns to reuse

- `device.service` inspection and `media.service` signed stubs, Store Manager AppPageScaffold and ImeiScanAdapter pattern.

## Changes required

### API contract

- OpenAPI v0.7.0 inspection and media operations.

### Backend and MongoDB

- Allowlisted answers; media retake; grant expiry; object-key ownership.

### Flutter, web, or Diagnostics

- Generated OperationsClient methods; M04–M06; EvidenceCaptureAdapter.

## Acceptance criteria

- [x] Both platforms complete all applicable M04 fields; Apple shows parts + read-only battery; no RGB inspection.
- [x] Age below 11 months requires Bill answer and bill media; complete without seven captures fails.
- [x] Inspection remains editable after save; diagnostics never hide fields.
- [x] Sign/complete enforce type/size/checksum, retake, expired grants and cross-store denial.
- [x] M06 capture adapter can be denied, fill a slot, and retake without a camera plugin.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Complete without all answers or seven media | 400 | Automated | Passed |
| TC-002 | API | Below-11-month without bill | 400 | Automated | Passed |
| TC-003 | API | Partial save then resume; Apple complete with media | 200; Apple `ready_for_auction` | Automated | Passed |
| TC-004 | Authorization | Other-store media download; vendor sign | 403 | Automated | Passed |
| TC-005 | Media | Expired grant; checksum mismatch; retake | 400 / new object key | Automated | Passed |
| TC-006 | Flutter | M04 has no RGB screen; Apple hides no manual fields | Step copy | Automated | Passed |
| TC-007 | Flutter | Permission denied and retake via adapter | Message; slot replaced | Automated | Passed |
| TC-008 | Flutter | AppPageScaffold on M04/M05 | Token background | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Passed 27/27 on 2026-09-14 | Dedicated P07 media/inspection cases |
| `cd react/admin && npm run check` | Passed | 14/14 Vitest; 2/2 Chromium |
| Store Manager `flutter analyze` + `flutter test` | Passed 15/15 | M04–M06 widgets and generated inspection client |
| Vendor `flutter analyze` + `flutter test` | Passed 9/9 | No product regression |
| Diagnostics `flutter analyze` + `flutter test` | Passed 5/5 | No product regression |
| `make -f files/Makefile check-p07` | Equivalent gates run 2026-09-14 | generate-api applied; APK not required |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android APK rebuilds | No native camera plugin | Next native-config phase | Not run |
| Live Cloudflare R2 | DEC-021: live provider tests after P03–P10 range | After that range | Not run |

## Files changed

- OpenAPI v0.7.0 inspection and media operations; generated clients in all three Flutter apps.
- `inspection-catalog.js`, hardened `device.service` / `media.service`, media grant expiry and retake.
- Store Manager M04–M06, EvidenceCaptureAdapter, M03 continue to inspection.

## Risks and follow-ups

- Live R2 waits for the authorized range regression.
- Next authorized work is P08 only after an explicit owner command.

## Completion

- Completed date: 2026-09-14
- Final result: P07 complete. Managers can save the seven-step manual inspection, capture seven evidence items plus a required bill, and use stub signed uploads. Camera is an injectable adapter.
- Next task: Wait for the owner to authorize P08.

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Conditional files reviewed.
- [x] Stop after P07.

Conditional files: decisions Updated; design.md + design.html Not applicable (M04–M06 already specified); OpenAPI Updated; testing Updated (`check-p07`); backend plan pointer Updated; setup/deployment Not applicable.

## Security acceptance

- [x] Allowlisted media purposes/types/keys; short-lived grants; store scope on upload/download; expired and foreign keys rejected.
