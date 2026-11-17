-- Illustrative PostgreSQL schema, not executed against a live database.
-- Check duplicate credits
SELECT payment_id, COUNT(*) AS credit_events, SUM(amount) AS total_credit
FROM ledger_entries
WHERE entry_type = 'payment_credit'
GROUP BY payment_id
HAVING COUNT(*) > 1;

-- Check paid invoices without credits
SELECT i.id, i.order_id, i.status
FROM invoices i
LEFT JOIN ledger_entries l
  ON l.payment_id = i.id AND l.entry_type = 'payment_credit'
WHERE i.status = 'paid'
GROUP BY i.id, i.order_id, i.status
HAVING COUNT(l.id) = 0;

-- Check duplicate processed webhook events
SELECT provider_event_id, COUNT(*) AS records
FROM webhook_events
WHERE processing_status = 'processed'
GROUP BY provider_event_id
HAVING COUNT(*) > 1;
