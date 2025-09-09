SELECT 
    t.tenant_name,
    SUM(tr.amount) AS total_paid
FROM tenant t
JOIN lease l ON t.tenant_id = l.tenant_id
JOIN transactions tr ON l.lease_id = tr.lease_id
GROUP BY t.tenant_id
ORDER BY total_paid DESC
LIMIT 5;
