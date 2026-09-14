# HTML screen visual match register

Compare each live screen to the matching frame in [design.html](design.html). Behavior and fields stay in [design.md](design.md). Appearance follows the HTML.

Do not start this work until the owner authorizes P25 (or an inclusive range through a later visual-match phase).

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
| A00 | Super Admin Login | Pending | |
| A01 | Overview | Pending | |
| A02 | Chains | Pending | |
| A03 | Chain form | Pending | |
| A04 | Branches | Pending | |
| A05 | Branch onboarding/detail | Pending | |
| A06 | Managers | Pending | |
| A07 | Manager onboarding/edit | Pending | |
| A08 | Vendors | Pending | |
| A09 | Vendor onboarding/edit | Pending | |
| A10 | Auctions/devices | Pending | |
| A11 | Device and auction detail | Pending | |
| A12 | Payments | Pending | |
| A13 | Payment detail | Pending | |
| A14 | Vendor wallet detail | Pending | |
| A15 | Rewards overview | Pending | |
| A16 | Customer branch rewards | Pending | |
| A17 | Reward policy | Pending | |
| A18 | Support cases | Pending | |
| A19 | Reports | Pending | |
| A20 | Settings | Pending | |
| A21 | Audit log | Pending | |
| A22 | Account/session settings | Pending | |
| A23 | Admins | Pending | |
| A24 | Admin create/edit | Pending | |
| S04 | Notifications (admin) | Pending | Admin history/compose |

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
