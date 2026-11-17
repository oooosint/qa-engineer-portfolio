# VPN test cases — illustrative product

## TC-VPN-001 — Reconnect after network interruption
**Preconditions:** authenticated; VPN active; auto-reconnect enabled.
**Steps:** (1) Connect to server A. (2) Disconnect internet. (3) Restore internet. (4) Observe UI and verify routing.
**Expected:** accurate state; tunnel recovers per spec; kill switch blocks leakage while disconnected.
**Status:** Not Run.

## TC-VPN-002 — Switch server with active tunnel
**Preconditions:** active connection to A.
**Steps:** (1) Choose B. (2) Observe state change. (3) Inspect assigned exit IP and DNS behavior.
**Expected:** correct exit location B; no false connected state; safe handover.
**Status:** Not Run.

## TC-VPN-003 — Expired session
**Steps:** (1) Create authorized session. (2) Simulate expiry. (3) Request protected setting.
**Expected:** rejected token; secure reauthentication; no information disclosure.
**Status:** Not Run.
