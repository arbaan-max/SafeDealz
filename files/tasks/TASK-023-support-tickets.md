# TASK-023 — Support tickets (M23, V16, A18)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P21 |
| Status | Done |
| Areas | Backend / Flutter / React / OpenAPI |
| Design screens | M23, V16, A18 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P21 |
| Automatic stop after | P24 |
| May continue across intermediate phases | Yes through P24 |

## Goal

Store Manager and Vendor raise tickets against a linked device, bid, deal, payment or redemption. Super Admin and scoped Admin handle incoming tickets. Creators cannot read each other’s tickets. Admins cannot create manager/vendor tickets.

## Included

- Ticket create/list/read, notes, assign, resolve, attachment sign/complete/download, M23/V16/A18.

## Excluded

- Live SMS, P22 reports/audit/sessions, dashboard widgets.

## Existing files and patterns to reuse

- Notification fan-out, media signed-URL stub, ResourcePage, AppPageScaffold.

## Changes required

### API contract

- OpenAPI v0.21.0 tickets, notes, assign, status, attachments.

### Backend and MongoDB

- Support tickets with unique open-subject key, attachment grants, notification events.

### Flutter, web, or Diagnostics

- SM M23, Vendor V16, React A18.

## Acceptance criteria

- [x] Users cannot read others’ tickets.
- [x] Admin/super_admin cannot create customer-style tickets.
- [x] Existing open ticket for the same subject is rejected.
- [x] Attachment access is ticket-scoped.
- [x] Unauthenticated ticket list is 401.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Cross-account read | 403 without row | Automated | Passed |
| TC-002 | API | Admin create | 403 | Automated | Passed |
| TC-003 | API | Open duplicate | 409 | Automated | Passed |
| TC-004 | API | Attachment download by other vendor | 403 | Automated | Passed |
| TC-005 | Flutter/React | M23/V16/A18 copy | Copy | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 39/39 |
| generate-api | Pass | OpenAPI v0.21.0 |
| Store Manager | Pass | 37/37 |
| Vendor / Diagnostics | Pass | 27/27 and 14/14 |
| React check | Pass | 27/27 Vitest; 2/2 Chromium |
| Android APK | Deferred | Due at P24 |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android debug APKs | No native plugin | P24 | Not run |

## Files changed

- Support ticket model/service, M23/V16/A18 clients, OpenAPI v0.21.0

## Risks and follow-ups

- Continue automatically to P22. Stop after P24.

## Completion

- Completed date: 2026-09-14
- Final result: Owner-scoped tickets with admin handling and private attachments.
- Next task: TASK-024 — P22 admin oversight and reporting

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Authorization boundary honored; continue through P24 then stop.

## Security acceptance

- [x] Ticket reads are owner/scope-checked; attachments do not leak; admin cannot create tickets; no list before login.
