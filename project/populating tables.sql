-- Insert Property Managers
INSERT INTO property_manager (manager_name, manager_contact) VALUES
('Kamoga Brian', '0772456789'),
('Nansubuga Sarah', '0781345678'),
('Okello Patrick', '0758765432');

-- Insert Rooms
INSERT INTO room (manager_id, current_user_number, monthly_fee, maximum_users) VALUES
(1, 2, 250000.00, 3),
(1, 1, 300000.00, 2),
(2, 3, 200000.00, 4),
(2, 0, 150000.00, 2),
(3, 1, 180000.00, 2);

-- Insert Tenants
INSERT INTO tenant (tenant_name, tenant_number, tenant_contact) VALUES
('Kamwine Jonan', '24/U/05257/EVE', '0705257123'),
('Okedi Ismail Musa', '24/U/10601/EVE', '0706123456'),
('Musinguzi Denis', '24/U/07425/PS', '0789876543'),
('Talemwa Edson', '24/U/11423/EVE', '0777456123'),
('Namakula Grace', '24/U/22345/EVE', '0758123456'),
('Ssebagala Robert', '24/U/33456/EVE', '0709345678'),
('Ainomugisha Ruth', '24/U/44567/PS', '0771234987'),
('Ocen Michael', '24/U/55678/MO', '0786345123'),
('Namatovu Joan', '24/U/66789/EV', '0708456123'),
('Mugisha Alex', '24/U/77890/PS', '0759456781');

-- Insert Leases
INSERT INTO lease (tenant_id, room_id, month_start, total_number_of_months, percentage_cleared) VALUES
(1, 1, '2025-01-01', 12, 50.00),
(2, 2, '2025-02-01', 6, 100.00),
(3, 3, '2025-03-01', 9, 30.00),
(4, 1, '2025-01-15', 3, 70.00),
(5, 4, '2025-02-10', 5, 40.00);

-- Insert Transactions
INSERT INTO transactions (lease_id, transaction_date, amount) VALUES
(1, '2025-01-05', 125000.00),
(1, '2025-02-05', 125000.00),
(2, '2025-02-05', 300000.00),
(3, '2025-03-05', 60000.00),
(4, '2025-01-20', 100000.00),
(5, '2025-02-15', 60000.00);
