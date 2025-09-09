SELECT 
    t.tenant_name,
    l.total_number_of_months,
    (l.total_number_of_months * r.monthly_fee) AS total_due,
    SUM(IFNULL(tr.amount, 0)) AS total_paid,
    ((l.total_number_of_months * r.monthly_fee) - SUM(IFNULL(tr.amount, 0))) AS balance
FROM lease l
JOIN tenant t ON l.tenant_id = t.tenant_id
JOIN room r ON l.room_id = r.room_id
LEFT JOIN transactions tr ON l.lease_id = tr.lease_id
GROUP BY l.lease_id;
