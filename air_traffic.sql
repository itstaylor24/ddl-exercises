DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  seat TEXT NOT NULL,
  passenger_id INT REFERENCES passenger NOT NULL,
  flight_id INT REFERENCES flight NOT NULL,
  airline_id INT REFERENCES airline NOT NULL,
  airport_id INT REFERENCES airport NOT NULL,
  
);


CREATE TABLE passenger
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
);

CREATE TABLE flight
(
  id SERIAL PRIMARY KEY,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,

);

CREATE TABLE airline
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,

);

CREATE TABLE airport
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,

);






