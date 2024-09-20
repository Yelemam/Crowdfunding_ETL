CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description TEXT,
    goal DECIMAL(10, 2) NOT NULL,
    pledged DECIMAL(10, 2),
    outcome VARCHAR(50) NOT NULL,
    backers_count INT,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE,
    category VARCHAR(50) NOT NULL, 
    subcategory VARCHAR(50) NOT NULL, 
    category_id VARCHAR(10) NOT NULL, 
    subcategory_id VARCHAR(10) NOT NULL, 
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

ALTER TABLE campaign
DROP COLUMN category,
DROP COLUMN subcategory;
 

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory_name VARCHAR(50) NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);


SELECT * FROM contacts;
SELECT * FROM campaign;
SELECT * FROM subcategory;
SELECT * FROM category;
