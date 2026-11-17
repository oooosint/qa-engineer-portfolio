# Crypto Payment Gateway — Integration QA

**Type:** simulated payment workflow; illustrative SQL and scenarios. No live financial transactions performed.

Proposed state machine: `created → pending → confirming → paid`. Alternative outcomes: `expired`, `failed`, `cancelled` if allowed by actual gateway.

Risk focus: duplicate webhook callbacks, race conditions, unsupported asset/network, decimal precision, delayed confirmations, partial payments, unauthorized invoice access, signed webhook verification, and eventual consistency.

See [test cases](test-cases.md) and [SQL checks](sql-checks.sql).
