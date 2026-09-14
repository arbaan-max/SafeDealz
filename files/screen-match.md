# HTML screen visual match register

Compare each live screen to the matching frame in [design.html](design.html). Behavior and fields stay in [design.md](design.md). Appearance follows the HTML.

Do not start Store Manager/Vendor/Diagnostics visual match until the owner authorizes P26.

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
| S01 | Login | Pending | Shared HTML login; Store Manager app |
| S04 | Notifications | Pending | Manager inbox |
| M01 | Home | Pending | |
| M02 | Devices | Pending | |
| M03 | Device identity | Pending | |
| M04 | Physical inspection | Pending | |
| M05 | Capture device | Pending | |
| M06 | Camera and preview | Pending | |
| M07 | Scan diagnostic result | Pending | |
| M08 | Customer verification | Pending | |
| M09 | Device summary | Pending | |
| M10 | Live auction | Pending | |
| M11 | Highest offer | Pending | |
| M12 | Accept confirmation | Pending | |
| M13 | Payment status | Pending | |
| M14 | Deal detail | Pending | |
| M15 | Needs re-auction | Pending | |
| M16 | Device history | Pending | |
| M17 | Pickup confirmation | Pending | |
| M18 | Rewards lookup | Pending | |
| M19 | All redemptions | Pending | |
| M20 | Redeem rewards | Pending | |
| M21 | Redemption confirmation | Pending | |
| M22 | Redemption receipt | Pending | |
| M23 | Report issue | Pending | |
| M24 | Account | Pending | |

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
