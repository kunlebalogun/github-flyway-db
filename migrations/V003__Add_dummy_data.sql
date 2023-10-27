-- Insert 500 rows of sample data into the customer table
INSERT INTO customer.customer (first_name, last_name, email, phone_number, address)
SELECT
    'First' || i,
    'Last' || i,
    'email' || i || '@example.com',
    '555-1234-' || LPAD(i::TEXT, 4, '0'),
    'Address' || i
FROM generate_series(1, 5000) AS i;


-- Create an index on the last_name column
CREATE INDEX IF NOT EXISTS idx_last_name ON customer.customer (last_name);

-- Create an index on the email column
CREATE INDEX IF NOT EXISTS idx_email ON customer.customer (email);

-- Create a view named 'report'
CREATE OR REPLACE VIEW report AS
SELECT id, last_name, email
FROM customer.customer;
