# Example bug reports — hypothetical, not observed

## EXAMPLE-VPN-BUG-01 — "Connected" shown while tunnel is down
- **Severity:** Critical if private traffic bypasses tunnel.
- **Environment:** TBD after execution.
- **Preconditions:** VPN connected; kill switch enabled.
- **Steps:** Interrupt tunnel service while general network stays active; observe UI and outbound traffic.
- **Expected:** UI reflects disconnection; kill switch blocks traffic according to specification.
- **Hypothetical actual:** UI incorrectly shows Connected and traffic exits directly.
- **Required evidence:** timestamps, packet trace, before/after public IP, sanitized logs.

## EXAMPLE-VPN-BUG-02 — Wrong server after reconnect
- **Severity:** Medium.
- **Hypothetical actual:** UI shows server B but exit IP belongs to server A.
- **Evidence to collect:** screen recording, server IP mapping, timestamps.

**These are example scenarios, NOT bugs found in a real application.**
