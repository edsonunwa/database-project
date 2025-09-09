SELECT 
    t.tenant_id,
    t.tenant_name,
    t.tenant_number,
    t.tenant_contact,
    r.room_id,
    r.monthly_fee,
    r.maximum_users,
    pm.manager_name,
    pm.manager_contact,
    l.lease_id,
    l.month_start,
    l.total_number_of_months,
    l.percentage_cleared,
    SUM(IFNULL(tr.amount,0)) AS total_paid,
    (l.total_number_of_months * r.monthly_fee) AS total_due,
    ((l.total_number_of_months * r.monthly_fee) - SUM(IFNULL(tr.amount,0))) AS balance
FROM tenant t
JOIN lease l ON t.tenant_id = l.tenant_id
JOIN room r ON l.room_id = r.room_id
JOIN property_manager pm ON r.manager_id = pm.manager_id
LEFT JOIN transactions tr ON l.lease_id = tr.lease_id
GROUP BY 
    t.tenant_id, t.tenant_name, t.tenant_number, t.tenant_contact,
    r.room_id, r.monthly_fee, r.maximum_users,
    pm.manager_name, pm.manager_contact,
    l.lease_id, l.month_start, l.total_number_of_months, l.percentage_cleared
ORDER BY t.tenant_name;
