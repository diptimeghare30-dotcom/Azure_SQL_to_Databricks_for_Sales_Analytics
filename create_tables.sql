-- Customer table
CREATE TABLE customer (
    customerID INT PRIMARY KEY,
    Title NVARCHAR(50),
    FirstName NVARCHAR(100),
    MiddleName NVARCHAR(100),
    LastName NVARCHAR(100),
    CompanyName NVARCHAR(100),
    EmailAddress NVARCHAR(255),
    Phone NVARCHAR(50),
    ModifiedDate DATETIME
);

-- Product table
CREATE TABLE product (
    ProductID INT PRIMARY KEY,
    Name NVARCHAR(100),
    StandardCost DECIMAL(18, 2),
    ModifiedDate DATETIME
);

-- Sales table
CREATE TABLE sales (
    salesOrderID INT PRIMARY KEY,
    orderDate DATETIME ,
    customerID INT,
    orderValue DECIMAL(18, 2),
    ModifiedDate DATETIME
);

-- Junction table for sales items
CREATE TABLE sales_items (
    salesItemID INT PRIMARY KEY,
    salesOrderID INT ,
    ProductID INT,
    Quantity INT,
    LineTotal DECIMAL(18, 2)
);

INSERT INTO customer VALUES
(1, 'Mr.', 'John', NULL, 'Doe', 'Contoso Ltd', 'john.doe@contoso.com', '+1-555-1234', '2025-11-01'),
(2, 'Ms.', 'Jane', 'A.', 'Smith', 'Fabrikam Inc', 'jane.smith@fabrikam.com', '+1-555-5678', '2025-11-02'),
(3, 'Dr.', 'Raj', NULL, 'Patel', 'HealthCare Co', 'raj.patel@healthcare.org', '+91-9876543210', '2025-11-03'),
(4, NULL, 'Mike', NULL, NULL, 'Unknown', 'mike@@example.com', '12345', NULL), -- bad
(5, 'Mr.', NULL, NULL, 'Lee', NULL, NULL, NULL, '2025-11-04'), -- bad
(6, 'Mrs.', 'Anna', NULL, 'Brown', 'TechCorp', 'anna.brown@techcorp.com', '+44-20-123456', '2025-11-05'),
(7, 'Mr.', 'Carlos', 'M.', 'Gomez', 'RetailCo', 'carlos.gomez@retailco.com', '+34-600-111222', '2025-11-06'),
(8, 'Ms.', 'Fatima', NULL, 'Khan', 'EduWorld', 'fatima.khan@eduworld.org', '+971-50-987654', '2025-11-07'),
(9, 'Dr.', 'Li', NULL, 'Wang', 'BioLabs', 'li.wang@biolabs.cn', '+86-10-555555', '2025-11-08'),
(10, 'Mr.', 'Peter', NULL, 'Brien', 'FinancePlus', 'peter.obrien@financeplus.com', '+353-1-222333', '2025-11-09');

INSERT INTO product VALUES
(501, 'Laptop Pro 15', 1200.00, '2025-11-05'),
(502, 'Smartphone X', 800.00, '2025-11-06'),
(503, 'Wireless Headphones', 150.00, '2025-11-07'),
(504, NULL, 500.00, NULL), 
(505, 'Tablet Z', -300.00, '2025-11-08'), 
(506, 'Laptop Pro 15', 1200.00, '2025-11-09'), 
(507, 'Gaming Console Y', 400.00, '2025-11-10'),
(508, 'Smartwatch S', 250.00, '2025-11-11'),
(509, 'Monitor UltraWide', 350.00, '2025-11-12'),
(510, 'Keyboard Mechanical', 90.00, '2025-11-13');

INSERT INTO sales VALUES
(1001, '2025-11-10', 1, 2500.00, '2025-11-10'),
(1002, '2025-11-11', 2, 1500.50, '2025-11-11'),
(1003, '2025-11-12', 3, 3200.75, '2025-11-12'),
(1004, NULL, 1, 500.00, '2025-11-13'),
(1005, '2025-11-14', NULL, -200.00, NULL), 
(1006, '2025-11-15', 99, 1000.00, '2025-11-15'), 
(1007, '2025-11-16', 4, 750.25, '2025-11-16'),
(1008, '2025-11-17', 5, 1800.00, '2025-11-17'),
(1009, '2025-11-18', 6, 2200.00, '2025-11-18'),
(1010, '2025-11-19', 7, 3000.00, '2025-11-19');

INSERT INTO sales_items VALUES
(1, 1001, 501, 2, 2400.00),
(2, 1001, 503, 1, 150.00),
(3, 1002, 502, 1, 800.00),
(4, 1002, 509, 2, 700.00),
(5, 1003, 507, 1, 400.00),
(6, 1003, 508, 2, 500.00),
(7, 1004, 510, 1, 90.00), 
(8, 1005, 501, 1, -1200.00), 
(9, 1006, 999, 1, 1000.00),
(10, 1007, 502, 2, 1600.00);

