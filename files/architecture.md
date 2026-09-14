# SafeDealz project structure and access model

P00 implemented this bootstrap structure. Read [start.md](start.md), [phases.md](phases.md), [security.md](security.md), [guides/flutter-CLAUDE.md](guides/flutter-CLAUDE.md) and [guides/backend-CLAUDE.md](guides/backend-CLAUDE.md).

## Tekrio application identifiers

Use lowercase reverse-domain identifiers, with a distinct final segment so all three apps can be installed together. These identifiers do not assert domain ownership or reserve publishing accounts.

| App | Directory | Dart project name | Android application ID / iOS bundle ID where supported |
| --- | --- | --- | --- |
| SafeDealz Store Manager | flutter/store_manager | safedealz_store_manager | com.tekrio.safedealz.storemanager |
| SafeDealz Vendor | flutter/vendor | safedealz_vendor | com.tekrio.safedealz.vendor |
| SafeDealz Diagnostics | flutter/diagnostics | safedealz_diagnostics | com.tekrio.safedealz.diagnostics |

Diagnostics targets Android. Store Manager/Vendor scaffold Android and iOS. Use organization com.tekrio.safedealz and set/verify the explicit final identifiers, rather than assuming flutter create derives them from the snake_case Dart names. React admin lives at `react/admin` and has no mobile application ID.

## Bootstrap order

1. Inspect SDKs, existing files and platform guides. Create three independent Flutter projects under flutter, preserving the parent CLAUDE.md. Give each a local instruction entry pointing to that guide and these SafeDealz overrides.
2. Apply lib/app, bloc, core, data, view, l10n and swagger structure from the Flutter guide. Use three-file BLoCs, generated API DTOs/clients/services, delegate repositories, GoRouter and central theme tokens. Do not introduce unrelated Firebase/cloud services simply because examples mention them. Share packages only when actual reuse warrants it.
3. Scaffold backend following Controller → Service → Repository → Model, centralized validation/errors and Mongoose indexes. Use backend/src for the layer directories and backend app.js/server.js entry points, documenting resolution of the guide's illustrative indentation. Add health and isolated-database test setup.
4. Scaffold React admin in P01; then deliver authentication and admin/store/manager/vendor APIs with their React pages in P02–P05. Do not postpone React until the mobile apps are complete.
5. Build diagnostic functionality in P08 after the manager inspection/evidence flow; P00 creates its project skeleton only. Resolve hardware and signed local QR feasibility before implementation of the relevant feature.

## External service boundaries

Cloudflare R2 is the object store for device evidence, rotation videos, bills and later KYC media. Buckets are private. Clients never receive permanent R2 credentials or public object URLs: the backend authorizes the record and store scope, issues short-lived signed operations, records object key/size/type/checksum, and rechecks authorization before download. Use portable repository-relative configuration documentation and environment variables for account ID, bucket, endpoint and secrets.

Razorpay is the payment gateway for vendor wallet recharge. The backend creates Razorpay Orders and verifies webhook signatures before posting an idempotent wallet credit. Flutter opens Razorpay Checkout using the public key and backend order details; Razorpay secrets stay in backend environment configuration. A client checkout callback is display state only until the verified backend payment event is reconciled. Store payout/provider transfer design remains a separate P16 concern and must not be inferred from the recharge integration.

## React organization

This is the project's chosen feature-based convention, not a universal React standard. Use React with TypeScript; select compatible tooling during bootstrap and record versions.

```text
react/admin/
  src/
    app/                 # entry, providers, router, app-wide boundaries
    layouts/             # authenticated shell and login layout
    features/
      auth/
      admins/
      stores/
      managers/
      vendors/
      # later: auctions, payments, rewards, support, reports
    shared/
      ui/                # buttons, fields, tables, dialogs
      api/               # generated contract types/client and session adapter
      auth/              # permission/scope helpers, never sole enforcement
      hooks/
      lib/
      styles/            # theme tokens
    test/                # shared test setup and fixtures
  e2e/
  public/
```

Each feature contains its pages, components, API/query adapters and colocated tests as needed. No direct fetch calls scattered through page components; no duplicated account/permission rules. Both Super Admin and Admin use the same React application with different authorized capabilities and store scopes. Backend policy remains authoritative.

## Four account roles and store scope

Use super_admin, admin, store_manager and vendor. Diagnostics has no business login and is not a fifth account role.

- Super Admin: global access; exclusively creates/manages Admin accounts and their assigned-store scope. Platform-wide settings, global financial ledgers and cross-store account controls stay Super Admin-only.
- Admin: sees only explicitly assigned branches and their authorized records/actions. Empty assignment means no store access. Assignment to one branch never grants its entire chain. Conservative management default: manage manager records within scope and vendor links to assigned stores; shared/global account mutations require Super Admin. No Admin creation, self-assignment or privilege escalation.
- Store Manager: current authorized branch work and existing ownership restrictions. This change does not widen customer-KYC permissions.
- Vendor: own account/wallet and eligible assigned-store auctions/purchases only. Linking to multiple stores never exposes other vendors' wallets or bids.

Admin store assignments are explicit unique account/store relations. All queries and writes intersect requested scope with server-authorized scope; client store IDs and JWT role/scope snapshots are not authority. Record scope changes in audit. Reassignment removes cached data/subscriptions and is enforced on the next server operation; revalidate on refresh and foreground/reconnect. Account deactivation retains terminal logout behavior.

Apply scope to menus, routes, dropdown choices, lists, detail pages, search, counts, dashboard aggregates, exports, media links, notifications, websocket rooms, support and background jobs. Reject unauthorized IDs and mixed-scope bulk requests. Async exports must recheck access at execution and download time.

A vendor can span branches belonging to different Admins. Show only the Admin's relevant vendor/store relationships and branch transactions; hide full wallet balance, global ledger, other branches and global credentials/status controls. Keep sensitive KYC restricted to the originating authorized manager and Super Admin under existing policy. Scoped Admin access does not automatically grant KYC reveal or global bank changes.

## Guide compatibility and security overrides

Flutter CLAUDE.md §5.6 records the SafeDealz session requirement: bounded refresh rotation, inactive-account enforcement and immediate Login redirect. Implement this flow without recursive refresh loops; preserve unrelated protected infrastructure.

Flutter CLAUDE.md §3.5 uses an encrypted HydratedBloc store derived from kPassword, whereas security.md requires platform-backed protection of session secrets. Record a concrete protected-key/token storage approach before session implementation; do not silently ship a hardcoded encryption secret or claim encrypted state alone protects tokens. HydratedBloc remains appropriate for non-secret persisted state. No existing protected file is changed in this planning revision.

P00 proved that swagger_parser emits Retrofit clients and Freezed DTOs, while service wrappers remain thin hand-written adapters. Never hand-edit generated output. The canonical OpenAPI file is backend/openapi/openapi.json and the backend serves it at /api-docs/swagger.json. `make -f files/Makefile generate-api` synchronizes it to each app's swagger/swagger.json before generation; `make -f files/Makefile check-p00` regenerates and runs the Flutter/backend foundation checks.

Each Flutter app owns ApiConfig and DioFactory under lib/core/network. The factory supplies the API base URL, JSON headers and ten-second connection/send/receive timeouts to generated Retrofit clients. API_BASE_URL passed with dart-define overrides defaults; Android emulator defaults to 10.0.2.2 and host/iOS development defaults to localhost. P02 adds authenticated interceptors after its secure refresh design is approved.

The client-approved application theme uses sky blue as the primary family everywhere. Use `#0369A1` for accessible primary actions and focus, `#38BDF8` for bright supporting highlights, `#E0F2FE` for selected/tinted surfaces, and purple only as a restrained secondary accent. Flutter, React admin, Diagnostics, prototypes and project-facing visual configuration must share these semantic tokens.

Page background color is a semantic design token, initially `app-background: #F0F9FF`. React must apply it through a reusable `PageSurface` in its P01 shared shell. Each Flutter app must expose the same token through ThemeData and introduce a reusable `AppPageScaffold` when that app's first production feature shell is implemented. Individual screens must not own raw background colors, so a later theme adjustment requires changing only the token/component. Full-screen diagnostic tests and camera surfaces are explicit exceptions with their own semantic surface tokens.

The verified P00 generator set is retrofit 4.8.0, retrofit_generator 9.7.0, freezed/freezed_annotation 2.x, json_serializable 6.9.x and the compatible build_runner resolution. These versions are intentionally pinned: newer Freezed generated classes failed analysis with the current parser, while Retrofit 4.9+ added a parser enum unsupported by retrofit_generator 9.7. Upgrade only as a dedicated tested task.

## Tests required early

P00: app IDs, Flutter analysis/widget smoke tests, backend health test and generator proof. P01: React type/build/component test setup. P02–P05: API integration and React browser tests for login, refresh, roles, Admin creation, assignments, cross-store rejection, manager/vendor onboarding and revoked scopes. Every subsequent phase retains these authorization gates.
