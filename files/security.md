# Security implementation and verification gates

These requirements apply when each API is implemented, not only at final testing. Read with [phases.md](phases.md) and [testing.md](testing.md). Product implementation has not started.

## Login and sessions — P02

- Prevent repeated password guessing with server-side account and IP rate limits, shared across API instances. Initial configurable baseline: 5 failed attempts per account in 15 minutes triggers a 15-minute temporary cooldown; 30 login attempts per IP in 15 minutes triggers throttling. These are project defaults, not OWASP-mandated numbers. Test shared-network effects and distributed attacks; never permanently deactivate an account because an attacker guessed passwords.
- Return generic invalid-credentials responses without revealing account existence. Apply consistent throttling to unknown identifiers. Return HTTP 429 with Retry-After for throttling; show a cooldown message and prevent repeated submit taps in clients. No password retry loops or automatic credential resubmission.
- Store passwords using a maintained adaptive password hashing library with per-password salts; never store reversible/plaintext passwords or log credentials. Define password length and breached-password checks before onboarding implementation. No signup/forgot-password screens are introduced.
- Validate token signature, allowed algorithm, issuer, audience and expiry. Store refresh-token digests server-side, rotate atomically on successful refresh, detect reuse and revoke the affected session family. Expired, revoked and malformed tokens cannot mint a session.
- On EVERY login, refresh and protected API request, enforce authoritative account existence, active status and session revocation. Never rely on an active flag inside an old JWT. Account deactivation revokes all sessions; reactivation does not resurrect old tokens.
- For a valid session whose account has active=false, return HTTP 401 with stable code ACCOUNT_INACTIVE and no new tokens. Revoked/expired sessions return a terminal session error when refresh cannot succeed. Sensitive writes must recheck authorization at their commit boundary so deactivation cannot bypass it through an in-flight request.
- Store Manager and Vendor Flutter clients receiving ACCOUNT_INACTIVE immediately clear secure tokens and sensitive session caches, disconnect subscriptions, cancel queued authenticated work and reset the navigation stack to Login. Show “Your account is inactive. Contact your administrator.” Back cannot reopen protected pages. Apply equivalent behavior in React admin.
- Use one refresh operation at a time per client session; retry an original request at most once. Login/refresh endpoints must not enter the refresh interceptor recursively. Terminal auth errors log out once; ordinary 403 scope errors do not trigger refresh loops. Temporary network failures do not masquerade as account deactivation.
- Server revocation is immediate. Send connected clients a session-revoked event for prompt UI logout; also revalidate on foreground/reconnect and every protected request. An offline device cannot receive an immediate server event: block protected actions and revalidate before resuming.
- Flutter secrets use platform secure storage. React refresh/session credentials use Secure, HttpOnly cookies with appropriate SameSite and CSRF protection; do not place long-lived tokens in localStorage. Restrict CORS origins. Sensitive responses must not be cached by shared caches; redact auth headers, OTPs and KYC from logs.

## Gates at feature implementation

| Phases | Required controls and negative tests |
| --- | --- |
| P00–P01 | Define threat boundaries, secret handling, dependency/secret checks, request size/time limits, validation and safe error format; establish security test fixtures. No deployment work. |
| P02 | Test cooldown boundaries, IP/account throttling, unknown users, bad passwords, parallel login/refresh, token replay, deactivation, logout navigation, refresh failure and no infinite retry. |
| P03 | Role and object-level authorization on every CRUD route; cross-chain/branch denial; prohibit privilege escalation and mass assignment; audit account/assignment/bank changes; revoke sessions on password/admin status change. Protect admin bank/account changes with fresh authentication. |
| P06–P09 | Validate allowlisted fields and ownership, prevent NoSQL/operator injection; private Cloudflare R2 media with type/size/checksum checks, allowlisted object keys and short-lived authorized signed access; camera permissions; QR signature/device binding/expiry/replay checks; no KYC exposure in QR. |
| P10–P11 | Atomic balances, integer currency, server-calculated values, idempotency and concurrency tests; verify Razorpay webhook signatures on the raw body, enforce replay protection and unique order/payment/event IDs, reconcile provider state, and never trust client payment success. |
| P12–P14 | Enforce assignment, active status, server deadlines, one bid per round, server-calculated fees and sufficient bid-plus-fee funds; atomic hold/release; reject request tampering and duplicate transitions. |
| P15–P16 | Bound OTP expiry, attempt limits and resend cooldowns; single use and transaction binding. Authorize KYC access, encrypt sensitive records, snapshot verified beneficiary, gate transfer correctly and prevent duplicate/forged payout instructions. |
| P17–P19 | Enforce originating-store pickup and branch-scoped rewards; atomic single-use redemption OTP and ledger updates; reject wrong owner, stale OTP, concurrent spends and replay. |
| P20–P22 | Scope inboxes, broadcasts, support, reports and exports; sanitize rendered content and spreadsheet exports; prevent attachment and customer-data leakage; audit privileged actions and keep audit immutable. |
| P23–P25 | Run cross-app security regression, dependency/secret scans and API abuse tests; review unresolved findings before development completion. No required security test may be silently skipped. |

OTP initial defaults: 5-minute expiry, at most 5 failed verifications per challenge, 60-second resend cooldown, plus per-recipient and per-IP send limits defined in the feature contract. Resending invalidates the prior OTP and does not reset aggregate abuse counters. Store OTP digests, not plaintext. Document provider constraints before implementation.

## Evidence and completion

Each task lists concrete abuse cases, expected API status/error, app behavior and test commands. Security acceptance criteria and required regression tests must pass before Done. Record findings and fixes in the task and implementation dashboard. Configuration values must be explicit and testable; a generic “security added” checkbox is insufficient.

References: [OWASP Authentication](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html), [OWASP OAuth2](https://cheatsheetseries.owasp.org/cheatsheets/OAuth2_Cheat_Sheet.html), [OWASP Authorization](https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html).

## Four-role scope gates — P02 onward

Enforce [architecture.md](architecture.md) on every API. P03 tests Super Admin-only Admin creation and assignment, empty-scope denial, direct-ID access, bulk writes, exports and scope removal. P04 tests scoped manager creation/status changes; P05 tests multi-store vendor links without exposing other branches or the global wallet. Repeat applicable tests in every later phase. JWT claims and hidden menus never replace authoritative server-side permissions. Admins cannot change their own scope or mutate globally shared accounts.

Flutter guide storage mismatch: resolve platform-backed secret protection versus the guide's kPassword-derived HydratedBloc encryption before auth implementation; follow architecture.md.
