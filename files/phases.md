# SafeDealz implementation phases

Admin-first development-only roadmap; P00–P26 are complete. Visual HTML match continues as P27–P28 and is not authorized until the owner starts P27. Development handover is P29. Store Manager, Vendor and Diagnostics are Flutter apps; Super Admin is React web. Hosting, deployment and production rollout are outside this roadmap. Read [start.md](start.md), [plan.md](plan.md), [design.md](design.md), and [testing.md](testing.md). Continue with the React admin/API foundations before intake and diagnostic features. Latest confirmed amendments override older design prose; record conflicts in [decisions.md](decisions.md).

Each phase is split into three small or medium tasks: `.1` contract/data or decision preparation, `.2` implementation or feasibility evidence, `.3` integration/testing and documentation. Create numbered task files from [the template](tasks/TASK_TEMPLATE.md) when work is selected, rather than creating empty task files now. Split further when a task cannot be reviewed independently. These task IDs are roadmap identifiers, not existing files.

Every API task must implement and test its applicable [security gates](security.md) in the same phase. Security is not deferred to P24.

Each phase excludes later-phase features and unapproved architecture changes. API and database impact below must be made concrete in the active task before coding. Every affected Flutter feature requires unit/widget tests and applicable API integration tests; admin features require browser checks. P00 and documentation-only tasks use evidence review instead of claiming product tests. Dependency completion is required before starting a phase; independent work can be scheduled separately.

Phase completion is an automatic stop boundary unless the owner explicitly authorizes an inclusive phase range. Within a range, synchronize every intermediate phase and continue only through the named final phase. Broad repeat builds may run in that final phase when safely deferrable under [testing.md](testing.md); tests, security controls, contract checks, and builds required by an intermediate change remain part of that phase's gate.

## P00 — Flutter projects and backend bootstrap

- Status: Complete — TASK-001
- Dependencies: —
- Screens: —
- Scope: Read both platform guides and the SafeDealz overrides in architecture.md. Create the three Flutter projects first with the Tekrio application IDs, consistent BLoC/routing/codegen structure and smoke tests; then scaffold the backend Controller → Service → Repository → Model structure and health/test harness. Keep the root organized as backend, flutter, files and react, with all project Markdown under files, portable Obsidian memory under files/obsidian, and React admin under react/admin. Document unresolved provider/diagnostic choices without delaying independent bootstrap.
- API, data and client impact: Use the project layout and identifiers in architecture.md; define the canonical API contract and Swagger JSON route, synchronize each app's generator input, configure Dio/Retrofit/Freezed generation, provide one automatic generation command and prove generated-client deserialization. Diagnose hardware and QR feasibility before P08/P09 implementation; no diagnostic feature build in P00.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P00.1–P00.3 completed together in TASK-001: contract/bootstrap, scoped foundations, verification and synchronized records.
- Completion gate: All three Flutter projects analyze and pass bootstrap widget tests; app IDs verified; backend health test passes; guide conflicts documented and no protected existing infrastructure overwritten.

## P01 — React admin foundation and shared test tooling

- Status: Complete — TASK-002
- Dependencies: P00
- Screens: —
- Scope: Create React admin under react/admin using the feature-based structure in architecture.md, shared layout/themes, reusable `PageSurface` backed by the semantic `app-background` token, route and permission boundaries, API adapter and component/browser test tooling. Finish cross-project contract checks and build/test CI without deployment.
- API, data and client impact: React app/providers/router, shared UI, feature modules and test fixtures; isolated Mongo transaction-capable test environment and backend audit/outbox foundation. Do not build fake operational dashboard totals.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P01.1 — define contracts/data and acceptance cases; P01.2 — deliver scoped functionality/evidence; P01.3 — verify integration and synchronize completion records.
- Completion gate: Build, analyze and run sample API, Flutter widget and integration tests; verify generated-client reproducibility; prove that changing the React `app-background` token updates every shared-shell page without individual page edits.

## P02 — Role authentication APIs and React login

- Status: Complete — TASK-003
- Dependencies: P01
- Screens: S01,A00,M24,V17
- Scope: Implement super_admin, admin, store_manager and vendor authentication APIs and React login first; wire mobile login/session behavior against the same contract. Include password eye control, throttling, refresh rotation/reuse detection, revocation and active-account enforcement.
- API, data and client impact: Auth/session schemas, scoped middleware and mobile/web routes; no signup or forgot-password flow.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P02.1 — define contracts/data and acceptance cases; P02.2 — deliver scoped functionality/evidence; P02.3 — verify integration and synchronize completion records.
- Completion gate: Wrong-role access denied; repeated-password throttling tested; deactivation rejects requests/refresh and immediately routes notified clients to Login with tokens and back stack cleared; refresh retries are bounded; login has no notification icon; back navigation preserves context.

## P03 — Super Admin, Admin and assigned stores

- Status: Complete — TASK-004
- Dependencies: P02
- Screens: A02,A03,A04,A05; new A23 (Admins), A24 (Admin create/edit and store assignments)
- Scope: Build admin-account APIs and React pages first, chain/branch CRUD and explicit Admin-to-store assignments. Only Super Admin creates/edits/deactivates Admins and changes their store scope.
- API, data and client impact: Four-role enum, unique admin/store assignment records, centralized scope policy, React menus and route guards. Admin receives only assigned-store records and permitted actions; no assignment means empty access, never all stores.
- Security gate: Enforce server-side scope on lists, details, search, aggregates, exports, media, events and writes. Test forged store IDs, mixed-store bulk actions, removed assignments and direct URLs. See security.md and architecture.md.
- Tasks: P03.1 — admin/store contracts and authorization tests; P03.2 — APIs and React CRUD/assignments; P03.3 — cross-store isolation tests and documentation.
- Completion gate: Super Admin can create an Admin and assign branches; Admin cannot create another Admin, escalate permissions or see unassigned stores. Removing a scope clears cached visibility and blocks subsequent requests. A23/A24 design/prototype changes must be completed before UI implementation; current prototype does not yet contain them.

## P04 — Store Manager onboarding APIs and React pages

- Status: Complete — TASK-005
- Dependencies: P03
- Screens: A06,A07
- Scope: Create/manage Store Manager accounts, branch assignments, active status and onboarding validation through React.
- API, data and client impact: Reuse account contracts, manager assignment relations and scoped queries; multiple logins per branch supported. Super Admin has global management; Admin can manage permitted manager records only within assigned stores.
- Security gate: Test role escalation, unauthorized store assignment, cross-store account updates and immediate inactive-session logout. Shared account/global changes are Super Admin-only where they affect stores outside the Admin scope.
- Tasks: P04.1–P04.3 completed together in TASK-005: manager contracts/tests, API and React A06/A07, real API/browser/generated-client verification and documentation.
- Completion gate: Manager created in React can log into Flutter and sees only authorized branch work; deactivation and removed assignments enforced server-side.

## P05 — Vendor onboarding APIs and React pages

- Status: Complete — TASK-006
- Dependencies: P04
- Screens: A08,A09,V15
- Scope: Vendor account creation, safe existing-account linking and multi-chain/multi-store assignments; Flutter assigned-store view. Introduce the Vendor app's reusable `AppPageScaffold` backed by ThemeData `app-background` as its production feature shell begins.
- API, data and client impact: Reuse account/assignment service with vendor-specific validation. Keep one personal wallet per vendor; assignments never split or duplicate it.
- Security gate: Admin may manage links only to assigned stores. Global vendor account status/credentials and cross-store financial visibility remain Super Admin-only. Do not leak an existing vendor's other store relationships through lookup or duplicate errors.
- Tasks: P05.1–P05.3 completed together in TASK-006: vendor contracts/ownership tests, API and React A08/A09 plus Flutter V15, multi-chain isolation and documentation.
- Completion gate: Vendor assignment is limited to authorized stores and visible correctly in the vendor app; Admin cannot affect another Admin's store or inspect global wallet balances; Vendor feature pages inherit their background from the shared scaffold/token with no raw screen background colors.

## P06 — Device identity

- Status: Complete — TASK-007
- Dependencies: P05
- Screens: M01,M02,M03
- Scope: Device drafts, list filters, dual editable IMEI capture, Apple and Android fields. Introduce the Store Manager app's reusable `AppPageScaffold` backed by ThemeData `app-background` as its production feature shell begins.
- API, data and client impact: Draft ownership, identity validation and camera scan adapter; Apple storage/battery health, Android RAM 4/6/8/12/24 only.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P06.1–P06.3 completed together in TASK-007: device identity contracts/tests, APIs and Store Manager M01–M03, generated-client verification and documentation.
- Completion gate: Conditional required fields, scan correction, duplicates and draft resume tested; Apple has no RAM selector; Manager feature pages inherit their background from the shared scaffold/token with no raw screen background colors.

## P07 — Manual inspection and evidence

- Status: Complete — TASK-008
- Dependencies: P06
- Screens: M04,M05,M06
- Scope: Complete manual form on both platforms and live capture of six images plus one rotation video.
- API, data and client impact: Separate inspection/evidence records; age bands and mandatory bill below 11 months. Store live-captured images, rotation videos and bills in a private Cloudflare R2 bucket through backend-issued short-lived signed upload/download requests; persist only object metadata and keys in MongoDB.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P07.1–P07.3 completed together in TASK-008: inspection/media contracts, APIs and Store Manager M04–M06, generated-client verification and documentation.
- Completion gate: All form steps remain editable despite diagnostics; required bill and seven captures enforced; permissions, retake, interrupted R2 upload, expired signatures and unauthorized media access tested; no RGB inspection.

## P08 — Android diagnostic tests

- Status: Complete
- Dependencies: P07
- Screens: D01,D02,D03,D04,D05,D06,D07
- Scope: Flutter Android Diagnostics app: local diagnostic workflow, hardware tests, full-screen touch dots and report review; native Android bridges only where hardware access requires them. Introduce its reusable `AppPageScaffold` for ordinary pages; full-screen test surfaces use separate semantic diagnostic tokens.
- API, data and client impact: Local result schema and hardware adapters; no customer data or transfer before final import.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P08.1–P08.3 completed together in TASK-009: local Diagnostics D01–D07, injectable adapters, 120-dot 90% touch gate, local encrypted report and documentation. TASK-010 added the public backend catalog module for intake/inspection labels.
- Completion gate: Physical-device checks plus automated state tests: permissions, unsupported hardware, 120 dots, percentage, retries and explicit submission; never fabricate a passing result; ordinary pages inherit the reusable background token while test surfaces use explicit diagnostic tokens.

## P09 — Diagnostic QR handoff

- Status: Complete — TASK-011
- Dependencies: P07,P08
- Screens: D08,M07,M09
- Scope: Final result QR scanned by manager; separate manual and diagnostic cards; Apple bypass.
- API, data and client impact: Approved signing/transfer design, device binding, replay/expiry validation, import contract and readiness event.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P09.1–P09.3 completed together in TASK-011: signed QR contract, D08/M07/M09, import verification and documentation.
- Completion gate: Valid import persists once; altered, duplicate, mismatched and expired data handled; neither app launches the other; no pairing flow; Android auction waits for valid import.

## P10 — Wallet ledger

- Status: Complete — TASK-012
- Dependencies: P05
- Screens: V07,V10,V11,A14
- Scope: Personal vendor wallet, immutable ledger, available/reserved amounts and admin visibility.
- API, data and client impact: Atomic paise ledger, transaction indexes, idempotency and reservation primitives; no shared wallet.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P10.1–P10.3 completed together in TASK-012: wallet contracts, transactional ledger, V07/V10/V11/A14 and documentation.
- Completion gate: Concurrent reservations cannot overspend; duplicate release cannot credit twice; balance reconciles to ledger; ownership enforced.

## P11 — Wallet recharge

- Status: Complete — TASK-013
- Dependencies: P10
- Screens: V08,V09
- Scope: Razorpay wallet recharge checkout, pending/success/failure and provider reconciliation.
- API, data and client impact: Backend-created Razorpay Orders, Flutter Razorpay Checkout adapter, verified webhook signatures, provider payment/order IDs and unique wallet-credit records. Credentials remain server-side; client success never credits the wallet.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P11.1–P11.3 completed together in TASK-013: recharge contracts, HMAC webhook, V08/V09 and documentation.
- Completion gate: Razorpay test-mode checkout succeeds; invalid signatures are rejected; duplicate/out-of-order webhooks credit once; client success alone never credits; failed, cancelled and unknown payments reconcile safely.

## P12 — Auction lifecycle and settings

- Status: Complete — TASK-014
- Dependencies: P09,P03
- Screens: M10,A20
- Scope: Server-driven start/close, assigned vendor eligibility and future-round timer configuration.
- API, data and client impact: Round snapshots, scheduler recovery, authoritative timestamps and event delivery; defaults 3/10 minutes.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P12.1–P12.3 completed together in TASK-014: auction contracts, start/tick/cancel, M10/A20 and documentation.
- Completion gate: Duplicate start blocked; close survives worker restart; no simultaneous rounds; settings change future rounds only; notification events emitted.

## P13 — Vendor bidding and fee holds

- Status: Complete
- Dependencies: P10,P12
- Screens: V01,V02,V03,V04,V05,V06,V13
- Scope: Assigned auction discovery, media, independent report cards, bid calculator and immutable confirmation.
- API, data and client impact: Reserve final bid plus fee atomically; <=20k 8%, >20k to30k 7%, >30k 6%; snapshot rounded fee.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P13.1–P13.3 completed together in TASK-015: bid contracts, fee holds, V01–V06/V13 and documentation.
- Completion gate: Boundary and rounding tests; insufficient total balance rejected; concurrent submissions and one bid per vendor/round enforced; competitor bids hidden.

## P14 — Offer decision and re-auction

- Status: Complete
- Dependencies: P13
- Screens: M11,M15
- Scope: Highest offer, acceptance window, decline reasons and rebid expectation dialog.
- API, data and client impact: Deterministic highest/earliest winner; release losing holds; expiry/decline/rebid release bid and fee; new immutable round.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P14.1–P14.3 completed together in TASK-016: winner selection, decline/rebid/expiry, M11/M15 and documentation.
- Completion gate: Fake-clock deadline races, ties, no bids and duplicate rebid tested; Other requires reason; no pre-acceptance customer KYC.

## P15 — Acceptance and customer verification

- Status: Complete
- Dependencies: P14
- Screens: M08,M12
- Scope: Accept creates backend payment instruction immediately; then customer KYC and purchased device form.
- API, data and client impact: Atomic acceptance, beneficiary snapshot and KYC-gated transfer readiness; OTP, live ID/portrait and separate purchased device identity.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P15.1 — define contracts/data and acceptance cases; P15.2 — deliver scoped functionality/evidence; P15.3 — verify integration and synchronize completion records.
- Completion gate: Accept/expiry race has one outcome; provider transfer waits for KYC; Apple purchased model/storage, Android RAM/storage and editable scanned IMEIs tested; KYC visible only to authorized creator/admin.

## P16 — Payout and reconciliation

- Status: Complete
- Dependencies: P15,P11
- Screens: M13,A12,A13
- Scope: Automatic store-business payout after required verification, status/retry and reconciliation.
- API, data and client impact: Provider transfer adapter, outbox, idempotent webhook state machine and fee collection on completed deal.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P16.1 — define contracts/data and acceptance cases; P16.2 — deliver scoped functionality/evidence; P16.3 — verify integration and synchronize completion records.
- Completion gate: No admin approval gate; duplicate callbacks cannot pay twice; unknown outcome reconciled before retry; failed payout never blindly refunds or marks paid.

## P17 — Deal history and pickup

- Status: Complete
- Dependencies: P16
- Screens: M14,M16,M17,V12,A10,A11
- Scope: Device/round timeline, separate inspection and diagnostic cards, vendor store location and final pickup.
- API, data and client impact: Scoped deal read models, pickup transition, audit and vendor notification event.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P17.1 — define contracts/data and acceptance cases; P17.2 — deliver scoped functionality/evidence; P17.3 — verify integration and synchronize completion records.
- Completion gate: Only originating store can mark eligible pickup; repeated action idempotent; no deadline or vendor OTP; vendor/admin detail permissions tested.

## P18 — Reward issuance and policy

- Status: Complete
- Dependencies: P16
- Screens: A15,A16,A17
- Scope: Paid-deal reward creation, customer ledger and branch reward policy.
- API, data and client impact: Issue once from bid excluding fee; 10 points per ₹100, each point ₹0.50; branch-only scope with future multi-branch schema capability.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P18.1 — define contracts/data and acceptance cases; P18.2 — deliver scoped functionality/evidence; P18.3 — verify integration and synchronize completion records.
- Completion gate: Duplicate payment event issues once; rounding policy confirmed before code; other branches cannot redeem; policy snapshots and audit tested.

## P19 — Reward redemption

- Status: Complete
- Dependencies: P18
- Screens: M18,M19,M20,M21,M22
- Scope: Lookup, all redemptions, customer history, partial redemption, invoice and receipt.
- API, data and client impact: OTP bound to branch/amount/invoice; atomic point debit; manual discount in separate billing software.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P19.1 — define contracts/data and acceptance cases; P19.2 — deliver scoped functionality/evidence; P19.3 — verify integration and synchronize completion records.
- Completion gate: Concurrent/repeated redemption, expired OTP, incorrect branch and insufficient points rejected; partial balance and history correct.

## P20 — Notifications and broadcasts

- Status: Complete
- Dependencies: P17,P19
- Screens: S04
- Scope: Role-specific notification inbox and admin filtered history/targeted broadcasts.
- API, data and client impact: Outbox consumers, delivery records, recipient filters and deduplication; vendor offers/pickup scope.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P20.1 — define contracts/data and acceptance cases; P20.2 — deliver scoped functionality/evidence; P20.3 — verify integration and synchronize completion records.
- Completion gate: All/role/chain/branch/individual targeting and access tests; retries do not duplicate messages; no notifications before login; external sends use test providers.

## P21 — Support management

- Status: Complete
- Dependencies: P03
- Screens: M23,V16,A18
- Scope: Manager/vendor tickets and admin assignment, response and resolution.
- API, data and client impact: Ticket ownership, attachments, status history and notification events.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P21.1 — define contracts/data and acceptance cases; P21.2 — deliver scoped functionality/evidence; P21.3 — verify integration and synchronize completion records.
- Completion gate: Users cannot read others’ tickets; admin handles incoming tickets and cannot create customer-style tickets; attachment access and lifecycle tested.

## P22 — Admin oversight and reporting

- Status: Complete
- Dependencies: P17,P19,P20,P21
- Screens: A01,A19,A21,A22,V14
- Scope: Overview, scoped reports/exports, immutable audit and account sessions.
- API, data and client impact: Authorized aggregate queries, export jobs and audit readers with sensitive-field redaction.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P22.1 — define contracts/data and acceptance cases; P22.2 — deliver scoped functionality/evidence; P22.3 — verify integration and synchronize completion records.
- Completion gate: Report totals reconcile with ledgers; export permissions and filters tested; audit cannot be edited; no pending-SMS attention tile; all detail pages return to parent.

## P23 — Cross-app experience verification

- Status: Complete
- Dependencies: P22
- Screens: —
- Scope: Complete screen inventory using the client-approved sky-blue theme, responsive layouts and accessible interaction states. Purple may remain in the prototype as a comparison preview but is not a production implementation target.
- API, data and client impact: Connect all approved routes and contract clients; fix integration gaps without adding scope.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P23.1 — define contracts/data and acceptance cases; P23.2 — deliver scoped functionality/evidence; P23.3 — verify integration and synchronize completion records.
- Completion gate: Every catalogued screen reachable; mobile widget/navigation and admin browser tests cover loading/empty/error states, the sky-blue production theme and nested back navigation.

## P24 — End-to-end and resilience

- Status: Complete
- Dependencies: P23
- Screens: —
- Scope: Android and Apple journeys from intake to payout, pickup and rewards; recovery and concurrency.
- API, data and client impact: Run controlled providers, production-equivalent database constraints, background jobs and diagnostic physical devices.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P24.1 — define contracts/data and acceptance cases; P24.2 — deliver scoped functionality/evidence; P24.3 — verify integration and synchronize completion records.
- Completion gate: API and Flutter integration suites cover happy paths, rebid, insufficient funds, deactivation, failed/unknown payment, offline recovery and duplicate events.

## P25 — Admin HTML visual match

- Status: Complete — TASK-027
- Dependencies: P24
- Screens: A00–A24, S04 (admin)
- Scope: Run React admin in the browser beside [design.html](design.html). For each listed screen, if the live UI matches the HTML frame mark it **Same** in [screen-match.md](screen-match.md); if it does not, restyle that screen to match the HTML and mark it **Updated**.
- API, data and client impact: Visual and copy alignment only. No new product APIs, no OpenAPI bump unless a visible field is already missing from the contract, no Store Manager/Vendor/Diagnostics work.
- Security gate: Do not weaken existing authorization while restyling. Re-run admin browser checks after UI edits.
- Tasks: P25.1 — compare each admin HTML frame; P25.2 — restyle mismatches; P25.3 — mark the register and run `check-p25`.
- Completion gate: Every P25 row in screen-match.md is Same or Updated; `make -f files/Makefile check-p25` passes.

## P26 — Store Manager HTML visual match

- Status: Complete — TASK-028
- Dependencies: P25
- Screens: S01, S04, M01–M24
- Scope: Run Store Manager on the emulator beside the matching mobile HTML frames. Mark each screen **Same** or restyle it and mark **Updated**. Login S01 is compared to the HTML Store Manager/Vendor login frame.
- API, data and client impact: Flutter UI only. Do not add workflows. Shared widgets may change when that is required to match HTML.
- Security gate: Keep password-eye, inactive-account logout and scope behaviour intact.
- Tasks: P26.1 — compare each Store Manager HTML frame; P26.2 — restyle mismatches; P26.3 — mark the register and run `check-p26`.
- Completion gate: Every P26 row in screen-match.md is Same or Updated; `make -f files/Makefile check-p26` passes.

## P27 — Vendor HTML visual match

- Status: Planned
- Dependencies: P26
- Screens: S01, S04, V01–V17
- Scope: Run Vendor on the emulator beside the matching mobile HTML frames. Mark each screen **Same** or restyle it and mark **Updated**.
- API, data and client impact: Flutter UI only. Do not add workflows.
- Security gate: Keep wallet amounts, bid immutability and inactive-account logout intact.
- Tasks: P27.1 — compare each Vendor HTML frame; P27.2 — restyle mismatches; P27.3 — mark the register and run `check-p27`.
- Completion gate: Every P27 row in screen-match.md is Same or Updated; `make -f files/Makefile check-p27` passes.

## P28 — Diagnostics HTML visual match

- Status: Planned
- Dependencies: P27
- Screens: D01–D08
- Scope: Run Diagnostics on an Android emulator/device beside the matching HTML frames. Mark each screen **Same** or restyle it and mark **Updated**. D04 remains a full-screen diagnostic surface, not the ordinary page scaffold.
- API, data and client impact: Diagnostics UI only. Do not change QR payload, signature or Store Manager import rules.
- Security gate: Keep signed-result generation and local-only report storage intact.
- Tasks: P28.1 — compare each Diagnostics HTML frame; P28.2 — restyle mismatches; P28.3 — mark the register and run `check-p28`.
- Completion gate: Every P28 row in screen-match.md is Same or Updated; `make -f files/Makefile check-p28` passes.

## P29 — Development completion and handover

- Status: Planned
- Dependencies: P28
- Screens: —
- Scope: Resolve remaining review defects, prepare the local client demo and development handover, and confirm all approved requirements are implemented. This is the former P25.
- API, data and client impact: Document local setup, test fixtures, database migrations/index setup, sandbox provider configuration and API/client development instructions.
- Security gate: Apply the P23–P29 controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P29.1 — define contracts/data and acceptance cases; P29.2 — deliver scoped functionality/evidence; P29.3 — verify integration and synchronize completion records.
- Completion gate: Local Flutter/React/backend builds and smoke tests pass; all required tests and completion records are current; known limitations are documented. No hosting, deployment, store publishing or production rollout.
