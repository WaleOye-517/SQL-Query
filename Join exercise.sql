USE sql_invoicing;
SELECT p.payment_id,invoice_id,c.name,date,pm.name AS payment_type,p.amount
FROM payments p
JOIN clients c 
ON p.client_id = c.client_id
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id