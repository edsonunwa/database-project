-- CREATE DATABASE rental_management;
-- USE rental_management;

-- Property Manager Table
CREATE TABLE property_manager (
    manager_id INT AUTO_INCREMENT PRIMARY KEY,
    manager_name VARCHAR(100) NOT NULL,
    manager_contact VARCHAR(20) NOT NULL
);

-- Room Table
CREATE TABLE room (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    manager_id INT,
    current_user_number INT,
    monthly_fee DECIMAL(10,2),
    maximum_users INT,
    FOREIGN KEY (manager_id) REFERENCES property_manager(manager_id)
);

-- Tenant Table
CREATE TABLE tenant (
    tenant_id INT AUTO_INCREMENT PRIMARY KEY,
    tenant_name VARCHAR(100) NOT NULL,
    tenant_number VARCHAR(50) NOT NULL UNIQUE,
    tenant_contact VARCHAR(20) NOT NULL
);

-- Lease Table
CREATE TABLE lease (
    lease_id INT AUTO_INCREMENT PRIMARY KEY,
    tenant_id INT,
    room_id INT,
    month_start DATE,
    total_number_of_months INT,
    percentage_cleared DECIMAL(5,2),
    FOREIGN KEY (tenant_id) REFERENCES tenant(tenant_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);

-- Transactions Table
CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    lease_id INT,
    transaction_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (lease_id) REFERENCES lease(lease_id)
);
