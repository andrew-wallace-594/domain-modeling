-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS sales_people;
DROP TABLE IF EXISTS companies; 
DROP TABLE IF EXISTS interactions; 

-- CREATE TABLES
CREATE TABLE contacts (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
first_name TEXT,
last_name TEXT, 
email TEXT, 
address TEXT, 
phone_number TEXT, 
company_id INTEGER, 
role TEXT
);

CREATE TABLE sales_people ( 
id INTEGER PRIMARY KEY AUTOINCREMENT, 
first_name TEXT, 
last_name TEXT, 
email TEXT, 
address TEXT
);

CREATE TABLE companies (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
name TEXT
);

-- interactions is a "relationship" between sales people and contacts. This means this is a "join table"

CREATE TABLE interactions (
id INTEGER PRIMARY KEY AUTOINCREMENT,
contact_id INTEGER,
sales_team_id INTEGER,
time text, 
date TEXT, 
type TEXT,
notes TEXT
);