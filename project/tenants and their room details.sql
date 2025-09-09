SELECT 
    t.tenant_name,
    t.tenant_contact,
    r.room_id,
    r.monthly_fee,
    pm.manager_name
FROM lease l
JOIN tenant t ON l.tenant_id = t.tenant_id
JOIN room r ON l.room_id = r.room_id
JOIN property_manager pm ON r.manager_id = pm.manager_id;
