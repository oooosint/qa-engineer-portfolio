# Privacy & VPN Platform — QA Case Study

**Type:** hypothetical requirements and test design. No live product tested.

**Goal:** prevent privacy regressions during connection failures, server switching and authentication.

Assumptions: VPN client supports server switching, auto-reconnect, kill switch and connection state indicator. Actual behavior must be checked against an approved specification.

| Risk | Impact | Likelihood | Priority |
|---|---|---|---|
| Traffic exits unprotected during reconnect | Critical | Medium | P0 |
| DNS requests bypass protected resolver | High | Medium | P1 |
| False "Connected" state | High | Medium | P1 |
| Wrong server shown after switching | Medium | Medium | P2 |

See [checklist](checklist.md), [test cases](test-cases.md) and [example bugs](example-bug-reports.md).
