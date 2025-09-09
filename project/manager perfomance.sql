SELECT 
    pm.manager_name,
    SUM(tr.amount) AS total_collected
FROM property_manager pm
JOIN room r ON pm.manager_id = r.manager_id
JOIN lease l ON r.room_id = l.room_id
JOIN transactions tr ON l.lease_id = tr.lease_id
GROUP BY pm.manager_id
ORDER BY total_collected DESC;
