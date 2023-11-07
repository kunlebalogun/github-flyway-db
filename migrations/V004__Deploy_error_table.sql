CREATE SCHEMA IF NOT EXISTS november;

-- Create the lingus table

CREATE TABLE IF NOT EXISTS november.lingus1 (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address TEXT
);

--lingus2
CREATE TABLE IF NOT EXISTS november.lingus2 (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address TEXT
);


-- lingus3 -- Error in syntax (missing comma)
CREATE TABLE IF NOT EXISTS  november.lingus3 (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address TEXT
);

CREATE TABLE IF NOT EXISTS november.lingus4 (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address TEXT
);

--- Drop schema

DROP schema november cascade;
