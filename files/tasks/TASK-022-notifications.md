# TASK-022 — Notifications and broadcasts (S04)

## Ownership

| Item | Value |
| --- | --- |
| Parent phase | P20 |
| Status | Done |
| Areas | Backend / Flutter / React / OpenAPI |
| Design screens | S04 |

## Authorization boundary

| Item | Value |
| --- | --- |
| Authorized scope | Inclusive phase range |
| Start | P16 |
| Automatic stop after | P20 |
| May continue across intermediate phases | Stop after this task |

## Goal

Role-specific inboxes for paid/pickup events, admin delivery history, and targeted broadcasts. External delivery uses the in-app test provider. Duplicate events and broadcast retries do not create extra rows.

## Included

- Inbox, mark read, admin history, broadcasts, SM/Vendor S04, React S04.

## Excluded

- Live SMS/push, P21 support, dashboard widgets.

## Existing files and patterns to reuse

- Outbox-style unique keys, ResourcePage, AppPageScaffold.

## Changes required

### API contract

- OpenAPI v0.20.0 notifications inbox, history, broadcast, read.

### Backend and MongoDB

- Notification deliveries with unique idempotency; paid/pickup event fan-out.

### Flutter, web, or Diagnostics

- SM/Vendor inbox; React history/compose.

## Acceptance criteria

- [x] Targeting and access tests for all/role/store/vendor.
- [x] Retries do not duplicate.
- [x] Unauthenticated inbox is 401.
- [x] Test provider marks delivered in-process.

## Tests to write before or with implementation

| ID | Layer | Scenario | Expected result | Automated/manual | Result |
| --- | --- | --- | --- | --- | --- |
| TC-001 | API | Duplicate paid / pickup | One row each | Automated | Passed |
| TC-002 | API | all_vendors broadcast | Vendor inbox grows; manager does not | Automated | Passed |
| TC-003 | Flutter/React | S04 inbox and history | Copy | Automated | Passed |

## Verification commands and results

| Command/check | Result | Notes |
| --- | --- | --- |
| `cd backend && npm test` | Pass | 38/38 |
| generate-api | Pass | OpenAPI v0.20.0 |
| Store Manager | Pass | 36/36 |
| Vendor / Diagnostics | Pass | 26/26 and 14/14 |
| React check | Pass | 25/25 Vitest; 2/2 Chromium |
| Android APK | Pass | Sequential debug APKs 2026-09-14: Store Manager, then Vendor, then Diagnostics |

## Deferred broad verification

| Check | Why it is safe to defer | Must run by | Result |
| --- | --- | --- | --- |
| Android debug APKs | Deferred from P15–P19; no new native plugin | P20 | Passed sequentially 2026-09-14. Diagnostics first attempt failed with no disk space after Store Manager and Vendor intermediates; `flutter clean` on those two apps freed ~3.8G and the Diagnostics retry passed. |

## Files changed

- Notification model/service, S04 clients, OpenAPI v0.20.0

## Risks and follow-ups

- Authorized range P16–P20 is complete. Do not start P21.

## Completion

- Completed date: 2026-09-14
- Final result: Role inboxes and admin broadcasts with test-provider delivery.
- Next task: None — stop after P20.

## Mandatory documentation synchronization

- [x] Task, implementation, plan, phases updated.
- [x] Authorization boundary honored; stop after P20.

## Security acceptance

- [x] Inboxes are recipient-scoped; vendors cannot broadcast; cross-account mark-read is 403; no inbox before login.
