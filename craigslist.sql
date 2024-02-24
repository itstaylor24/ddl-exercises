CREATE TABLE regions (
id SERIAL PRIMARY KEY,
name VARCHAR(50)
 );

 CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30),
    pref_region INTEGER REFERENCES regions NOT NULL

 );

  CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    comment VARCHAR(500),
    user_id INTEGER REFERENCES users NOT NULL,
    region_id INTEGER REFERENCES regions NOT NULL,
    category_id INTEGER REFERENCES category NOT NULL
    
 );

  CREATE TABLE category (
    id SERIAL PRIMARY KEY,
   name VARCHAR(20)
       
 );

INSERT INTO regions (name) VALUES ('Dallas'), ('Las Vegas'), ('Nashville'), ('Lanham'), 
 ('Tucson'), ('Denver'), ('Salt Lake City'), ('Seattle');
INSERT INTO users (username, pref_region) VALUES ('WillyWonka'), ('Nashville'),
  ('PeterParker', 'Las Vegas)'), ('FrankSinatra', 'Lanham'), ('KobeBryant', 'Denver');
INSERT INTO posts (title, comment, user_id, region_id, category_id) VALUES ('Coffee', 'I need coffee', 1, 2, 2),
 ('Tea', 'I need tea', 1, 3, 2), ('Pizza', 'We hate pizza', 3, 1, 4);
 INSERT INTO category (name) VALUES ('drinks'), ('personals'), ('flowers'), ('hair'), ('dinner'),
 ('chores')


 