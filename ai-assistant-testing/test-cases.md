# AI Assistant — Test Cases

| ID | Scenario | Expected result | Status |
|---|---|---|---|
| TC-AI-001 | Valid prompt | Success, valid response schema and correlation ID | Not Run |
| TC-AI-002 | Empty prompt | Validation failure (4xx) | Not Run |
| TC-AI-003 | Oversized prompt | Documented size limit enforced | Not Run |
| TC-AI-004 | Invalid bearer token | 401, no private content | Not Run |
| TC-AI-005 | Cross-user conversation access | 403/404, no data exposure | Not Run |
| TC-AI-006 | Upstream model timeout | Graceful failure; no duplicate request | Not Run |
| TC-AI-007 | Conversation A vs B | No unintended context leakage | Not Run |
| TC-AI-008 | Burst requests | Rate limiting per product contract | Not Run |
| TC-AI-009 | Repeated request ID | Defined idempotency handling | Not Run |
| TC-AI-010 | Injection-like text | Assistant follows product security policy | Not Run |

### GraphQL checks (if supported)
Unauthorized field access, invalid variable types, excessive nesting and required variable validation against published schema.
