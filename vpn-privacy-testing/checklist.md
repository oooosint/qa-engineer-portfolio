# VPN / privacy checklist

**Execution status:** Not Run (all items).

## Authentication & session
- [ ] Valid login / invalid credentials / locked account
- [ ] Logout invalidates session and refresh tokens
- [ ] Expired session does not expose protected state
- [ ] Subscription-only servers require authorization

## Connection lifecycle
- [ ] Connect/disconnect update connection indicator
- [ ] Change server while disconnected and connected
- [ ] Sleep/resume device
- [ ] Network loss/restoration and auto-reconnect
- [ ] Wi-Fi ↔ cellular transition where supported
- [ ] VPN server timeout
- [ ] Rapid repeated connect/disconnect actions
- [ ] No misleading Connected state after failed reconnect

## Privacy
- [ ] Public IP before/after VPN connect
- [ ] DNS resolution according to product security contract
- [ ] WebRTC candidate exposure according to policy
- [ ] Kill switch blocks unprotected traffic when enabled
- [ ] IPv6 tunneled/blocked according to contract
- [ ] No passwords, access tokens or private keys in logs

## UX and resilience
- [ ] Clear error messages for unavailable server
- [ ] Server list sorting/filtering
- [ ] Settings persist after restart
- [ ] Accessible labels and contrast
- [ ] Mobile viewport compatibility
