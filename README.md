# Maxim Linkov · Manual QA Engineer — Portfolio

> **Demonstration portfolio for Manual QA Junior+ roles** specializing in web products, AI, online privacy and cryptocurrency payments.

**Important:** These are hypothetical test designs, not evidence of professional production QA experience. Tests are marked **Not Run** until executed against a permitted target. Example bug reports describe **unverified potential defects**.

## Portfolio projects

| Project | Coverage | Artifacts |
|---|---|---|
| [01 · Privacy & VPN](vpn-privacy-testing/) | Session, VPN connection lifecycle, kill switch, DNS/WebRTC, errors | [Checklist](vpn-privacy-testing/checklist.md) · [Test cases](vpn-privacy-testing/test-cases.md) · [Example bugs](vpn-privacy-testing/example-bug-reports.md) |
| [02 · AI Assistant](ai-assistant-testing/) | REST API, input validation, authentication, context isolation, rate limits | [Test cases](ai-assistant-testing/test-cases.md) · [Postman collection](ai-assistant-testing/postman_collection.json) · [Test data](ai-assistant-testing/test-data.json) |
| [03 · Crypto Payments](crypto-payment-testing/) | Transaction lifecycle, webhooks, idempotency, access control, consistency | [Test cases](crypto-payment-testing/test-cases.md) · [SQL checks](crypto-payment-testing/sql-checks.sql) |

## Focus
- Functional, exploratory, regression-oriented, negative and risk-based test design
- Clear bug reporting: reproducible steps, expected/actual result, severity, environment and evidence
- HTTP/JSON and REST API test examples using Postman
- SQL examples for duplicate ledger entries and missing payment credits
- Domain risks: privacy leaks, cross-user access, webhook duplication, AI conversation isolation

## Run the Postman sample
1. Import `ai-assistant-testing/postman_collection.json` into Postman.
2. Set `baseUrl` to a local test server you own or are authorized to test.
3. Adapt the illustrative endpoint `/api/v1/chat` and response assertions to the actual API contract.
4. Run requests and attach a redacted test report. This repository does **not** contain any verified live test runs.

## About the author
Technically curious QA candidate with hands-on experience exploring AI/LLM tools, virtual machines, VPN/networking setups and web tooling. This portfolio is targeted to Junior+ Manual QA opportunities in AI, cybersecurity and crypto payment ecosystems.

**Contact:** Email and Telegram to be added after confirmation.

## Evidence & security
Never publish access tokens, private keys, confidential API schemas, real customer records or unredacted logs. Mark `Passed` or `Failed` only with reproducible evidence and a known test environment.
