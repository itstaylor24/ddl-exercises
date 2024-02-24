CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    first_name TEXT   NOT NULL,
    last_name TEXT   NOT NULL,
    -- good to add specialty
    
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY  NOT NULL,
    first_name TEXT   NOT NULL,
    last_name TEXT   NOT NULL
    --good to add extra info like DOB and insurance
    
);

CREATE TABLE diseases (
    id SERIAL PRIMARY KEY,
    name varchar(200)   NOT NULL UNIQUE
    -- good to add description
    
    
);

CREATE TABLE diagnoses (
    vistid SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients  NOT NULL,
    doc_id INTEGER  REFERENCES doctors NOT NULL,
    diagnosis_id INTEGER REFERENCES diseases  NOT NULL
    --put visit and diagnoses info into one table?
     
);

INSERT INTO doctors (first_name, last_name)
 VALUES ('Timmy', 'Turner'), ('Jimmy', 'Neutron'), 
 ('Tommy', 'Pickles'), ('Chucky', 'Finster');
INSERT INTO patients  (first_name, last_name) VALUES ('Johnny', 'Bravo'), ('Suzie', 'Charmichael'), ('Lizzie', 'Maguire');
INSERT INTO diseases (name) VALUES ('tuberculosis') , ('melanoma'), ('leukemia'),('strep throat');
INSERT INTO diagnoses (patient_id, doc_id, diagnosis_id) VALUES (1, 2,2), (1,3,1), (3,2,1);


