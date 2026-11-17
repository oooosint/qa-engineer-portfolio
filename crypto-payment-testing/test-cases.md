# Crypto payment integration test cases

| ID | Test scenario | Expected | Status |
|---|---|---|---|
| TC-CR-001 | Create invoice with valid asset/network | Unique invoice, correct amount and network | Not Run |
| TC-CR-002 | Zero or negative amount | Validation error; no invoice | Not Run |
| TC-CR-003 | Unsupported payment network | No invoice issued | Not Run |
| TC-CR-004 | Same idempotency key sent twice | Only one business transaction | Not Run |
| TC-CR-005 | Duplicate signed payment webhook | Exactly one credit | Not Run |
| TC-CR-006 | Invalid webhook signature | No state change | Not Run |
| TC-CR-007 | Delayed confirmations | State changes at configured threshold | Not Run |
| TC-CR-008 | Partial payment or overpayment | Documented policy enforced | Not Run |
| TC-CR-009 | Parallel status updates | No illegal state transition | Not Run |
| TC-CR-010 | Access to another customer's invoice | Denied with no private data leakage | Not Run |

## Hypothetical defect — EXAMPLE-CR-001
**Title:** Duplicate webhook creates duplicate balance credit.
**Severity:** Critical. **Priority:** High.
**Preconditions:** test invoice created in controlled environment.
**Steps:** send two authenticated callbacks with identical provider event ID; inspect ledger.
**Expected:** exactly one credit entry.
**Hypothetical actual:** two credits posted.
**Evidence to collect after execution:** masked event payloads, request IDs, timestamps, anonymized ledger rows.

**This report is illustrative, not a confirmed defect.**
