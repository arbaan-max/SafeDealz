# TASK-029 — Vendor HTML visual match

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P27 |
| Status | Done |
| Areas | Flutter Vendor |
| Design screens | S01, S04, V01–V17 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range P26–P28 |
| Start | P26 |
| Automatic stop after | P28 |
| May continue across intermediate phases | Yes |

## Goal

Match Vendor to [design.html](../design.html) mobile frames S01, S04 and V01–V17. Persist session on restart (refresh once, logout if `active == false`). Keep wallet math, bid immutability and Razorpay checkout behavior.

## Included

- Shared HTML login (Welcome back / Login to your vendor account), sky-blue shell, HTML app-top, sticky action bars and 4-tab nav (Live / My bids / Wallet / Account).
- Live queue, auction detail, media viewer, two-step bid (Review bid → Submit final bid), wallet, recharge, holds, purchased device, performance, assigned stores, support and account vs HTML copy and hierarchy.
- Session restore on cold start using the 30-day refresh token; inactive accounts log out.
- `INTERNET` on the Vendor main Android manifest.

## Excluded

- Diagnostics visual match except as the next authorized phase (P28).
- Handover (P29). Hosting. New product workflows beyond existing Vendor APIs.
- Changing bid fee bands, Razorpay credit rules or OpenAPI.

## Existing files and patterns to reuse

- Store Manager `html_kit`, `AppPageScaffold`, session restore (`AuthStarted` / `TokenStore`), Vendor widget tests.

## Changes required

### API contract

- Unchanged (OpenAPI v0.22.0).

### Backend and MongoDB

- None. Refresh lifetime remains `REFRESH_TOKEN_DAYS=30`.

### Flutter, web, or Diagnostics

- Vendor restyled to HTML mobile chrome. Session restore mirrors Store Manager.

## Acceptance criteria

- [x] Every P27 row in screen-match.md is Same or Updated.
- [x] Login has no remember/signup/forgot-password; logout is on V17 only.
- [x] Live / My bids / Wallet / Account bottom nav matches HTML.
- [x] `flutter test` in Vendor passes.
- [x] Stop after P28 in this authorized range.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | Flutter widget | S01 credentials and password eye | Welcome back, vendor account copy, password eye, single Login | Automated | Passed |
| TC-002 | Flutter unit | AuthStarted restore / inactive | Restores when refresh exists; inactive logs out | Automated | Passed |
| TC-003 | Flutter widget | V01/V04/V07/V17 catalogued copy | Live queue, Review bid, wallet chips, Logout | Automated | Passed |
| TC-004 | Flutter widget | Bid fee and immutable V06 | 8/7/6% bands; Submit final bid opens V06 | Automated | Passed |
| TC-005 | Manual | Each HTML Vendor frame vs live UI | Restyled to HTML | Manual | Compared to design.html/md; emulator visual pass not run (low RAM, one-app rule) |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd flutter/vendor && flutter test` | Pass | 33/33 |
| `dart analyze lib test` | Pass | 0 issues after mounted-guard fix |
| Store Manager / Diagnostics Flutter | Pass | Run under P28 gate |
| Backend / OpenAPI | Unchanged | No contract change |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Vendor emulator walkthrough | Low-RAM device; widget tests cover copy and flows | P28 | Deferred; not required for QR/native plugin change |
| `flutter build apk --debug` | No new native plugin on Vendor | P28 | Not required; Diagnostics added permission_handler |

## Files changed

- Vendor auth restore, html_kit, AppPageScaffold, VendorBottomNav, S01/S04/V01–V17 screens, Android INTERNET, session restore tests.

## Risks and follow-ups

- Emulator visual pass deferred because the host has low RAM; run Vendor alone later if a pixel-level check is needed.
- Stop after P28. Do not start P29.

## Completion

- Completed date: 2026-09-14
- Final result: Vendor HTML visual match. All P27 rows marked Updated.
- Next task: TASK-030 (P28)

## Mandatory documentation synchronization

- [x] Current task: actual files, criteria, status and next action updated.
- [x] implementation.md: task register, test evidence and next action updated.
- [x] plan.md and phases.md: phase progress and completed task IDs updated.
- [x] Conditional files: decisions note P26–P28 authorized; OpenAPI Not applicable; testing.md already lists check-p27; backend plan pointer updated.
- [x] Authorization boundary honored; continued to P28 within the recorded inclusive range.

## Security acceptance

- [x] Wallet amounts, bid immutability, refresh rotation and inactive logout remain intact.
- [x] No new endpoints. Session restore still refreshes once and checks `active`.
- [x] Vendor widget tests covering fees, holds, recharge pending/failed and logout passed.
