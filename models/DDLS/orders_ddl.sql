-- 1. Create the Schema in BigQuery
CREATE OR REPLACE TABLE `randdformt.dbt_staging.orders` (
  order_id STRING OPTIONS(description="Unique identifier for each order"),
  customer_id STRING OPTIONS(description="Identifier of the purchasing customer"),
  order_date DATE OPTIONS(description="The date the order was placed"),
  product_category STRING OPTIONS(description="The catalog department of the item purchased"),
  amount NUMERIC OPTIONS(description="Total monetary value of the order"),
  status STRING OPTIONS(description="Current fulfillment status")
);

-- 2. Populate with 20 Sample Rows
INSERT INTO `randdformt.dbt_staging.orders` (order_id, customer_id, order_date, product_category, amount, status)
VALUES
  ('ORD-1001', 'CUST-501', '2026-05-01', 'Electronics', 599.99, 'Completed'),
  ('ORD-1002', 'CUST-502', '2026-05-02', 'Apparel', 45.50, 'Completed'),
  ('ORD-1003', 'CUST-503', '2026-05-02', 'Home & Kitchen', 120.00, 'Pending'),
  ('ORD-1004', 'CUST-504', '2026-05-03', 'Books', 15.99, 'Completed'),
  ('ORD-1005', 'CUST-505', '2026-05-04', 'Beauty', 89.90, 'Shipped'),
  ('ORD-1006', 'CUST-506', '2026-05-05', 'Electronics', 1200.00, 'Completed'),
  ('ORD-1007', 'CUST-507', '2026-05-05', 'Sports', 250.00, 'Cancelled'),
  ('ORD-1008', 'CUST-508', '2026-05-06', 'Apparel', 75.25, 'Shipped'),
  ('ORD-1009', 'CUST-509', '2026-05-07', 'Toys', 34.99, 'Completed'),
  ('ORD-1010', 'CUST-510', '2026-05-08', 'Home & Kitchen', 310.00, 'Completed'),
  ('ORD-1011', 'CUST-511', '2026-05-09', 'Electronics', 450.00, 'Pending'),
  ('ORD-1012', 'CUST-512', '2026-05-10', 'Books', 27.50, 'Completed'),
  ('ORD-1013', 'CUST-513', '2026-05-11', 'Beauty', 115.00, 'Shipped'),
  ('ORD-1014', 'CUST-514', '2026-05-12', 'Sports', 85.00, 'Completed'),
  ('ORD-1015', 'CUST-515', '2026-05-13', 'Apparel', 110.00, 'Cancelled'),
  ('ORD-1016', 'CUST-516', '2026-05-14', 'Toys', 45.00, 'Completed'),
  ('ORD-1017', 'CUST-517', '2026-05-15', 'Home & Kitchen', 95.50, 'Pending'),
  ('ORD-1018', 'CUST-518', '2026-05-16', 'Electronics', 899.00, 'Completed'),
  ('ORD-1019', 'CUST-519', '2026-05-17', 'Books', 12.99, 'Completed'),
  ('ORD-1020', 'CUST-520', '2026-05-18', 'Beauty', 65.00, 'Shipped');