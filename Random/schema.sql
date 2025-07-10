CREATE TABLE person_profiles (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    email VARCHAR(100),
    salary DECIMAL(10,2),
    is_active BOOLEAN,
    rating FLOAT(2,1),
    join_time TIME,
    ip_address VARCHAR(45),
    profile_text TEXT,
    blob_data BLOB,
    char_code CHAR(1),
    country_code CHAR(2)
);
