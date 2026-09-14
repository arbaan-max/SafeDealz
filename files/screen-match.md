# HTML screen visual match register

Compare each live screen to the matching frame in [design.html](design.html). Behavior and fields stay in [design.md](design.md). Appearance follows the HTML.

Do not start Vendor/Diagnostics visual match until the owner authorizes P27.

## How to mark a row

| Status | Meaning |
| --- | --- |
| Pending | Not compared yet |
| Same | Live UI matches the HTML frame; no code change |
| Updated | Live UI did not match; UI was changed to follow the HTML |

Compare Admin in the desktop browser against HTML desktop frames. Compare Store Manager, Vendor and Diagnostics on an emulator against HTML mobile device frames. Demo names and amounts may differ; layout, hierarchy, labels, controls, spacing and sky-blue styling must match.

## P25 — Admin (React)

| Screen | HTML title | Status | Notes |
| --- | --- | --- | --- |
| A00 | Super Admin Login | Updated | Split intro + Super Admin Login |
| A01 | Overview | Updated | Paid today, week chart, recent auctions |
| A02 | Chains | Updated | Search, export, row opens record, 3-dot edit |
| A03 | Chain form | Updated | Card + two-column form |
| A04 | Branches | Updated | Search, export, row opens record, 3-dot edit |
| A05 | Branch onboarding/detail | Updated | Card form |
| A06 | Managers | Updated | Search, export, row opens record, 3-dot edit |
| A07 | Manager onboarding/edit | Updated | Card form |
| A08 | Vendors | Updated | Search, export, row opens view, 3-dot edit/wallet |
| A09 | Vendor onboarding/edit | Updated | Card form |
| A10 | Auctions/devices | Updated | Device/branch columns, row opens detail |
| A11 | Device and auction detail | Updated | Media, specs, current round, bids |
| A12 | Payments | Updated | Reference/store/vendor columns, row opens detail |
| A13 | Payment detail | Updated | Amount card + attempts timeline |
| A14 | Vendor wallet detail | Updated | Stat tiles |
| A15 | Rewards overview | Updated | Stat tiles |
| A16 | Customer branch rewards | Updated | Shared admin chrome |
| A17 | Reward policy | Updated | Card form |
| A18 | Support cases | Updated | Search, export, row opens case |
| A19 | Reports | Updated | Period filters, branch table, file download |
| A20 | Settings | Updated | Auction timers only; integration card removed |
| A21 | Audit log | Updated | Store names, no ObjectIds |
| A22 | Account/session settings | Updated | Confirm password, 30-day session, no revoke |
| A23 | Admins | Updated | Shared admin chrome + badges |
| A24 | Admin create/edit | Updated | Card form |
| S04 | Notifications (admin) | Updated | Compose card + history; bell in top bar |

## P26 — Store Manager (Flutter)

| Screen | HTML title | Status | Notes |
| --- | --- | --- | --- |
| S01 | Login | Updated | Welcome back, Email address, password eye, admin-created notice |
| S04 | Notifications | Updated | Inbox list, Mark all read, Today/Earlier |
| M01 | Home | Updated | Brand header, Hello, New trade-in, stats, 4-tab nav |
| M02 | Devices | Updated | Search, HTML chips, New trade-in action |
| M03 | Device identity | Updated | Steps, Apple/Android radios, RAM/battery rules |
| M04 | Physical inspection | Updated | Step copy, Back/Continue action bar |
| M05 | Capture device | Updated | Media slots, Continue action |
| M06 | Camera and preview | Updated | Capture surface, demo ready |
| M07 | Scan diagnostic result | Updated | QR import card |
| M08 | Customer verification | Updated | KYC + purchased device identity |
| M09 | Device summary | Updated | Specs, inspection, diagnostics cards |
| M10 | Live auction | Updated | Countdown, Cancel auction |
| M11 | Highest offer | Updated | Timer, Accept/Rebid/Decline |
| M12 | Accept confirmation | Updated | Payout instruction copy |
| M13 | Payment status | Updated | Processing/Refresh, no approve |
| M14 | Deal detail | Updated | Amount card, pickup path |
| M15 | Needs re-auction | Updated | Reason + Review & restart |
| M16 | Device history | Updated | Timeline rows |
| M17 | Pickup confirmation | Updated | Vendor OTP, Confirm handover |
| M18 | Rewards lookup | Updated | Branch badge, Find customer |
| M19 | All redemptions | Updated | Branch list rows |
| M20 | Redeem rewards | Updated | Invoice/category/discount |
| M21 | Redemption confirmation | Updated | OTP, Verify & redeem |
| M22 | Redemption receipt | Updated | Billing-software notice |
| M23 | Report issue | Updated | Tell us what happened, Submit issue |
| M24 | Account | Updated | Store manager, masked bank, Logout only here |

## P27 — Vendor (Flutter)

| Screen | HTML title | Status | Notes |
| --- | --- | --- | --- |
| S01 | Login | Pending | Shared HTML login; Vendor app |
| S04 | Notifications | Pending | Vendor inbox |
| V01 | Live queue | Pending | |
| V02 | Device detail | Pending | |
| V03 | Media viewer | Pending | |
| V04 | Your bid | Pending | |
| V05 | Confirm bid | Pending | |
| V06 | Bid detail | Pending | |
| V07 | Wallet | Pending | |
| V08 | Add money | Pending | |
| V09 | Razorpay recharge status | Pending | |
| V10 | Wallet transaction | Pending | |
| V11 | Reserved funds | Pending | |
| V12 | Purchased device | Pending | |
| V13 | My bids | Pending | |
| V14 | Performance | Pending | |
| V15 | Assigned stores | Pending | |
| V16 | Support issue | Pending | |
| V17 | Account | Pending | |

## P28 — Diagnostics (Flutter)

| Screen | HTML title | Status | Notes |
| --- | --- | --- | --- |
| D01 | Diagnostics start | Pending | |
| D02 | Permissions | Pending | |
| D03 | Automated checks | Pending | |
| D04 | Touch canvas | Pending | Full-screen diagnostic surface |
| D05 | Physical controls | Pending | |
| D06 | Camera, audio and sensors | Pending | |
| D07 | Report review | Pending | |
| D08 | Final result QR | Pending | |
