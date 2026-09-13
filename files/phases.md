# SafeDealz implementation phases

Admin-first development-only roadmap; the P00 foundation is complete and product feature implementation has not started. Store Manager, Vendor and Diagnostics are Flutter apps; Super Admin is React web. Hosting, deployment and production rollout are outside this roadmap. Read [start.md](start.md), [plan.md](plan.md), [design.md](design.md), and [testing.md](testing.md). Continue with the React admin/API foundations before intake and diagnostic features. Latest confirmed amendments override older design prose; record conflicts in [decisions.md](decisions.md).

Each phase is split into three small or medium tasks: `.1` contract/data or decision preparation, `.2` implementation or feasibility evidence, `.3` integration/testing and documentation. Create numbered task files from [the template](tasks/TASK_TEMPLATE.md) when work is selected, rather than creating empty task files now. Split further when a task cannot be reviewed independently. These task IDs are roadmap identifiers, not existing files.

Every API task must implement and test its applicable [security gates](security.md) in the same phase. Security is not deferred to P24.

Each phase excludes later-phase features and unapproved architecture changes. API and database impact below must be made concrete in the active task before coding. Every affected Flutter feature requires unit/widget tests and applicable API integration tests; admin features require browser checks. P00 and documentation-only tasks use evidence review instead of claiming product tests. Dependency completion is required before starting a phase; independent work can be scheduled separately.

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

- Status: Planned
- Dependencies: P00
- Screens: —
- Scope: Create React admin under react/admin using the feature-based structure in architecture.md, shared layout/themes, route and permission boundaries, API adapter and component/browser test tooling. Finish cross-project contract checks and build/test CI without deployment.
- API, data and client impact: React app/providers/router, shared UI, feature modules and test fixtures; isolated Mongo transaction-capable test environment and backend audit/outbox foundation. Do not build fake operational dashboard totals.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P01.1 — define contracts/data and acceptance cases; P01.2 — deliver scoped functionality/evidence; P01.3 — verify integration and synchronize completion records.
- Completion gate: Build, analyze and run sample API, Flutter widget and integration tests; verify generated-client reproducibility.

## P02 — Role authentication APIs and React login

- Status: Planned
- Dependencies: P01
- Screens: S01,A00,M24,V17
- Scope: Implement super_admin, admin, store_manager and vendor authentication APIs and React login first; wire mobile login/session behavior against the same contract. Include password eye control, throttling, refresh rotation/reuse detection, revocation and active-account enforcement.
- API, data and client impact: Auth/session schemas, scoped middleware and mobile/web routes; no signup or forgot-password flow.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P02.1 — define contracts/data and acceptance cases; P02.2 — deliver scoped functionality/evidence; P02.3 — verify integration and synchronize completion records.
- Completion gate: Wrong-role access denied; repeated-password throttling tested; deactivation rejects requests/refresh and immediately routes notified clients to Login with tokens and back stack cleared; refresh retries are bounded; login has no notification icon; back navigation preserves context.

## P03 — Super Admin, Admin and assigned stores

- Status: Planned
- Dependencies: P02
- Screens: A02,A03,A04,A05; new A23 (Admins), A24 (Admin create/edit and store assignments)
- Scope: Build admin-account APIs and React pages first, chain/branch CRUD and explicit Admin-to-store assignments. Only Super Admin creates/edits/deactivates Admins and changes their store scope.
- API, data and client impact: Four-role enum, unique admin/store assignment records, centralized scope policy, React menus and route guards. Admin receives only assigned-store records and permitted actions; no assignment means empty access, never all stores.
- Security gate: Enforce server-side scope on lists, details, search, aggregates, exports, media, events and writes. Test forged store IDs, mixed-store bulk actions, removed assignments and direct URLs. See security.md and architecture.md.
- Tasks: P03.1 — admin/store contracts and authorization tests; P03.2 — APIs and React CRUD/assignments; P03.3 — cross-store isolation tests and documentation.
- Completion gate: Super Admin can create an Admin and assign branches; Admin cannot create another Admin, escalate permissions or see unassigned stores. Removing a scope clears cached visibility and blocks subsequent requests. A23/A24 design/prototype changes must be completed before UI implementation; current prototype does not yet contain them.

## P04 — Store Manager onboarding APIs and React pages

- Status: Planned
- Dependencies: P03
- Screens: A06,A07
- Scope: Create/manage Store Manager accounts, branch assignments, active status and onboarding validation through React.
- API, data and client impact: Reuse account contracts, manager assignment relations and scoped queries; multiple logins per branch supported. Super Admin has global management; Admin can manage permitted manager records only within assigned stores.
- Security gate: Test role escalation, unauthorized store assignment, cross-store account updates and immediate inactive-session logout. Shared account/global changes are Super Admin-only where they affect stores outside the Admin scope.
- Tasks: P04.1 — manager contracts/tests; P04.2 — API and React forms/list; P04.3 — real API/browser/mobile login verification and documentation.
- Completion gate: Manager created in React can log into Flutter and sees only authorized branch work; deactivation and removed assignments enforced server-side.

## P05 — Vendor onboarding APIs and React pages

- Status: Planned
- Dependencies: P04
- Screens: A08,A09,V15
- Scope: Vendor account creation, safe existing-account linking and multi-chain/multi-store assignments; Flutter assigned-store view.
- API, data and client impact: Reuse account/assignment service with vendor-specific validation. Keep one personal wallet per vendor; assignments never split or duplicate it.
- Security gate: Admin may manage links only to assigned stores. Global vendor account status/credentials and cross-store financial visibility remain Super Admin-only. Do not leak an existing vendor's other store relationships through lookup or duplicate errors.
- Tasks: P05.1 — vendor contracts/ownership tests; P05.2 — API and React pages plus Flutter store view; P05.3 — multi-chain isolation and regression tests/documentation.
- Completion gate: Vendor assignment is limited to authorized stores and visible correctly in the vendor app; Admin cannot affect another Admin's store or inspect global wallet balances.

## P06 — Device identity

- Status: Planned
- Dependencies: P05
- Screens: M01,M02,M03
- Scope: Device drafts, list filters, dual editable IMEI capture, Apple and Android fields.
- API, data and client impact: Draft ownership, identity validation and camera scan adapter; Apple storage/battery health, Android RAM 4/6/8/12/24 only.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P06.1 — define contracts/data and acceptance cases; P06.2 — deliver scoped functionality/evidence; P06.3 — verify integration and synchronize completion records.
- Completion gate: Conditional required fields, scan correction, duplicates and draft resume tested; Apple has no RAM selector.

## P07 — Manual inspection and evidence

- Status: Planned
- Dependencies: P06
- Screens: M04,M05,M06
- Scope: Complete manual form on both platforms and live capture of six images plus one rotation video.
- API, data and client impact: Separate inspection/evidence records; age bands, mandatory bill below 11 months, private media upload contracts.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P07.1 — define contracts/data and acceptance cases; P07.2 — deliver scoped functionality/evidence; P07.3 — verify integration and synchronize completion records.
- Completion gate: All form steps remain editable despite diagnostics; required bill and seven captures enforced; permissions, retake and interrupted upload tested; no RGB inspection.

## P08 — Android diagnostic tests

- Status: Planned
- Dependencies: P07
- Screens: D01,D02,D03,D04,D05,D06,D07
- Scope: Flutter Android Diagnostics app: local diagnostic workflow, hardware tests, full-screen touch dots and report review; native Android bridges only where hardware access requires them.
- API, data and client impact: Local result schema and hardware adapters; no customer data or transfer before final import.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P08.1 — define contracts/data and acceptance cases; P08.2 — deliver scoped functionality/evidence; P08.3 — verify integration and synchronize completion records.
- Completion gate: Physical-device checks plus automated state tests: permissions, unsupported hardware, 120 dots, percentage, retries and explicit submission; never fabricate a passing result.

## P09 — Diagnostic QR handoff

- Status: Planned
- Dependencies: P07,P08
- Screens: D08,M07,M09
- Scope: Final result QR scanned by manager; separate manual and diagnostic cards; Apple bypass.
- API, data and client impact: Approved signing/transfer design, device binding, replay/expiry validation, import contract and readiness event.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P09.1 — define contracts/data and acceptance cases; P09.2 — deliver scoped functionality/evidence; P09.3 — verify integration and synchronize completion records.
- Completion gate: Valid import persists once; altered, duplicate, mismatched and expired data handled; neither app launches the other; no pairing flow; Android auction waits for valid import.

## P10 — Wallet ledger

- Status: Planned
- Dependencies: P05
- Screens: V07,V10,V11,A14
- Scope: Personal vendor wallet, immutable ledger, available/reserved amounts and admin visibility.
- API, data and client impact: Atomic paise ledger, transaction indexes, idempotency and reservation primitives; no shared wallet.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P10.1 — define contracts/data and acceptance cases; P10.2 — deliver scoped functionality/evidence; P10.3 — verify integration and synchronize completion records.
- Completion gate: Concurrent reservations cannot overspend; duplicate release cannot credit twice; balance reconciles to ledger; ownership enforced.

## P11 — Wallet recharge

- Status: Planned
- Dependencies: P10
- Screens: V08,V09
- Scope: Recharge checkout, pending/success/failure and provider reconciliation.
- API, data and client impact: Sandbox provider adapter, verified webhooks and unique credit records.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P11.1 — define contracts/data and acceptance cases; P11.2 — deliver scoped functionality/evidence; P11.3 — verify integration and synchronize completion records.
- Completion gate: Duplicate/out-of-order webhooks credit once; client success alone never credits; failed and unknown payments handled.

## P12 — Auction lifecycle and settings

- Status: Planned
- Dependencies: P09,P03
- Screens: M10,A20
- Scope: Server-driven start/close, assigned vendor eligibility and future-round timer configuration.
- API, data and client impact: Round snapshots, scheduler recovery, authoritative timestamps and event delivery; defaults 3/10 minutes.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P12.1 — define contracts/data and acceptance cases; P12.2 — deliver scoped functionality/evidence; P12.3 — verify integration and synchronize completion records.
- Completion gate: Duplicate start blocked; close survives worker restart; no simultaneous rounds; settings change future rounds only; notification events emitted.

## P13 — Vendor bidding and fee holds

- Status: Planned
- Dependencies: P10,P12
- Screens: V01,V02,V03,V04,V05,V06,V13
- Scope: Assigned auction discovery, media, independent report cards, bid calculator and immutable confirmation.
- API, data and client impact: Reserve final bid plus fee atomically; <=20k 8%, >20k to30k 7%, >30k 6%; snapshot rounded fee.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P13.1 — define contracts/data and acceptance cases; P13.2 — deliver scoped functionality/evidence; P13.3 — verify integration and synchronize completion records.
- Completion gate: Boundary and rounding tests; insufficient total balance rejected; concurrent submissions and one bid per vendor/round enforced; competitor bids hidden.

## P14 — Offer decision and re-auction

- Status: Planned
- Dependencies: P13
- Screens: M11,M15
- Scope: Highest offer, acceptance window, decline reasons and rebid expectation dialog.
- API, data and client impact: Deterministic highest/earliest winner; release losing holds; expiry/decline/rebid release bid and fee; new immutable round.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P14.1 — define contracts/data and acceptance cases; P14.2 — deliver scoped functionality/evidence; P14.3 — verify integration and synchronize completion records.
- Completion gate: Fake-clock deadline races, ties, no bids and duplicate rebid tested; Other requires reason; no pre-acceptance customer KYC.

## P15 — Acceptance and customer verification

- Status: Planned
- Dependencies: P14
- Screens: M08,M12
- Scope: Accept creates backend payment instruction immediately; then customer KYC and purchased device form.
- API, data and client impact: Atomic acceptance, beneficiary snapshot and KYC-gated transfer readiness; OTP, live ID/portrait and separate purchased device identity.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P15.1 — define contracts/data and acceptance cases; P15.2 — deliver scoped functionality/evidence; P15.3 — verify integration and synchronize completion records.
- Completion gate: Accept/expiry race has one outcome; provider transfer waits for KYC; Apple purchased model/storage, Android RAM/storage and editable scanned IMEIs tested; KYC visible only to authorized creator/admin.

## P16 — Payout and reconciliation

- Status: Planned
- Dependencies: P15,P11
- Screens: M13,A12,A13
- Scope: Automatic store-business payout after required verification, status/retry and reconciliation.
- API, data and client impact: Provider transfer adapter, outbox, idempotent webhook state machine and fee collection on completed deal.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P16.1 — define contracts/data and acceptance cases; P16.2 — deliver scoped functionality/evidence; P16.3 — verify integration and synchronize completion records.
- Completion gate: No admin approval gate; duplicate callbacks cannot pay twice; unknown outcome reconciled before retry; failed payout never blindly refunds or marks paid.

## P17 — Deal history and pickup

- Status: Planned
- Dependencies: P16
- Screens: M14,M16,M17,V12,A10,A11
- Scope: Device/round timeline, separate inspection and diagnostic cards, vendor store location and final pickup.
- API, data and client impact: Scoped deal read models, pickup transition, audit and vendor notification event.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P17.1 — define contracts/data and acceptance cases; P17.2 — deliver scoped functionality/evidence; P17.3 — verify integration and synchronize completion records.
- Completion gate: Only originating store can mark eligible pickup; repeated action idempotent; no deadline or vendor OTP; vendor/admin detail permissions tested.

## P18 — Reward issuance and policy

- Status: Planned
- Dependencies: P16
- Screens: A15,A16,A17
- Scope: Paid-deal reward creation, customer ledger and branch reward policy.
- API, data and client impact: Issue once from bid excluding fee; 10 points per ₹100, each point ₹0.50; branch-only scope with future multi-branch schema capability.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P18.1 — define contracts/data and acceptance cases; P18.2 — deliver scoped functionality/evidence; P18.3 — verify integration and synchronize completion records.
- Completion gate: Duplicate payment event issues once; rounding policy confirmed before code; other branches cannot redeem; policy snapshots and audit tested.

## P19 — Reward redemption

- Status: Planned
- Dependencies: P18
- Screens: M18,M19,M20,M21,M22
- Scope: Lookup, all redemptions, customer history, partial redemption, invoice and receipt.
- API, data and client impact: OTP bound to branch/amount/invoice; atomic point debit; manual discount in separate billing software.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P19.1 — define contracts/data and acceptance cases; P19.2 — deliver scoped functionality/evidence; P19.3 — verify integration and synchronize completion records.
- Completion gate: Concurrent/repeated redemption, expired OTP, incorrect branch and insufficient points rejected; partial balance and history correct.

## P20 — Notifications and broadcasts

- Status: Planned
- Dependencies: P17,P19
- Screens: S04
- Scope: Role-specific notification inbox and admin filtered history/targeted broadcasts.
- API, data and client impact: Outbox consumers, delivery records, recipient filters and deduplication; vendor offers/pickup scope.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P20.1 — define contracts/data and acceptance cases; P20.2 — deliver scoped functionality/evidence; P20.3 — verify integration and synchronize completion records.
- Completion gate: All/role/chain/branch/individual targeting and access tests; retries do not duplicate messages; no notifications before login; external sends use test providers.

## P21 — Support management

- Status: Planned
- Dependencies: P03
- Screens: M23,V16,A18
- Scope: Manager/vendor tickets and admin assignment, response and resolution.
- API, data and client impact: Ticket ownership, attachments, status history and notification events.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P21.1 — define contracts/data and acceptance cases; P21.2 — deliver scoped functionality/evidence; P21.3 — verify integration and synchronize completion records.
- Completion gate: Users cannot read others’ tickets; admin handles incoming tickets and cannot create customer-style tickets; attachment access and lifecycle tested.

## P22 — Admin oversight and reporting

- Status: Planned
- Dependencies: P17,P19,P20,P21
- Screens: A01,A19,A21,A22,V14
- Scope: Overview, scoped reports/exports, immutable audit and account sessions.
- API, data and client impact: Authorized aggregate queries, export jobs and audit readers with sensitive-field redaction.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P22.1 — define contracts/data and acceptance cases; P22.2 — deliver scoped functionality/evidence; P22.3 — verify integration and synchronize completion records.
- Completion gate: Report totals reconcile with ledgers; export permissions and filters tested; audit cannot be edited; no pending-SMS attention tile; all detail pages return to parent.

## P23 — Cross-app experience verification

- Status: Planned
- Dependencies: P22
- Screens: —
- Scope: Complete screen inventory using the client-approved sky-blue theme, responsive layouts and accessible interaction states. Purple may remain in the prototype as a comparison preview but is not a production implementation target.
- API, data and client impact: Connect all approved routes and contract clients; fix integration gaps without adding scope.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P23.1 — define contracts/data and acceptance cases; P23.2 — deliver scoped functionality/evidence; P23.3 — verify integration and synchronize completion records.
- Completion gate: Every catalogued screen reachable; mobile widget/navigation and admin browser tests cover loading/empty/error states, the sky-blue production theme and nested back navigation.

## P24 — End-to-end and resilience

- Status: Planned
- Dependencies: P23
- Screens: —
- Scope: Android and Apple journeys from intake to payout, pickup and rewards; recovery and concurrency.
- API, data and client impact: Run controlled providers, production-equivalent database constraints, background jobs and diagnostic physical devices.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P24.1 — define contracts/data and acceptance cases; P24.2 — deliver scoped functionality/evidence; P24.3 — verify integration and synchronize completion records.
- Completion gate: API and Flutter integration suites cover happy paths, rebid, insufficient funds, deactivation, failed/unknown payment, offline recovery and duplicate events.

## P25 — Development completion and handover

- Status: Planned
- Dependencies: P24
- Screens: —
- Scope: Resolve review defects, prepare local client demo and development handover, and confirm all approved requirements are implemented.
- API, data and client impact: Document local setup, test fixtures, database migrations/index setup, sandbox provider configuration and API/client development instructions.
- Security gate: Apply the phase-specific controls and negative tests in [security.md](security.md); record passing evidence before completion.
- Tasks: P25.1 — define contracts/data and acceptance cases; P25.2 — deliver scoped functionality/evidence; P25.3 — verify integration and synchronize completion records.
- Completion gate: Local Flutter/React/backend builds and smoke tests pass; all required tests and completion records are current; known limitations are documented. No hosting, deployment, store publishing or production rollout.
