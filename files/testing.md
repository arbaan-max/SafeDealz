# SAFEDEALZ TESTING POLICY

Every task must define applicable tests before coding and record actual results in its task file and [implementation.md](implementation.md).

## Verification scheduling across an authorized phase range

Run checks in the phase that introduces the behavior when they validate business logic, API contracts, authorization, security, database constraints, generated-client compatibility, state transitions, UI behavior, or a dependency needed by a later phase. A phase cannot pass by moving these checks to a later phase.

Broad repeat verification may be deferred to the final phase of an explicitly authorized range when an earlier phase already has sufficient targeted evidence. Examples include repeated full clean builds, all-app regression sweeps, and cross-project build checks. `flutter build apk --debug` may be deferred only when the phase changes no native plugin, platform configuration, application identifier, generated platform code, or build-system setting, and analyze plus relevant tests provide adequate intermediate evidence.

Every deferred check must be listed in the task with its reason and final target phase. The final authorized phase must run the complete deferred list before it can be marked complete. A failure reopens the phase that introduced the defect and requires its affected checks to pass again.

## Backend and API

- Unit-test business rules in services and pure utilities.
- Integration-test routes through the real middleware, controller, service, repository, and validation chain.
- Test MongoDB behavior using an isolated test database with production-equivalent indexes and constraints.
- Verify authentication, active-account enforcement, role permissions, chain/branch assignments, record ownership, and restricted KYC access.
- Test standard success, validation failure, unauthorized, forbidden, not found, conflict, expiry, retry, and provider-failure responses.
- Verify the implementation against the OpenAPI contract.
- Test idempotency for wallet movements, bid submission, acceptance, payout instructions, webhooks, QR import, pickup, and reward redemption.
- For Cloudflare R2, test signed-operation expiry, object-key ownership, MIME/size/checksum validation, interrupted upload recovery, private access and cross-store download denial without contacting production storage.
- For Razorpay recharge, test server-created order amounts in paise, webhook signature verification, mismatched order/payment IDs, duplicate and out-of-order events, cancellation/failure, reconciliation and exactly-once wallet credit. A Flutter checkout callback alone must never change the balance.
- Test timer boundaries with a controllable clock rather than real waits.

## Flutter clients

- Unit-test calculations, models, repositories, blocs, state transitions, timer behavior, and error mapping.
- Widget-test required fields, conditional Apple/Android controls, validation, loading, empty, error, disabled, and success states.
- Navigation-test Back behavior and role-specific destinations.
- Integration-test the critical Store Manager and Vendor journeys against a controlled backend environment.
- Add regression tests for every reported defect.
- Use golden tests only for stable, high-value layouts; behavioral tests remain mandatory.
- Run static analysis and formatting checks with the project’s configured commands.

## Diagnostics app

- Test device identity collection, permission outcomes, supported/unavailable tests, touch coverage thresholds, retries, result generation, QR expiry, signature verification, mismatched IMEIs, and duplicate scans.
- Verify that results remain local until M07 successfully scans and imports the signed QR.
- Verify that manual M04 answers and Diagnostics results remain separate records.

## Critical SafeDealz end-to-end cases

- Active and inactive login/refresh-token behavior.
- One immutable vendor bid per auction round.
- Available wallet limit and bid-plus-fee reservation.
- Hold release after loss, decline, rebid, or acceptance expiry.
- Highest-bid selection and ten-minute manager acceptance boundary.
- Acceptance creates one payment instruction; customer verification gates payout release.
- Devices below 11 months require Bill and live bill capture.
- Android auction cannot start before a valid Diagnostics result import.
- Vendor, manager, and admin see separate manual-inspection and Diagnostics cards.
- Pickup can only be marked by the originating store branch.
- Rewards issue and redemption remain branch-scoped for the first release.

## Completion gate

A task is complete only when:

- Its acceptance criteria are checked.
- Required automated tests pass.
- Static analysis passes.
- API-contract and database checks pass where applicable.
- The required user-visible flow is exercised on its target platform.
- Failures, skipped tests, and manual checks are documented with reasons.

## Mandatory security checks

Read [security.md](security.md) before implementing APIs or authentication clients. Apply its phase-specific controls and automated negative tests during each feature. Inactive accounts must fail refresh and protected API calls; Store Manager and Vendor clear their sessions and return to Login on ACCOUNT_INACTIVE without a retry loop.

## Bootstrap verification commands

- In each Flutter app: flutter analyze, flutter test, and an applicable build command.
- From the repository root: `make -f files/Makefile generate-api` after every OpenAPI change; `make -f files/Makefile check-p00` for generation plus Flutter analysis/tests and backend tests.
- In backend: npm test and npm audit --audit-level=high.
- In React admin: `npm run check` for ESLint, Vitest, production build and Playwright Chromium; `npm audit --audit-level=high` for dependency review.
- From the repository root after P01: `make -f files/Makefile check-p01` for generated-client reproducibility, React checks, all Flutter analysis/tests and backend tests.
- From the repository root after P03: `make -f files/Makefile check-p03` regenerates clients and runs React, Flutter and backend tests without repeating Android APK builds.

P00 ran all commands above successfully, including Android debug builds for all three apps. The backend test suite has four passing tests/subtests, including the canonical Swagger JSON route. Future phases add feature-specific tests rather than relying on these smoke checks.

Every Flutter API contract addition must include a generated-client test with a controlled Dio adapter. The test must verify the HTTP method/path, representative response deserialization and configured Dio behavior without contacting a live backend.
