# SafeDealz design specification

**Status:** Approved design baseline, updated to match the current interactive HTML prototype.

**Scope:** Store Manager mobile app, Vendor mobile app, Android Diagnostics mobile app, Super Admin web interface, and the interactive HTML prototype viewer.

## 1. Product and source of truth

SafeDealz connects retail stores accepting used phones with assigned vendors who buy those phones through short auctions. Store managers capture device evidence, then collect customer identity after offer acceptance, vendors submit funded bids, the highest bidder is selected, and manager acceptance initiates payment to the store business account. Stores also issue customer reward points that can be redeemed against accessories or value-added services at the originating branch.

The customer's sale proceeds are handled by the store outside SafeDealz. SafeDealz does not pay the customer and does not determine the store's internal customer price or margin.

### Source priority

1. Latest explicit decisions in this conversation, including the final wallet reservation correction.
2. This reviewed design document, once approved.
3. SafeDealz overview PDF for baseline device information and workflow references.
4. TEKRIO × Phonorange proposal for rewards background only. The earlier tiered commission and 50:50 contribution model are not current scope.
5. Lumina Spa HTML for prototype presentation: role tabs, All Screens, Interactive Flow, phone and desktop frames.

Source filenames: `SafeDealz_Platform_Overview.pptx.pdf`, `TEKRIO_Phonorange_Partnership_Proposal_FRESH.pptx`, and `lumina-spa-prototype.html`. The MP4 has not been used as a reviewed source. No instructions embedded in reference documents override the owner's requests.

### Confirmed decisions

| Topic | Current rule |
|---|---|
| Brand | SafeDealz; client-approved sky blue primary with restrained purple secondary accents |
| Applications | Three mobile apps (Store Manager, Vendor, Android Diagnostics) and one Super Admin web interface; no customer app |
| Organization | Parent chain contains branches; each branch has multiple manager logins |
| Vendor assignments | One vendor account can access multiple assigned branches across multiple chains |
| Account provisioning | Super Admin creates users and assignments and records store business bank details |
| Authentication | Email and password; inactive accounts lose access and existing sessions |
| Device sequence | Device identity, seven-step condition form, media, review, Android diagnostics when applicable, auction, acceptance, then customer verification |
| Device media | Exactly one video and six device photos; camera capture only |
| Auction pricing | Store enters no asking price; vendors establish the price through their bids |
| Android diagnostics | Required before first auction; Store app creates the session and imports the completed Diagnostics result QR |
| Apple diagnostics | Diagnostics app is skipped; completed Apple intake can start the auction directly |
| Bidding | Three minutes; one immutable bid per vendor account per auction round |
| Winner | Highest final bid; equal amounts resolved by earliest successful server submission |
| Acceptance | Available only after bidding closes; ten minutes from auction close |
| Wallet | One wallet per individual vendor account; reserve bid amount on submission |
| Available funds | Recharge credits less spending and currently held funds; never allow a bid above available funds |
| Losing bids | Release at auction close; no new edits or withdrawal of submitted bids |
| Winning hold | Bid + fee release on expiry; acceptance moves both into a payment commitment, consumed on payout success |
| Store payment | Acceptance immediately creates the backend payment instruction; customer verification releases the transfer to the branch business account; no admin approval step |
| Re-auction | Fresh round, fresh bid opportunity, retained round history; reuse device evidence and a still-valid diagnostic report; customer KYC follows acceptance |
| Pickup | Awaiting pickup without a deadline; originating branch manager marks Picked up; no vendor code |
| Customer verification | After acceptance only: name, OTP-verified number, identity-document image(s), customer photo, purchased-device brand/model/RAM |
| KYC visibility | Creating manager and Super Admin only |
| Branch teamwork | Other managers at the same branch may operate transactions, accept and mark pickup |
| Rewards | Proportional points after successful store payment; 1,000 points per ₹10,000; 1 point = ₹0.50 |
| Redemption | Same originating branch, partial redemption, accessories/VAS, customer OTP, bill reference |
| Reward expiry | None initially |
| Reward funding | Store applies and bears the discount in its separate billing system |

### Scope boundaries and design defaults

This draft includes Login and authenticated password changes, operational dispute views, media recovery states, and audit history as design defaults needed to make the flows complete. They are distinguishable from owner-set commercial rules.

- Initial prototype is light mode. Theme tokens allow a later dark theme; dark screens are not part of this approval batch.
- No customer application, public marketplace, courier workflow, pickup deadline, or automatic pickup confirmation.
- No shared vendor team wallet. Multiple sessions on the same vendor account still use that account's single wallet and one-bid rule.
- No platform commission, staff incentive computation, customer cash payout screen, or internal negotiation-margin deduction.
- No vendor cash-out/withdrawal UI in this draft. The previous withdrawal discussion was answered in terms of automatic store payout, so a separate cash-out policy remains deferred. This does not block the requested trading design.
- Re-auction is manual. A nullable future maximum-round setting is supported; no unapproved numerical cap is imposed now.
- Payment, SMS, storage, identity-document policy, native platform and production technology choices will be validated during implementation planning. This document specifies product behavior, not a claim that any named provider already supplies every required capability.

## 2. Design direction and skill application

**Design Read:** Reading this as an operational trading product for store managers, vendors, and administrators, with a clear, trustworthy sky-blue primary language, restrained purple accents, functional minimalism, and familiar app navigation.

**Mode:** New visual design using reference workflows. Preserve the useful device-capture sequence and prototype viewing format; replace the reference green palette and cramped screenshots.

**Dials:** `DESIGN_VARIANCE: 3`, `MOTION_INTENSITY: 2`, `VISUAL_DENSITY: 5` for mobile; admin density may rise to 6 through table layout, not smaller text.

### UI UX Pro Max first

Local design-system query: `B2B marketplace dashboard`, with variance 3, motion 2, density 5. The result supported Minimalism & Swiss Style, clear grids, functional spacing, readable contrast, and Plus Jakarta Sans. Its marketing hero, proof-logo and sales-CTA sections were irrelevant to these authenticated apps and are not adopted. A later targeted sky-blue accessibility search supported a darker action shade with a lighter sky family for surfaces. The client's final sky-blue decision supersedes the earlier purple-primary direction. Scroll reveal remains omitted because transaction screens need stable content.

Targeted query `error summary validation` returned focusable error summaries with field links and persistent inline errors. Adopt both. The skill's mobile pre-delivery rules inform touch targets, safe areas, feedback and readable forms.

### Taste review second

Taste explicitly excludes native mobile, dense admin UI and multistep forms as its primary scope. UI UX Pro Max therefore leads the product patterns. Apply Taste's relevant transferable checks to typography, spacing, consistent shapes, restrained motion, readable buttons, clear copy and full empty/loading/error states. Do not import landing-page hero rules, decorative asymmetry, stock marketing photography, or bans on useful operational tables.

Sky blue is the client-approved primary family across all applications. The darker sky action token provides accessible white-text buttons and focus states; bright sky blue supports highlights and tinted surfaces. Purple remains a restrained secondary accent for selected non-primary illustrations or charts and never replaces the sky-blue action hierarchy. Semantic success/error colors remain permitted because they communicate actual state. No neon glows, gradient text, glass panels, decorative counters or random status dots.

### Visual tokens

| Token | Value | Use |
|---|---|---|
| `app-background` | `#F0F9FF` | Default sky-tinted page background, controlled centrally |
| `canvas-neutral` | `#F5F7FC` | Optional future neutral page background token |
| `surface` | `#FCFCFF` | Cards, sheets, forms |
| `text-primary` | `#192238` | Titles, main body, amounts |
| `text-secondary` | `#526079` | Labels, descriptions, metadata |
| `brand-sky-action` | `#0369A1` | Primary buttons, active navigation, links and focus controls |
| `sky-hover` | `#075985` | Hover/pressed primary actions |
| `brand-sky` | `#38BDF8` | Bright supporting highlights with dark text; not white small text |
| `sky-ink` | `#075985` | Blue text and meaningful blue icons |
| `sky-soft` | `#E0F2FE` | Selected backgrounds, live auction and information panels |
| `brand-purple` | `#6D38C7` | Restrained secondary accent only |
| `purple-soft` | `#F0EAFE` | Optional secondary illustration/chart tint |
| `border-subtle` | `#DCE2EE` | Decorative separators |
| `control-border` | `#7A879E` | Input/control boundaries |
| `success` / `success-soft` | `#166534` / `#EAF7EF` | Paid, completed |
| `warning` / `warning-soft` | `#92400E` / `#FFF4DF` | Expiry, action required |
| `danger` / `danger-soft` | `#B42318` / `#FDEEEB` | Errors, cancellation |
| `on-primary` | `#FFFFFF` | Text on `brand-sky-action` |
| `focus` | `#0369A1` | 2px outline with 2px offset |

Use semantic tokens, not per-screen color overrides. Bright sky-blue fills carry dark `sky-ink` or `text-primary` text. The darker `brand-sky-action` carries white text. Purple is not a substitute for primary, error, or warning meaning. Ordinary text must reach 4.5:1; meaningful icons and control boundaries 3:1. Final rendered combinations must be checked during implementation.

Every client must render screen backgrounds through one reusable page-surface component backed by `app-background`: a shared React `PageSurface`, and a shared Flutter `AppPageScaffold` (or equivalently named approved component) in each Flutter application. Screens must not hardcode the sky-tinted background. Changing the semantic token later must update all page backgrounds without editing individual screens. Cards, dialogs, media capture, and the Diagnostics full-screen touch surface may use their own documented semantic surface tokens.

- Font: Plus Jakarta Sans, weights 400/500/600/700, with system sans-serif fallback. Self-host assets for the final prototype where practical.
- Mobile title: 24/32px; section title: 18/26px; body/input: 16/24px; metadata: 13/20px; amount: 30/38px. Admin page title: 28/36px; tables: 14/22px.
- Money and countdowns use tabular numerals, Indian grouping, ₹ prefix, explicit decimal handling. Show `₹10,000`, `1,000 pts`, and `₹500 reward value` separately.
- Spacing: 4, 8, 12, 16, 24, 32, 48px. Phone gutter: 20px, dropping to 16px at narrow widths. Admin gutter: 24-32px.
- Shape scale: controls 10px, cards 16px, sheets 24px at top corners, status chips pill-shaped. Documented roles keep these consistent.
- Controls: 48px minimum touch height; primary form actions 52px. Icons: Phosphor outline, 20px inline and 24px navigation. Text labels accompany navigation icons.
- Cards group one device, wallet summary, or confirmation. Ordinary settings use rows; admin data uses tables, not a card for every cell.
- Shadows only for dialogs, popovers and elevated navigation; subtle blue-gray tint. List cards use borders.
- Motion: 100ms press feedback, 160ms menu transitions, 220ms sheet transitions. No celebratory animation during payment. Respect reduced motion; never animate amount/countdown width.
- Layers: content 0, sticky bars 10, dropdown 20, backdrop 30, modal 40, transient notices 50. Keep focus above sticky controls.

## 3. App structure and access

```text
SafeDealz platform
  Parent chain: PAI
    Branch: Indiranagar
      Manager accounts: multiple
      Assigned vendors: selected individual accounts
    Branch: Jayanagar
      Manager accounts: multiple
      Assigned vendors: selected individual accounts
  Parent chain: Sangeetha
    Branch: Koramangala
      Manager accounts: multiple
      Assigned vendors: selected individual accounts

Vendor A -> PAI/Indiranagar + PAI/Jayanagar + Sangeetha/Koramangala
Vendor A -> one wallet owned only by Vendor A's account
```

A branch belongs to one parent chain. Vendor access is many-to-many at branch level. Selecting a parent chain in assignment UI groups or bulk-selects its existing branches; it does not silently grant access to every future branch.

### Permissions matrix

| Action/data | Creating manager | Other manager at branch | Assigned vendor | Super Admin |
|---|---|---|---|---|
| Create/edit draft | Yes | Yes, excluding protected KYC content | No | Inspect; correction workflow |
| Start/restart auction | Yes | Yes with complete device evidence; no pre-auction KYC | No | Inspect; exceptional intervention |
| Device specs and media | Branch records | Branch records | Assigned live devices and own historical deals | All |
| Customer identity photos/docs | Yes | No | No | Yes, audited |
| OTP/KYC completion badge | Yes | Yes | No sensitive details | Yes |
| Accept highest offer | Yes | Yes | No | No routine approval step |
| Bid and own wallet | No | No | Own account only | Inspect ledger; no arbitrary balance editing |
| Bank account | Masked branch account | Masked branch account | No beneficiary account number | Manage and audit |
| Mark picked up | Yes | Yes | View only | Inspect; exceptional corrections audited |
| Rewards lookup/redemption | Yes | Yes | No | Inspect, configure and correct through audited operations |
| Create/deactivate users | No | No | No | Yes |

Other branch managers may see minimal customer name/phone needed for rewards operations after deliberate lookup, not identity documents or a browsable cross-branch customer directory. Sensitive KYC access means identity photos/documents and full KYC evidence. Admin access requires an explicit reveal action and audit event.

Historical financial records remain visible to their legitimate parties after assignment removal, while new branch inventory is hidden. Deactivated users cannot log in to inspect history; admins retain the records. A deactivated creator does not automatically transfer private KYC access to another manager.

### Navigation

| Surface | Primary navigation | Secondary access |
|---|---|---|
| Manager mobile | Home, Devices, Rewards, Account | Notifications in header; New trade-in on Home/Devices |
| Vendor mobile | Live, My bids, Wallet, Account | Performance and assigned stores from Account; notifications in header |
| Diagnostics mobile | Linear device-test flow | Run tests and show the signed final-result QR for the Store Manager to scan |
| Admin web | Overview; Network; Auctions & devices; Payments & wallets; Rewards; Support; Settings; Audit log | Network tabs: Chains, Branches, Managers, Vendors; profile/logout in header |

Manager branch context is always visible. Vendor cards always display chain, branch and area. Admin global chain/branch filters show a visible scope label and carry into drilldowns.

## 4. Auction, wallet and payment contract

### Device and auction timeline

1. Manager completes device identity, IMEI 1 and IMEI 2, physical checks and seven media captures. No customer details are collected before acceptance. The store never sets an initial asking price.
2. For Android, the Store Manager app creates a diagnostic session. The Diagnostics app runs on the traded phone, verifies both IMEIs, completes automated and assisted checks, and generates a final result QR. Scanning that QR into the Store Manager app imports the full report and starts the auction. Apple skips this diagnostic step.
3. Review validates completeness. `Start auction` creates the round and a server close time exactly 180 seconds later. Vendor bids establish the price.
4. Notify active vendors currently assigned to that branch. In-app Live queue is authoritative even if push delivery fails.
5. One successful bid per vendor account per round. A bid is immutable. Its final amount plus platform fee are reserved atomically with bid creation.
6. Manager sees highest current amount while bidding is live; `Accept offer` is unavailable until close. Vendors see their own bid; competitor amounts/identities are not shown in this draft.
7. At close, highest final amount wins. Tie-break by earliest server receipt, with a stable server sequence as the final tie-break. Release all losing holds.
8. Winning bid becomes `Awaiting acceptance`. Set deadline to auction close plus 600 seconds. No bids means no acceptance window; move directly to `Needs re-auction`.
9. Manager reviews the selected vendor and amount and confirms acceptance. There is no lower-bid selector or second-place fallback.
10. Before the deadline, acceptance atomically locks the deal, commits bid + fee and immediately creates a backend payment instruction with status Awaiting customer verification. Stop the acceptance timer. Open M08; completing customer verification releases the same instruction to the payout provider automatically. No admin approval gate. Verification failure prevents payout and permits correction; unresolved accepted deals go to support without automatic fund release.
11. When the payout provider confirms success, mark payment Paid, fulfillment Awaiting pickup, award points once, and queue the customer SMS.
12. Originating branch manager confirms physical handover and marks Picked up. No time limit or vendor verification code.

The ten-minute limit applies to manager acceptance, not provider completion. Timely acceptance followed by a delayed payout does not expire or release committed funds.

### Wallet vocabulary

- **Available to bid:** Spendable amount after current reservations and payment commitments.
- **Reserved for bids:** Funds backing submitted bids or an unaccepted winning offer.
- **Payments processing:** Committed funds for accepted deals whose payouts are unresolved.
- **Paid to stores:** Historical completed outflow, not part of current balance.
- **Pending recharge:** Not available until confirmed by the provider.

Do not call a reservation a completed debit/payment. The available amount decreases immediately as the owner requested; funds have not yet reached the store.

| Example event | Available | Reserved | Processing | Explanation |
|---|---:|---:|---:|---|
| Recharge succeeds | ₹10,000 | ₹0 | ₹0 | Ready to bid |
| Submit ₹8,000 bid | ₹1,360 | ₹8,640 | ₹0 | Another bid plus fee cannot exceed ₹1,360 |
| Bid loses at auction close | ₹10,000 | ₹0 | ₹0 | Hold released |
| Alternative: bid wins | ₹1,360 | ₹8,640 | ₹0 | Bid + fee stay held for acceptance |
| Winner not accepted by expiry | ₹10,000 | ₹0 | ₹0 | Hold released once |
| Alternative: manager accepts | ₹1,360 | ₹0 | ₹8,640 | Backend procedure starts; KYC gates transfer |
| Payout confirmed | ₹1,360 | ₹0 | ₹0 | ₹8,000 paid to store; ₹640 platform fee collected |

The rows marked Alternative describe separate outcomes, not additional spending in one sequence. Reservations are retained for all submitted bids until close, even if another vendor has already bid more. This keeps behavior predictable and does not expose competitor activity through early refunds.

### Bid amount

Retain the PDF's structured pricing: base price minus cosmetic deduction minus battery deduction equals final offer. The **final offer** is the amount that must fit available funds and is reserved. Inputs are non-negative; final offer must be positive; deductions cannot equal or exceed base. Whole-rupee input is the proposed initial UI convention.

There is no store asking price or retailer starting amount. Each vendor enters an independent base price and deductions; the resulting final offer is the first and only bid from that vendor in the round.

### Race and recovery rules

- Server time governs bid and acceptance deadlines. At or after the deadline, requests are rejected even if an old screen still shows time remaining.
- Two bids against the same wallet cannot overspend it. Balance check, hold and bid uniqueness commit together.
- Retrying a timed-out submission returns the existing bid/result, rather than placing a second bid or hold.
- Two managers accepting the same deal produce one acceptance and one payout instruction. The other sees the latest state.
- Acceptance and expiry cannot both win. A single transaction claims the valid transition.
- Payout retries reuse the payment identity. Unknown provider outcomes are reconciled before a new transfer attempt.
- A failed payout does not automatically refund the vendor or restart the auction while money movement is uncertain. Show Payment needs attention; retain the obligation for recovery.
- A confirmed unwind uses explicit reversal records after confirming the payment cannot complete. No deletion of ledger history.

### Re-auction

Needs re-auction has a prominent tile/tab in Manager Devices. Show reason, prior best offer, round count, last attempt time and `Review & restart`.

Re-auctions reuse device checks, seven captures and a valid diagnostic report. No customer information or KYC is requested before acceptance. A manager may enter a customer-expected amount without identifying the customer. Accepted deals cannot enter another auction while a payment commitment exists.

Each round snapshots device evidence and the linked diagnostic report where applicable. Preserve all historical versions. Changes to condition/media before a new round are explicitly recorded. A valid report for the same Android device and both matching IMEIs can be reused; identity changes require a new diagnostic session. Do not edit a live or accepted listing. No concurrent rounds for the same device. Cancellation records a reason. Failed/expired rounds never issue points.

## 5. Device capture and customer verification

### Ordered form groups

| Group | Fields and rules |
|---|---|
| Device identity | Apple/Android platform cards first; then device name/model; IMEI 1 and IMEI 2 typed manually or detected together from a live camera scan (hard 15-digit GSMA maxLength) |
| Specifications | Brand/model confirmation and storage; Apple requires battery health and has no RAM field; Android requires RAM from 4/6/8/12/24 GB only; include device age and box/bill/charger answers |
| Condition | Body damage, screen/touch status, cameras, charging, speaker/microphone, repair history and notes; show structured summaries to vendor |
| Apple additions | Battery health percentage, Face ID/Touch ID working/not working/not applicable, display issues, replaced/unknown parts, repair history, Activation Lock/Find My status |
| Android additions | Screen/functional condition, account-lock status, repair history; if below 11 months old, Bill present and live bill capture are required for either platform |
| Device evidence | One rotation video; front, back, top edge, bottom edge, left edge, right edge photos |
| Customer | Name, phone number and OTP; document type and live required sides; live customer photo; ownership/processing acknowledgement |
| Android diagnostics | Store session QR/code, permission explanation, automated checks, assisted screen/touch and button checks, camera/audio/sensor checks, report review, final result QR import |

Front photo shows screen on where functional. If it cannot power on, capture its actual condition and explicitly mark screen non-functional. Exactly seven device-media items; bill and customer-document images are separate evidence and do not change this count. The old optional voice note is deferred from this seven-item capture scope.

Battery health is a percentage from 1 to 100 when available. An unavailable value must be explicitly marked and explained rather than fabricated. Proposed blocking checks: unresolved device account lock, duplicate active IMEI, incomplete customer verification, missing required bill or missing media. An ownership declaration is not an automated stolen-device clearance.

IMEI inputs preserve leading zeros. Both Apple and Android use the GSMA 15-digit IMEI. The field hard-limits input at 15 digits (`maxLength` / digits-only). Validate each as 15 digits, require distinct IMEI 1 and IMEI 2 values, and check duplicates against active device records. The scanner reads both lines from the manager's live camera and allows manual correction after OCR. No gallery upload is offered.

### Android Diagnostics app behavior

The Diagnostics app is a utility installed on the Android phone being exchanged. It does not use the manager/vendor login. It reads the device identity, runs automated and assisted checks, and generates a signed final-result QR containing both IMEIs and the diagnostic payload. The Store Manager opens M07 and scans that completed QR. M07 does not launch the Diagnostics app or create a pairing/session code.

The SafeDealz test plan covers device identity, Wi-Fi, Bluetooth, GPS/network, battery/charging, front and back cameras, microphone/receiver/speaker, vibration/proximity, gyroscope/magnetometer, display, multitouch, physical buttons and supported lock/authentication controls. Each result is Passed, Failed, or Unavailable. Failed and unavailable tests stay visible in the final report.

The D04 touch test uses the full available device screen. A dense dot field covers edges and corners; dots disappear along the finger path, while the UI shows percentage covered and dots remaining. The user may retry any number of times. The app never advances automatically: `Submit test` validates at least 90% coverage and then opens D05.

All diagnostic results remain encrypted locally on the traded phone throughout D01-D08. The final QR contains a signed, compact transfer payload tied to both IMEIs and a short expiry. Only after the Store Manager scans and verifies it does the Store app import the complete report and submit it to SafeDealz. Until that scan succeeds, vendors, managers and Super Admin cannot see the report. The QR must never contain a price or unrelated personal data.

### Capture screen behavior

Show a full-width rotation-video tile followed by a 2-column six-photo grid. Each slot holds exactly one capture. Empty slots show Tap to capture; filled slots show the local preview and Captured. Tap an empty slot to open the camera immediately. Tap a filled slot to preview, Clear, or Capture again. Continue stays disabled until every required slot is filled. Never offer Upload from gallery. Camera permission denial explains how to allow it and returns to the draft. Media is kept locally on the manager device for preview even before server upload completes.

Save draft progress and retry failed transfers per media item. Start auction remains disabled until server-side upload completion. Production camera-only enforcement is a native-capture requirement; the future browser prototype demonstrates that flow but must not claim a browser file-input attribute alone enforces it.

### Customer verification behavior

OTP can be pasted/autofilled. Show resend countdown, incorrect/expired code messages, and attempt limiting. Do not call document capture external identity verification: display `Phone verified` and `Identity evidence captured` separately. Document types and required sides are configurable; do not require Aadhaar specifically or imply every document type is accepted before production policy is set.

Draft sensitive data must not be left in ordinary browser local storage. Prototype uses fictitious, masked data and illustrative document panels, never real identity documents.

## 6. Screen catalogue

Every screen below is required in the later All Screens gallery. Variants named in the final column are required states, not separate apps. IDs are stable review/prototype identifiers and are shown outside the product frame. Shared screens render in the appropriate mobile or desktop shell.

### Shared authentication and system screens

| ID | Screen and layout | Actions and destinations | Required states |
|---|---|---|---|
| S01 | Login: vendor and store manager email/password form, trailing eye toggle within password field; no remember-device checkbox; no signup or password recovery | Login -> M01/V01 by authenticated role | Invalid credentials, submitting, inactive account, offline |
| S04 | Role-aware notifications: vendor sees assigned offers, winning-bid decisions and pickup updates; manager sees branch events; admin sees full delivery history, filters and targeted compose controls | Authorized deep link; mark read; admin sends to all users, all stores, all vendors, one store or one vendor | Empty, unread, queued, delivered, failed, filtered results |

### Store Manager mobile

| ID | Screen and content hierarchy | Main actions and links | Required states |
|---|---|---|---|
| M01 | Home: app bar shows the logged-in branch as title and the manager name as subtitle (about 60% width, ellipsis), notification bell, no SafeDealz wordmark or KR avatar; tinted New trade-in card; offers, live auctions, Awaiting pickup, recent devices | New trade-in card -> M03; counters -> M02 filtered; ready offer -> M11; bell -> S04; Android/system back toasts `Double tap back to close the app` and exits on a second tap within 2 seconds | First use, no pending work, offline snapshot, double-back toast |
| M02 | Devices: search and chips Drafts/Live/Offers ready/Needs re-auction/Awaiting pickup/Picked up; round and status on each card | Draft -> capture step; live -> M10; ready -> M11; retry -> M15; paid -> M13/M14 | Empty per filter, loading, pagination, unavailable record |
| M03 | Device identity: Apple/Android platform cards first, then model, separate 15-digit GSMA IMEI 1 and IMEI 2, Scan IMEIs, storage, Android-only RAM 4/6/8/12/24 GB, Apple battery health and no Apple RAM; one merged flow-progress bar (`Device identity 1 of 9`) | Scan/correct IMEIs; Continue validates, scrolls to top on error, then -> M04 | Duplicate/matching IMEIs, missing RAM, OCR correction, invalid identifier, invalid RAM |
| M04 | Seven-step physical phone form on the same 9-step bar (steps 2–8): Basic/SIM, Screen, Body, platform-specific parts/security, Accessories/origin/age, Functional, then Camera; option tiles; saved progress; no colour-screen test | App-top Back only (saves; previous M04 step or M03); Continue in the action bar; finish -> M05; Continue/Back scroll the form to the top | Required answer missing, Apple manual flow, Android manual checks plus separate diagnostic report, security lock, device below 11 months missing bill |
| M05 | Capture device: `Capture device 9 of 9` on the same bar; rotation video plus 2-column photo grid; one media item per slot | Empty slot opens camera -> M06; filled slot previews with Clear / Capture again; Continue disabled until every slot is filled, then -> M09 | Empty, partial, uploading, complete, transfer error |
| M06 | Camera and preview: live camera, angle/video label, Capture, Preview ready, Retake; Use capture enabled only after a capture | Use capture -> M05; Back -> M05 | Permission denied, interrupted recording, retry, file transferring |
| M07 | Scan diagnostic result: completed-result scanner and imported-report state; no app launcher or pairing code | Scan completed result QR -> validate/import; imported Start auction -> M10; Back -> M09 | Waiting, mismatched IMEI, expired QR, invalid signature, imported |
| M08 | Customer verification after acceptance: name, phone OTP, identity camera, portrait, purchased device Apple/Android, model, storage, Android-only RAM and editable scanned/manual IMEI 1/2 and acknowledgement | Verify OTP; release existing payout instruction -> M13 | Phone unverified/verified, OTP error, evidence missing, permission denied |
| M09 | Price-free device summary: identity, both IMEIs, all condition answers, 7/7 media, diagnostic status, branch and eligible vendors; KYC deferred until acceptance | Apple Review and start auction -> M10; Android Continue to diagnostics -> M07; imported Android Start auction -> M10 | Validating, diagnostic required/imported, no active assigned vendors, start failed |
| M10 | Live auction: device hero, 03:00 countdown, round number, bid count and highest current offer | View device/media; open round history -> M16; cancel with reason -> M15 | No bids yet, bids received, reconnecting, closed transition |
| M11 | Highest offer: 10:00 acceptance countdown, final amount, vendor, breakdown, payout branch, reward preview; app-top Back (previous screen or Home) | Accept -> M12; Rebid expectation dialog -> fresh M10 round; Decline with reason -> M15; details -> M16; Back -> previous or M01 | Ready, expired, already accepted by colleague, canceled |
| M12 | Accept confirmation sheet: amount, vendor, masked store bank account, automatic payment explanation | Confirm -> M08; Back -> M11 | Submitting; deadline crossed; duplicate confirmation returns existing deal |
| M13 | Payment status: accepted amount, branch beneficiary, payment reference and timeline; reward/SMS status secondary | View deal -> M14 after Paid; Refresh status; report issue -> M23 | Processing, Paid, Needs attention; no premature success |
| M14 | Deal detail: device and vendor, Paid status, Awaiting pickup, branch, transaction and auction history | Mark picked up -> M17; payment -> M13; history -> M16 | Awaiting pickup, payment unresolved blocks pickup, Picked up |
| M15 | Needs re-auction: reason, previous rounds, last/highest prior offer, device evidence retained; customer not yet collected | Review & restart -> M09 with new round; edit allowed details; Cancel listing | No bids, acceptance expired, customer declined, canceled |
| M16 | Device history: current snapshot, media, expandable auction rounds, bids/outcomes and deal events | Back to originating screen; creator/admin KYC reveal | Other manager sees verification badge only; no rounds yet |
| M17 | Pickup confirmation sheet: device/IMEI suffix, vendor, branch, acknowledgement of physical handover | Mark picked up -> M14 completed | Submitting, already completed by colleague, failed save |
| M18 | Rewards lookup: active branch, customer phone input and search, plus All redemptions shortcut | Find customer -> selected customer history on M19; All redemptions -> M19 | Not found, no rewards at branch, invalid phone |
| M19 | All redemptions at the active branch: searchable customer cards with masked mobile, redemption count, last invoice, discount and date | Select customer -> complete customer redemption-history dialog; eligible customer -> M20 | No redemptions, no search results, customer with one or many redemptions |
| M20 | Redeem rewards: invoice number, eligible category, bill amount, discount amount, points used and remaining | Continue -> M21; Back -> M19 all-redemptions list | Over bill/balance, ineligible category, duplicate bill reference warning |
| M21 | Redemption confirmation: bill/discount summary and customer OTP | Verify & redeem -> M22 | Wrong/expired OTP, concurrent balance change, submitting |
| M22 | Redemption receipt: points spent, rupee discount, bill reference, remaining points; apply discount in billing reminder | Done -> M19; View receipt history | Saved, SMS queued/failed independent of redemption |
| M23 | Report issue: device/payment/redemption context, reason and notes | Submit -> ticket receipt; Back to source | Required reason, submitting, saved ticket |
| M24 | Account: manager identity, branch, masked bank information, password change and support | Password change; notifications -> S04; logout -> S01 | Read-only bank info, password success/error |

KYC camera uses the same capture component as M06 but has its own document/portrait context and permissions. It is not counted among the seven device-media slots.

### Vendor mobile

| ID | Screen and content hierarchy | Main actions and links | Required states |
|---|---|---|---|
| V01 | Live queue: compact available-balance strip, chain/branch filters, device cards with image/model/storage/open-bidding state/timer | Card -> V02; balance -> V07; filters -> V15 | No live devices, no assignments, low funds, loading, offline |
| V02 | Device detail: image/video gallery, branch/address, countdown, specs, condition and verified Android diagnostic results; no retailer asking price | Inspect media -> V03; Place bid -> V04 | Live, already bid -> V06, auction closed, branch access removed |
| V03 | Media viewer: video playback or full photo, labelled angle, previous/next buttons and zoom | Close -> V02 | Loading, retry, missing remote media; no KYC assets |
| V04 | Your bid: base minus cosmetic/battery deductions, final bid, platform rate and fee, total reservation and available balance after bid + fee | Review -> V05; insufficient funds -> V08 | Valid, zero/negative final, deductions invalid, over available, expired |
| V05 | Confirm bid sheet: final amount, platform fee, total bid + fee reservation, remaining balance and one-bid/no-edit warning | Submit bid -> V06 | Submitting, concurrent balance change, round closed, duplicate retry |
| V06 | Bid detail/confirmation: immutable amount, device/branch, reserved funds, round timeline | Back -> V01; wallet event -> V10; deal -> V12 when accepted | Submitted, Awaiting acceptance, Not selected, Expired, Payment processing, Accepted |
| V07 | Wallet: large Available to bid, Reserved and Processing secondary, recharge action and ledger filters | Add money -> V08; entry -> V10; holds -> V11 | Zero balance, active reservations, pending recharge, history empty |
| V08 | Add money: amount, Razorpay handoff explanation and confirmation | Continue -> Razorpay Checkout -> V09 | Invalid amount, loading Razorpay, canceled checkout |
| V09 | Razorpay recharge status: amount, order/payment reference and backend confirmation | Done -> V07; pending Refresh; failed Try again -> V08 | Pending, Confirmed, Failed; no optimistic balance credit |
| V10 | Wallet transaction: signed movement, type, timestamps, references, linked bid/deal | Related bid -> V06; deal -> V12; Back -> V07 | Recharge, reserve, release, payment, reversal |
| V11 | Reserved funds: list per device, branch, amount and auction/acceptance deadline | Item -> V06 | Multiple holds, no holds, updated release |
| V12 | Purchased device: device, paid amount, branch address/contact, payment and pickup status | Open address/map; contact store; history; report issue -> V16 | Payment processing, Awaiting pickup, Picked up; no mark-picked-up control |
| V13 | My bids: status filters, round labels, device/branch and immutable bid | Item -> V06/V12 | Empty, submitted, won, lost, expired, paid |
| V14 | Performance: period filter, bids, wins, accepted purchases, win rate, average response time and hourly chart | Metric -> V13 filtered | No activity, chart textual alternative, loading |
| V15 | Assigned stores: grouped chain/branch list, address and contact | Filter live queue -> V01 | No assignments; historical purchase access retained |
| V16 | Support issue: linked bid/deal/payment and explanatory notes | Submit ticket; return -> V06/V12 | Submitted, invalid, existing open ticket |
| V17 | Account: vendor identity, email, assigned stores, performance, password and logout | V15, V14, S04, S01 | Read-only provisioning fields; password errors |

Vendor identity/account is singular. No team switcher, shared wallet selector, or second team member onboarding screen.

### Android Diagnostics mobile

| ID | Screen and content hierarchy | Main actions and links | Required states |
|---|---|---|---|
| D01 | Diagnostics start: show detected device and both IMEI suffixes, then begin checks | Start diagnostics -> D02 | Identifier unavailable, unsupported device, offline |
| D02 | Permissions: camera, microphone, location/GPS, Bluetooth and nearby-device explanations | Allow -> D03; Back -> D01 | Granted, denied, partial permission |
| D03 | Automated checks: both IMEIs, Wi-Fi/Bluetooth, GPS/network, battery/charging, sensors/chipset | Complete -> D04 | Running, passed, failed, unsupported test |
| D04 | Full-screen display and multitouch canvas: dots disappear under the drag path; live coverage percentage, dots remaining and attempt count | Try again resets the canvas; Submit test at 90%+ -> D05; never auto-advance | Partial coverage, insufficient submission, passed, unlimited retries |
| D05 | Physical controls: volume, power/screen-lock, supported home/back/recent controls | Complete -> D06 | Passed, failed, unavailable hardware |
| D06 | Camera, audio and sensors: front/back camera, microphone, receiver/speaker, vibration, proximity, gyroscope/magnetometer | Complete -> D07 | Passed, failed, permission denied, unavailable |
| D07 | Report review: grouped passed/failed/unavailable counts and retest links | Generate result -> D08 | All passed, failures retained, incomplete test |
| D08 | Final result: signed diagnostic QR with device/IMEI summary; complete report remains local until the manager scans it | Keep QR visible for M07 scanning; no Store Manager launcher | Ready for store scan, QR expired, already imported |

Diagnostics screens form a focused linear flow with no bottom navigation, bidding, wallet, KYC or customer data. Leaving and returning preserves the session until expiry.

### Super Admin web

All admin screens use a 240px left navigation, 64px header, breadcrumb, scope filter and a main work area. Tables have search, meaningful filters, pagination and row drilldown. Forms use a right drawer for short changes and a full page for onboarding. No dashboard widget substitutes for the underlying operations screen.

| ID | Screen and main content | Actions and destinations | Required states |
|---|---|---|---|
| A00 | Super Admin Login: dedicated desktop email/password form, trailing eye toggle within password field; no remember-device checkbox; no sidebar or password recovery | Login -> A01; logout from A22 -> A00 | Invalid credentials, submitting, offline |
| A01 | Overview: live auctions, offers awaiting acceptance, payment exceptions, completed value; Needs Attention contains payment and branch-setup issues without an SMS-pending item | Metrics -> A10/A12; network -> A02 | Empty platform, scoped view, loading |
| A02 | Chains: searchable name/status and branch counts | Create/edit -> A03; open branches -> A04 | Empty, inactive filter |
| A03 | Chain form: name, code, contact and active status | Save -> A02; deactivate impact confirmation | Duplicate code, affected branches/users warning |
| A04 | Branches: parent chain, branch/location, manager/vendor counts and payout readiness | Create/edit -> A05; managers -> A06; vendors -> A08 | Missing payout setup, inactive branch |
| A05 | Branch onboarding/detail: parent, name/code, address/contact, business bank beneficiary/account/IFSC, assignment summaries | Save; bank verification/status; audit; deactivate impact | Invalid/missing bank details, setup pending, ready, bank-change confirmation |
| A06 | Managers: name/email, branch, active state and session information | Create/edit -> A07; revoke sessions; deactivate | Duplicate email, no branch, inactive |
| A07 | Manager onboarding/edit: name/contact, email, initial credential setup, branch and status | Save -> A06; reset credential invitation | Required fields, conflicting assignment, saved |
| A08 | Vendors: individual account, active state, assigned branch count, available/reserved balance | Create/edit -> A09; wallet -> A14 | No assignments, inactive, search empty |
| A09 | Vendor onboarding/edit: name/contact/email, initial credential setup, chain-grouped branch picker | Save; assignment review; deactivate with impact | Multi-chain selection, duplicate email, active bids affected |
| A10 | Auctions/devices: device, IMEI suffix, branch, round, state, deadlines, highest offer | Open -> A11; filter Needs re-auction | No bids, live, awaiting acceptance, historical |
| A11 | Device and auction detail: specs/media, round selector, bid table, wallet links, restricted customer-evidence panel and audit timeline | Bid wallet -> A14; payment -> A13; explicit KYC reveal; support -> A18 | Live, expired, canceled, paid, restricted evidence revealed |
| A12 | Payments: branch/vendor, amount, provider reference, Processing/Paid/Needs attention | Open -> A13; export filtered report | Delayed callback, failed, pending reconciliation |
| A13 | Payment detail: instruction and attempt history, beneficiary snapshot, provider status and linked deal | Refresh/reconcile; controlled retry only after known outcome; issue -> A18 | Processing, Paid, failed known, unknown outcome; never Approve payout |
| A14 | Vendor wallet detail: available, reserved, processing, immutable ledger and linked records | Open bid/payment/recharge; investigate discrepancy | Active holds, releases, pending recharge, reconciliation issue |
| A15 | Rewards overview: issued/redeemed/outstanding points and value by branch, customer lookup | Account -> A16; policy -> A17 | No data, branch filter, SMS failures |
| A16 | Customer branch rewards: branch-separated balances, earn/redemption entries, invoice references, message history | Open receipt; controlled reversal with reason and audit | No balance, partial redemption, reversal, SMS retry |
| A17 | Reward policy: earn rate, point value, eligible categories, expiry, redemption scope | View current version; future policy change with effective date | Initial branch-only policy; future chain/multi-branch setting clearly inactive |
| A18 | Support cases raised by store managers or vendors: creator role, type, device/payment reference, owner, status and chronological notes | Super Admin reads, assigns and resolves; no admin create-ticket control | Open, investigating, resolved; no destructive financial shortcut |
| A19 | Reports: auction conversion, accepted/paid value, pickup counts, wallet movements, branch rewards and billing reconciliation | Filter period/chain/branch; export authorized report | No results, export preparing, failed |
| A20 | Settings: editable vendor bidding and manager acceptance durations, provider readiness and SMS templates | Save bidding duration from 1–30 minutes and acceptance duration from 1–60 minutes; new values apply to future rounds | Invalid duration, saved, integration not configured, template preview |
| A21 | Read-only audit log explaining who performed an important action, what changed, when it happened and which record was affected | Filter; open affected record for investigation | No matches, restricted fields redacted |
| A22 | Account/session settings: admin email, password, sessions, security options | Change password; revoke session; logout | Validation, completed, A00 redirect |
| A23 | Admins (Super Admin only): name, email, assigned store count and active status | Create/edit -> A24 | Empty, inactive, Super Admin only |
| A24 | Admin create/edit (Super Admin only): name, contact, email, initial credential, active status and assigned-store selection | Save -> A23 | No stores assigned, duplicate email, saved |

Initial credential setup is an implementation choice for review: prefer an expiring password-setup invitation for the admin-created email; if temporary passwords are required, force change on first login. Email/password authentication remains the selected method. Never display stored passwords.

## 7. Principal screen compositions

These layouts establish visual hierarchy for the later HTML rather than pixel-perfect screenshots.

### Manager Home / M01

```text
[PAI / Indiranagar          ] [Notifications]
 Kavya Rao                     (title ~60%, ellipsis)
                               (no SafeDealz wordmark, no KR avatar)

[ +  New trade-in                               > ]
     Capture a device and start bidding

Offers ready                          View all
[iPhone 14   ₹15,000   Accept within 08:42     ]

[Live auctions: 2]          [Awaiting pickup: 3]

Recent devices
[photo] Model / storage          [status]
        Round 2 / last activity

[Home]       [Devices]       [Rewards]   [Account]
```

The app bar uses the logged-in branch as the title and the signed-in manager name as the subtitle. Android/system back on Home shows `Double tap back to close the app` and exits only on a second tap within two seconds. An expiring actionable offer outranks routine statistics. No incentive card or customer payout number. Sky-blue informational panels support the darker sky-blue New trade-in card without competing with the offer's urgency.

### Vendor Bid / V04

```text
[Back] Your bid                       01:42 left
iPhone 14 / 128 GB
PAI / Indiranagar

Available to bid                         ₹20,000
Base price                            [₹16,000]
Cosmetic deduction                      [₹500]
Battery deduction                       [₹500]

Final bid                                ₹15,000
Available after this bid                  ₹5,000
Funds stay reserved until the auction outcome.

[Review bid]
```

Use one prominent computed amount, not several equally large numbers. The confirmation sheet repeats the irreversible one-bid rule. Keyboard visibility must not hide the summary/action.

### Manager Offer / M11

Device header, then a fixed-position-in-layout acceptance countdown, final offer in the largest type, vendor identity, deduction breakdown, masked branch bank destination, reward preview, and bottom Accept offer action. App-top Back returns to the previous screen when one exists, otherwise Home. Decline is a lower-emphasis text action with a reason sheet. No carousel of competing offers.

### Vendor Wallet / V07

Available to bid is the dominant amount on a sky-blue-tinted surface. Reserved and Payments processing appear below with explanatory labels. Add money is the primary action. Ledger rows use explicit Reserve/Release/Paid labels and +/- movements rather than color alone. No cash-out CTA.

### Admin Auction / A11

Left main column: device identity, media, specs and round history. Right narrower column: current status, countdown, selected bid and linked payment. Bid history is a table beneath the overview. Customer evidence is behind a separate audited reveal control. On narrow layouts, the status summary moves before media; confidential evidence remains collapsed.

## 8. Cross-app connections

| Event | Manager experience | Vendor experience | Admin experience |
|---|---|---|---|
| Branch/account created | Login becomes available once branch ready | Account and assigned branches visible | Provisioning and audit entry |
| Android diagnostics complete | M07 scans result, imports full report and starts M10 | No vendor visibility before successful import | A11 stores diagnostic report reference and result summary |
| Apple auction starts | M09 starts M10 directly | Push/in-app event opens V02; V01 card appears | A10 live row, A11 round |
| Bid submitted | M10 count/highest updates | V06 immutable bid; V07 funds decrease; V11 hold | A11 bid, A14 hold |
| Auction closes with bids | M11 selected offer, 10-minute timer | Winner Awaiting acceptance; losers Not selected and holds released | Winner snapshot and releases recorded |
| No bids / acceptance expires | M15 Needs re-auction | Relevant bid expiry and release | Historical round reason remains visible |
| Manager accepts | M13 Payment processing | V06/V12 Payment processing; hold moves to commitment | A12 automatic payout record |
| Store payment succeeds | M14 Awaiting pickup; rewards available | V12 Awaiting pickup; V10 paid entry | A13 Paid; A16 earn entry; SMS queued |
| Re-auction starts | New round on M10, KYC reused | New round card; old bid read-only; can bid once again | A11 additional round |
| Reward redeemed | M22 receipt and remaining points | No customer rewards access | A16 debit and invoice linkage |
| Pickup confirmed | M14 Picked up | V12 Picked up, notification | Deal/audit updated |
| User deactivated | S01 with inactive-account explanation | S01 with inactive-account explanation | A21 revocation; affected obligations visible |

Notifications are projections of persistent state. A notification tap always resolves the latest status, not an obsolete action. No KYC imagery, identity numbers or customer phone numbers in vendor notifications.

## 9. Rewards design and separate billing

### Earn and store

Use the accepted vendor price, never the store's private customer payout.

```text
Points earned = accepted price in rupees / 10
Reward value = points × ₹0.50
₹15,000 paid to store -> 1,500 points -> ₹750 redemption value
```

Draft precision convention: whole-rupee bids, points stored/displayed to one decimal, monetary value to paise. A ₹15,005 purchase earns 1,500.5 points worth ₹750.25. Store exact integer subunits, not floating-point balances. An alternate rounding policy can be versioned later without silently recalculating old awards.

Issue once per successfully paid deal. Award remains associated with the originating branch. An SMS failure never cancels or repeats the award. Repeated provider callbacks cannot create duplicate points.

Sample transactional SMS copy, for later provider/template validation:

> SafeDealz: You earned 1,500 points worth Rs 750 from your device exchange at PAI Indiranagar. Redeem at this branch on accessories or VAS. Share your registered mobile number at the store. Ref SD-1042.

Use plain text and a reference, not a public link exposing customer balances. A customer does not need an app or a redeemable secret in the message.

### Redeem

1. Manager at the same branch searches the customer's phone number.
2. Show that branch's available points and rupee equivalent, plus earning/redemption history.
3. Enter invoice reference, eligible category and eligible bill amount, then desired rupee discount.
4. Calculate points used; prevent over-balance or over-bill redemption. Support partial use.
5. Send customer OTP bound to the redemption amount, branch and invoice. Changing those invalidates the prior confirmation.
6. Verify OTP and atomically post the reward debit once. Show a receipt and updated balance.
7. Cashier applies the exact discount in the existing billing software. Store the invoice link/reference for reconciliation.

The initial flow is manual reconciliation, not a POS integration. If SafeDealz redemption succeeds but billing fails or the sale is canceled, open a correction/reversal linked to the original receipt. Do not redeem again or erase history. A manager records the issue; an audited admin correction restores points when appropriate.

Concurrent redemption requests cannot spend the same points twice. OTP is not reusable. Enforce branch scope on the server. Do not enable redemption at another branch simply because the manager belongs to the same parent chain.

### Future scope without current screens

Reward policy stores `redemption_scope` as BRANCH, CHAIN, or BRANCH_SET, plus permitted branch IDs where needed. Every earning entry keeps its originating branch and policy version. Initial active policy is BRANCH. Future changes explicitly define whether old awards become eligible elsewhere. Do not pool old balances silently.

Later billing integration can use the same reward ledger and redemption IDs. Separate the customer's point balance from the vendor's money wallet in naming, storage and navigation.

## 10. Status and exception design

Separate auction, bid, payment and fulfillment states; a single ambiguous Accepted label is insufficient.

| Domain | States and visible meaning |
|---|---|
| Listing | Draft, Ready, Live, Offer ready, Needs re-auction, Accepted, Canceled |
| Round | Live, Closed with winner, No bids, Acceptance expired, Accepted, Canceled |
| Bid | Submitted, Awaiting acceptance, Not selected, Expired, Accepted; no edit/withdraw state |
| Hold | Reserved, Released, Consumed; each terminal change happens once |
| Payment | Queued, Processing, Paid, Needs attention, Reversed if a confirmed unwind occurs |
| Fulfillment | Not ready while payment unresolved, Awaiting pickup after Paid, Picked up |
| Recharge | Pending, Confirmed, Failed, Reversed when provider-confirmed |
| Rewards | Earned, Redeemed, Reversed; SMS delivery status is separate |

| Exception | Screen response and allowed recovery |
|---|---|
| No assigned active vendors | M09 shows blocked start and contact-admin guidance; do not launch an empty unreachable auction |
| No bids | M15 displays No bids received, round history and restart action |
| Offer expires | Disable acceptance, release winning hold, M15; no silent timer extension |
| Customer declines before acceptance | Reason confirmation closes offer, releases applicable holds and records outcome; manager may restart manually |
| Customer cancellation after acceptance | Support/dispute case; do not automatically refund or re-auction a paid device |
| Incomplete OTP/KYC | Inline validation and saved draft after acceptance; no payout release |
| Media fails | Per-slot retry, retained successful captures; no gallery fallback |
| Duplicate active IMEI | Link authorized existing record; block simultaneous listing/round |
| App offline | Read-only last known state with banner; disable financial actions; reconcile on reconnect |
| Submission response lost | Show Checking submission; query existing operation before allowing retry |
| Insufficient available funds | V04 shows exact available amount, disabled confirmation and Add money link |
| Recharge unconfirmed | V09 Pending; usable balance unchanged |
| Payout delayed/unknown | M13/V12 show Processing; A13 reconciliation; no false Paid or released commitment |
| SMS fails | Award/redemption remains valid; admin delivery retry, no duplicate points |
| Vendor refuses pickup | No deadline breach; allow issue reporting and admin resolution, no automatic cancellation |
| Device differs at pickup | Preserve captured evidence, open dispute; no vendor bid revision |
| Manager double tap / colleague acts | Return existing final state; one payment or pickup event |
| Account deactivation | Immediately revoke sessions and deny actions; preserve obligations and flag affected records |

Proposed deactivation policy: active unaccepted bids from a newly inactive vendor are invalidated with an explicit reason and released. If already selected, close that unaccepted offer and move the listing to Needs re-auction; do not silently select a lower bid. Accepted payments continue to reconciliation. Branch suspension blocks new auctions/acceptances; unresolved rounds are closed explicitly with releases, while committed payments and records are retained. These exceptional transitions must be audited and included in the admin impact confirmation.

## 11. Notifications and language

| Trigger | Recipient | Example message / deep link |
|---|---|---|
| Auction starts | Assigned active vendors | New auction at PAI Indiranagar. iPhone 14, 128 GB. / V02 |
| Auction closes, winner selected | Branch managers | Highest offer ₹15,000. Accept within 10 minutes. / M11 |
| Vendor selected | Winning vendor | Your bid was selected. Waiting for store acceptance. / V06 |
| Funds released | Relevant vendor | ₹8,640 (bid + fee) is available again. Your offer expired. / V10 |
| Payment processing/paid | Branch managers and winner | Store payment is processing / Payment completed. / M13 or V12 |
| Points earned | Customer SMS | Points, rupee value, originating branch and transaction reference |
| Pickup marked | Winning vendor | Pickup marked complete by PAI Indiranagar. / V12 |
| Reward redemption | Customer SMS | Points used, discount value, branch, remaining balance and receipt reference |
| Deactivation | Active sessions | Account access has been disabled. Contact support. / S01 |

Normal body copy uses sentence case. Use `Place bid`, `Confirm bid`, `Accept offer`, `Start auction`, `Review & restart`, `Add money`, `Mark picked up` and `Redeem rewards` consistently. Labels explain state rather than relying on colors. Show countdown labels `Bidding ends in` and `Accept within`; avoid presenting the same timer as both.

No private personal information in push previews. Notification permission denial does not block use of in-app notifications. Service messages may be retried but should be deduplicated by event and recipient.

## 12. Planning schema and integration boundaries

This is a conceptual schema to support screen and workflow design, not a finalized database migration or implementation stack.

| Entity | Essential relationships / fields |
|---|---|
| Chain | ID, name/code, active state |
| Branch | Chain ID, code/name, address/contact, active state, current payout-beneficiary reference |
| User | ID, role, name/email, credential reference, active state, session version |
| ManagerBranch | Manager ID, branch ID, active assignment; initial UI uses one branch context |
| VendorBranch | Vendor user ID, branch ID, active assignment, assigned/revoked timestamps |
| Session | User ID, revocation state, refresh expiry/version; no inactive-user refresh |
| BeneficiaryVersion | Branch ID, masked display data, provider reference, verification state, validity dates |
| Customer | ID, normalized phone, minimal name; access scoped through branch transaction/reward records |
| CustomerEvidence | Customer/listing ID, creator ID, document type, protected asset references, OTP verification reference, consent/version timestamps |
| DeviceListing | Branch/creator/customer IDs, name, IMEI, platform/specs, status, current evidence version |
| DeviceMedia | Listing/version ID, media slot, protected object reference, capture/upload metadata, ready state |
| AuctionRound | Listing ID, sequential round number, snapshot version, start/close/accept-by times, outcome, winner bid ID, restart reason |
| Bid | Round/vendor IDs, base/deductions/final amount, server receipt/sequence, immutable status; unique round + vendor |
| Wallet | Unique vendor user ID, currency, authoritative ledger reference |
| WalletEntry | Wallet ID, signed movement/type, bid/payment/recharge reference, timestamp, idempotency identity |
| WalletHold | Bid/wallet IDs, amount, Reserved/Released/Consumed state, terminal reason |
| Recharge | Vendor ID, amount, Razorpay order/payment IDs, webhook confirmation and reconciliation state |
| Deal | Unique accepted round ID, vendor/branch, accepting manager, accepted amount/time, beneficiary snapshot, pickup actor/time |
| Payout | Unique deal reference, amount, provider identity, current state and attempt history |
| RewardPolicy | Version, earn ratio, point value, precision, categories, expiry, scope, eligible branch set, effective time |
| RewardAccount | Customer + originating branch + policy/currency dimension; never the vendor money wallet |
| RewardEntry | Earn/debit/reversal, originating branch, deal/redemption reference, units, policy version, unique issuance key |
| Redemption | Customer/branch/manager, invoice reference, eligible bill amount, points/discount, OTP verification reference, status |
| OtpChallenge | Purpose, recipient, bound operation/amount, expiry, attempts, consumed state; never expose code in ordinary logs |
| Notification | Event/recipient/channel, delivery state, retry identity, authorized deep-link target |
| SupportCase | Related listing/deal/payment/redemption, reason, actor, status and resolution records |
| AuditEvent | Actor, action, entity, timestamp, safe change summary and reason |

### Integrity requirements carried into later planning

- All money stored as integer paise. Points stored as integer subunits with explicit precision.
- One active round per listing and one immutable bid per vendor per round.
- No spendable negative wallet or rewards balance; transactional holds/redemptions.
- One accepted deal per round; one successful payout obligation per deal; unique reward issuance per paid deal.
- Outbox/event delivery ties financial state changes to eventual provider/SMS requests without requiring synchronous success.
- Provider callbacks authenticated and deduplicated; reconciliation handles callbacks arriving late or out of order.
- Store account snapshot retained on a deal so later bank edits cannot silently reroute an already accepted payment.
- Server authorization protects every record and asset, including deep links. Mask sensitive values and use expiring asset access.
- Deactivation checked on login, refresh and authenticated actions; session revocation pushes a logout signal. Offline apps cannot be visually reached instantly, but perform no authorized server actions and clear access on reconnect.
- OTP/document images are not included in general exports. Audit sensitive reveals and bank/account changes.
- Production provider selection, document retention/deletion rules and exact integration contracts are separate implementation work. Prototype buttons simulate these services with explicit sample data.

## 13. Later HTML prototype contract

Create only after this document is confirmed. Planned filename: `safedealz-prototype.html`.

### Viewer structure

- Top bar: SafeDealz Prototype, All Screens / Interactive Flow switch, scenario reset.
- Role tabs: Store Manager, Vendor, Super Admin, each with screen count.
- All Screens: phone frames for mobile; scaled desktop frames for admin. ID, name and state label outside frames. Role/section and status-variant filtering.
- Interactive Flow: one focused screen, screen picker, previous/back navigation and a visible path breadcrumb outside the device.
- Shared demo data across roles: submitting a vendor bid changes its wallet and the manager's auction; manager acceptance changes vendor/admin payments; Paid issues points; manager pickup updates vendor status.
- Demo controls outside product UI allow Advance auction, Advance acceptance, Payment succeeds/fails, Recharge succeeds/fails, and Reset scenario. Clearly label these as prototype controls.
- Role switching is a reviewer tool, not a production privilege-switching feature.
- Normal screen buttons are functional in simulation. No dead primary actions. Camera, SMS, login and payment states are demonstrations, not live services.
- Preserve sample state while switching roles. Reset restores deterministic fixtures. Avoid storing personal or financial data from real users.

### Dimensions and responsive behavior

- Design mobile at 390 × 844 logical pixels; validate 375px and 320px widths, larger text and landscape.
- Phone-frame ornament belongs to the viewer; app layouts use safe areas independently.
- Gallery phone frames may be scaled for fit, but interactive phone content remains readable without tiny whole-device shrinking.
- Admin design at 1440 × 900; validate 1280 and 1024. At smaller widths collapse sidebar and stack detail columns; tables retain labelled contained horizontal scrolling where necessary.
- Viewer at narrow widths becomes one column with scrollable role tabs. Keep screen navigation reachable outside the frame.
- Long pages scroll inside their app viewport. Sticky bottom actions receive matching content padding and keyboard clearance.

### Sample scenarios

All names, amounts and devices below are illustrative test fixtures, not business claims or actual personal records.

| Scenario | Example and expected result |
|---|---|
| Reservation example | Vendor starts ₹10,000; bid ₹8,000; Available ₹1,360; ₹1,300 bid + ₹104 fee rejected; expiry restores ₹10,000 |
| Successful trade | iPhone 14, PAI Indiranagar; vendor balance ₹20,000; base ₹16,000 minus ₹500 and ₹500 -> ₹15,000 held; acceptance -> payment; 1,500 points worth ₹750 |
| Tie | Two ₹15,000 bids; earliest server-submitted bid wins; other reservation released |
| No bids and restart | Android listing round 1 gets no bids; round 2 reuses KYC and accepts a fresh vendor bid |
| Partial redemption | From 1,500 points/₹750, redeem ₹300 on eligible ₹1,200 bill; use 600 points; leave 900 points/₹450 |
| Branch restriction | Same customer at another branch sees no redeemable balance from the originating branch |
| Delayed payout | Accepted on time; payment unresolved past acceptance timer; funds remain committed, no new auction or points |
| Pickup | Paid device remains Awaiting pickup until originating branch manager confirms; vendor sees final Picked up |
| Deactivation | Admin disables vendor; active session exits and server actions fail; financial history is retained |

## 14. Review and validation

### Document review completed

- UI UX Pro Max system query evaluated for relevance; functional style and typography retained; irrelevant marketing recommendations excluded.
- Taste applied after the first design pass: clear sans-serif hierarchy, intentional two-color roles, consistent radii, restrained motion, one label per action, and no decorative marketing patterns.
- Latest wallet reservation decision replaces every earlier no-reservation assumption.
- Three-minute bidding and ten-minute acceptance are separate and linked to server deadlines.
- Seven device-media items remain separate from bill/KYC evidence.
- Re-auction retains identity evidence and preserves round history.
- Payout initiation and confirmed payment are distinct; points follow confirmed payment.
- One vendor account owns one wallet; no team/shared wallet controls.
- Pickup has no deadline and no vendor verification code.
- Branch-only rewards include a future scope mechanism without enabling it now.
- Permission restrictions, exception views and cross-app destinations are specified.

### HTML acceptance checklist, to run after approval and implementation

- [ ] Every catalogue screen and required variant is accessible from the viewer.
- [ ] All primary actions navigate or update sample state; no invented live integrations.
- [ ] Wallet holds, releases, payments and rewards follow the same sample ledger across roles.
- [ ] Bid/acceptance expiry, ties, duplicates and re-auction are demonstrated correctly.
- [ ] Error fields retain values; linked error summaries and focus behavior work.
- [ ] Camera-only interaction is represented accurately as a prototype constraint.
- [ ] Text contrast, control boundaries and status semantics are checked on rendered screens.
- [ ] Touch targets, safe areas, keyboard clearance, focus visibility and 200% text zoom are checked.
- [ ] Reduced motion, screen-reader labels, tab navigation and dialog focus restoration work.
- [ ] Timer updates do not flood screen readers; announce useful threshold changes and expiry.
- [ ] No customer KYC leaks into vendor or other-manager views, notifications or exports.
- [ ] Rendered mobile and desktop layouts have no clipped amounts, labels or actions.
- [ ] Wordmark/assets are honest; sample device/customer data is clearly fictitious.

This document is ready for owner review. Visual rendering and interaction tests remain future HTML work, not completed tests. The next authorized stage is revising this document from feedback; HTML begins after explicit confirmation.

## Login and admin CRUD update

S03 and S05 are removed from the screen catalogue. Expired or inactive sessions return to S01 (mobile) or A00 (admin) with an inline explanation. Access restrictions appear within the affected view. Login has email and password only, with an accessible trailing eye button inside the password field. There is no remember-device checkbox, separate Show Password link, password recovery or signup.

### Admin record interactions

| Area | Create | Read | Update | Delete / archive |
|---|---|---|---|---|
| A02 / A03 Chains | Blank chain form | Selected chain details | Name, code, contact, status | Delete unused; archive linked; resolve active child branches first |
| A04 / A05 Branches | Parent chain and business bank form | Selected branch details | Location, parent, beneficiary, status | Delete unused; archive linked; reassign or deactivate managers first |
| A06 / A07 Managers | Name, email, initial password, branch | Selected manager details | Contact, branch, status, optional password change | Delete unused; archive linked; inactive accounts cannot log in |
| A08 / A09 Vendors | Name, email, initial password, branch assignments | Selected vendor details | Contact, status, cross-chain branch assignments | Delete unused; archive linked; resolve wallet holds and processing funds first |
| A18 Support | Created only by Store Manager or Vendor | Case details dialog | Super Admin updates owner, notes and resolution status | Retain ticket and financial history |
| A17 Reward policy | Existing policy | Current settings | Save settings | Retain policy and reward history |
| A10–A16 Transactions | Created by the operational flows | Inspect device, bids, payout and ledger | Existing reconciliation and corrective actions | No deletion of bids, payments, wallet or rewards history |
| A21 Audit | System records admin actions | Read action, actor context and time | Immutable | No deletion |

Create forms start blank; View and Edit load the selected record. Save validates required fields and duplicate names/emails and updates the list. Destructive actions have record-specific confirmation. Archived records remain visible with Restore. Cancellation leaves the record intact. The HTML simulates these operations in memory; reload or Reset restores demo data. Password fields demonstrate the onboarding UI and do not store real credentials. Production must audit mutations, validate dependencies server-side, revoke inactive sessions, and preserve historical beneficiary snapshots.

CRUD dialogs and form modes are variants of the existing screen IDs. There are 74 base screen IDs. Financial records stay immutable rather than receiving arbitrary edit/delete controls.

### Navigation, notifications and timing refinement

M04 uses a single merged flow-progress bar (`Basic & SIM 2 of 9` through `Camera 8 of 9`) and an app-top Back control. There is no second in-screen Back in the action bar. The first inspection Back returns to M03; later backs save and return to the previous inspection step. The notification icon stays hidden on M03–M06 so the manager can focus on the form. The account-lock dropdown is removed. Admin child screens show a visible Back control to their parent list or overview: A03→A02, A05→A04, A24→A23, A07→A06, A09→A08, A11→A10, A13→A12, A14→A08, A16/A17→A15, A22→A01 and S04→A01.

Vendor notifications contain only eligible offer alerts, winning-offer decisions and pickup confirmation for the corresponding won device. Admin S04 contains all system, store, vendor and administrator notification events, with sender, audience, category, delivery-state and search filters. Super Admin can compose a notification for all users, all stores, all vendors, a specific store or a specific vendor. Each sent notification is added to the delivery history.

A20 permits whole-minute bidding durations from 1–30 and manager acceptance durations from 1–60. Saved values apply when the next auction round starts; active deadlines remain unchanged. A21 is an immutable security and operations trail used to identify who performed an action, when it occurred and which record it affected.

### Prototype theme control

The client-approved production theme is Sky Blue across Store Manager, Vendor, Diagnostics, Admin, and Super Admin. The prototype opens in Sky Blue by default. Its Theme dropdown retains Purple only as a comparison preview for client review; Purple is not an implementation target. Sky Blue controls the global primary, hover, focus, active-navigation, selected-control, card-tint, chart and authentication tokens. The darker `#0369A1` action color uses white button text, while brighter `#38BDF8` is reserved for highlights and tinted surfaces.

### Login and device entry refinement

S01 has no notification icon; notifications are available after Login. M03 starts with Apple/Android platform cards, then model, then both 15-digit GSMA IMEIs. Storage is required for both device types. Apple selection reveals a required battery-health field accepting whole percentages from 1 to 100. Android selection hides battery health and reveals a required RAM dropdown, initially prompting a selection. Continue validates the visible required fields, scrolls to the top of the form, and retains input on validation errors or device-type changes. M04 displays the saved Apple battery health as read-only condition information.


## September 13 approved flow and commercial rules

This revision replaces earlier pre-auction customer-verification and bid-only wallet examples. Preserve existing screen IDs: M04 physical checks, M05 seven-item evidence, M06 camera, M08 post-acceptance customer verification.

### Intake and post-acceptance flow

M03 identity → M04 required physical checks → M05 evidence (M06 camera) → M09 review → Android M07 diagnostics/result import or Apple direct auction → M10 live auction → M11 offer → M12 acceptance → M08 customer verification → M13 payout → M14 pickup.

Apple intake: platform, model, both 15-digit GSMA IMEIs, storage, battery health; no RAM. Android intake: platform, model, both 15-digit GSMA IMEIs, storage and RAM 4/6/8/12/24 GB only. Neither offers 2 GB, 3 GB or custom RAM. The separate purchased-device section in M08 uses Apple/Android selection, required model name/number, required storage (64/128/256/512 GB or 1 TB), and Android-only RAM (4/6/8/12/24 GB). Apple has no RAM or battery-health field here. Both purchased-device IMEIs are required, distinct 15-digit values; live-camera OCR fills editable text fields, and manual entry/correction is supported. M03 and M08 reuse the same storage, RAM and IMEI controls. It never replaces or overwrites traded-device identity.

### M04 complete physical checks

M04 is one saved seven-step journey on the shared trade-in progress bar (`2 of 9` through `8 of 9`, after Device identity and before Capture device). Do not show a separate `Step n of 7` indicator plus the six-dot intake stepper. Back saves partial selections from the app top; Continue validates the current step, scrolls to the top, and focuses the error. No successful answer is preselected. Answers use tappable option tiles, not a stacked radio list.

1. Basic & SIM: both platforms ask SIM 1/2 working and supported SIM configuration, including Not applicable/Not available where appropriate.
2. Screen: both platforms ask touch, replacement/copy screen, spots, lines, discoloration/fading, scratches/chips/cracks, paint/bubbles and flicker.
3. Body: scratches/paint, dents/cracks, panel and bent/loose-screen condition.
4. Parts & security: Apple parts information and battery-health band; both platforms ask account, country/carrier and finance locks.
5. Accessories, origin & age: Box/Bill/Charger, purchase origin, age and repair history. Any age below 11 months requires Bill and live capture. There is no separate warranty dropdown.
6. Functional: both platforms manually record Wi-Fi, Bluetooth, vibration, speakers, buttons, SIM tray, GPS, proximity, charging, audio jack, microphone and biometrics.
7. Camera: both platforms manually record front/back image quality and camera glass.

The manual M04 answers and the independent Diagnostics report are separate cards visible to the manager, vendor and admin. Importing diagnostics never overwrites or disables manual answers. Keep actual diagnostic result status and source separate from manual observations.

Do not include a white, red, green or blue full-screen inspection. M04 directly asks the manager to record visible spots, lines, discoloration, fading, flickering, scratches, chips, cracks and paint/bubbles. The seven evidence items remain Front, Back, Top, Bottom, Left, Right and one rotation video.

### M11 rebid and decline

Rebid opens a required positive customer-expectation amount. Confirm closes the current offer, releases bid and fee, records reason/time/round/expectation, notifies assigned vendors and starts a new configured bidding timer. Expectation is visible to vendors and is not a minimum bid. Each vendor gets one new immutable bid per fresh round. No customer name, phone or KYC is collected here.

Decline dropdown: Customer does not want to do the transaction; Customer is not satisfied with the price; Customer data backup issue; Others. Others reveals a required reason field. Exclude Card not working. Persist decline reason in device history and notifications; release all unaccepted bid/fee holds. Accepted deals need the support/reconciliation flow.

### Platform charges and wallet commitment

| Final bid amount | Rate on the entire bid |
|---|---:|
| Above ₹0 through ₹20,000, including below ₹10,000 | 8% |
| Above ₹20,000 through ₹30,000 | 7% |
| Above ₹30,000 | 6% |

Use paise precision, round the fee to two decimal places, and snapshot rate/fee with each bid. V04 updates bid, rate, fee, total and available-after values live; V05 repeats them before final confirmation. Total = final bid + platform fee. Available wallet must cover the total at both review and atomic submission. Show Not enough balance with required and available amounts; allow Add money or a smaller bid. No extra tax is invented in this prototype.

₹15,000 bid → ₹1,200 fee → ₹16,200 reserved. ₹10,000 wallet with ₹8,000 bid → ₹640 fee → ₹8,640 reserved → ₹1,360 available. Winning rank uses the bid alone. Release both bid and fee for a losing bid, unaccepted expiry, decline or rebid. Acceptance commits both amounts immediately; KYC completion releases the store transfer. Payout success debits the total once: bid to store, fee to platform. Pending or failed transfers retain the commitment for reconciliation. Rewards are calculated from the store bid amount, excluding platform charges.

Production schema additions: physical_check_answers with inspector/timestamp and manual-answer source (`store_manual`), with an independent diagnostic_reports record and test-result payload (`diagnostics_qr`); auction_round.expected_amount and decline_reason; bid.fee_rate, fee_amount, total_commitment and immutable fee-policy snapshot; payment instruction created_at, verification_status, released_at and idempotency key; customer purchased_device_platform/model/storage/ram/imei1/imei2 linked only after acceptance. Backend processing starts on acceptance, with no provider transfer before KYC passes. Prototype interactions simulate these services; no real payment or external verification runs.


### M08 purchased-device identity update

After offer acceptance, collect the purchased phone’s Apple/Android type, model name/number and storage. Require RAM only for Android, using 4/6/8/12/24 GB. Capture IMEI 1 and IMEI 2 through live-camera scanning or manual entry. Scan results populate the same editable fields for correction; validate distinct 15-digit numbers before completing verification. Preserve customer details, OTP state and purchased-device inputs when switching device type or scanning. Purchased-device identity is stored separately from the traded device. In this client prototype, OCR uses labelled demo values.


### M04 manual inspection and independent Diagnostics report — current rules

These rules replace earlier references to Android auto-filled M04 sections and the separate warranty dropdown. Both Apple and Android require the manager to select manual answers in all applicable M04 fields. The order is Basic/SIM → Screen → Body → Parts/security → Accessories/origin/age → Functional → Camera. Functional and Camera follow the other form sections. Diagnostics never fills, hides or replaces M04 answers, even when a report has already been imported.

Display two separate cards on Store Manager M09, Vendor V02 and Admin A11: **Store manager inspection** (all manual answers) and **Device Diagnostics report** (independent imported tests, report reference, both IMEIs, touch coverage, remaining dots and attempts). Before import, show Pending; for Apple, show Not applicable. Retain conflicting observations as separate source records. Production diagnostic reports must preserve actual passed/failed/unavailable results; the client demo labels simulated results.

Collect device age once: Below 3 months; 3 to below 6 months; 6 to below 11 months; 11 months or older. All three below-11-month bands require Bill plus live bill capture for either platform. The 11-month boundary is included in the oldest band to avoid gaps. Remove the repeated warranty dropdown and warranty rows; age must not be represented as proof of manufacturer warranty. Validate the bill requirement before leaving Accessories/origin/age and again before finishing M04.

## Latest amendment — scoped Admin role (2026-09-13)

This amendment supersedes earlier references that treat all administrative users as globally privileged. Super Admin and Admin share the React interface; Store Manager, Vendor and Diagnostics remain Flutter apps. Only Super Admin can create/manage Admin accounts and assign their branches. Admin menus, records, filters, details, counts, exports and notifications are restricted to assigned branches and permitted operations. Empty scope grants no branch access. Existing sensitive KYC ownership restrictions remain unchanged. See [architecture.md](architecture.md) and [security.md](security.md).

New screens: A23 — Admin list (Super Admin only); A24 — Admin create/edit, active status and assigned-store selection (Super Admin only). A00 login routes both administrative roles into their permitted React experience. Existing A-series screens use scoped views for Admin where allowed; platform-wide settings, global wallet data and administrative-role controls remain Super Admin-only.

Prototype synchronization: design.html includes A23/A24 navigation, forms and Super Admin-only assignment copy.

## Latest amendment — Store Manager Home and trade-in UX (2026-09-15)

This amendment records the live Store Manager Flutter UX in design.md and design.html. Sky-blue tokens and existing auction/payment rules are unchanged.

- **M01 Home:** App bar title is the logged-in branch; subtitle is the signed-in manager name; both occupy about 60% width with ellipsis. Notification bell remains. Remove the SafeDealz wordmark, Hello greeting and KR avatar from Home. New trade-in is a tinted card CTA (`Capture a device and start bidding`). Android/system back shows `Double tap back to close the app` and exits on a second tap within two seconds. In the HTML prototype, press Escape on Home (Interactive flow) to demonstrate the same toast.
- **M03 identity:** Choose Apple or Android first (platform cards), then model, then IMEI 1 / IMEI 2. Both platforms use a hard 15-digit GSMA IMEI. Scan IMEIs is a secondary control under the fields. One merged flow-progress bar: Device identity `1 of 9`. App-top Back to Home; no notification bell.
- **M04 inspection:** Same 9-step bar (`2 of 9`–`8 of 9`). App-top Back only; Continue only in the action bar. Continue and Back scroll to the top. Option tiles for answers.
- **M05 capture:** `9 of 9`. Full-width rotation video, then a 2-column photo grid. One capture per slot. Empty tap opens the camera; filled tap previews with Clear / Capture again. Continue is disabled until every slot is filled. Local preview is shown when a file exists.
- **M06 camera:** Live capture copy. After shutter, show Preview ready. Capture becomes Retake. Use capture stays disabled until a capture exists. No “SIMULATED CAMERA / CLIENT DEMO” production copy.
- **M11 Highest offer:** App-top Back returns to the previous screen when the stack allows it, otherwise Home. Notification bell is hidden.

design.html Interactive flow is the visual reference for these screens. Open Home, New trade-in, inspection, capture and Highest offer to review the HTML change.
