-- - All of the teams in the league
-- - All of the goals scored by every player for each game
-- - All of the players in the league and their corresponding teams
-- - All of the referees who have been part of each game
-- - All of the matches played between teams
-- - All of the start and end dates for season that a league has
-- - The standings/rankings of each team in the league 
-- (This doesn’t have to be its own table if
--  the data can be captured somehow).

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    team TEXT,
    location TEXT,
    ranking INTEGER UNIQUE
);

CREATE TABLE seasons (
    id SERIAL PRIMARY KEY,
    start DATE,
    end DATE
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    team_id INTEGER REFERENCES teams
    --could add DOB and height
);

CREATE TABLE goals (
    id SERIAL PRIMARY KEY,
    scorer_id INTEGER REFERENCES players,
    game_id INTEGER REFERENCES matches
);



CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    team1 INTEGER REFERENCES teams,
    team2 INTEGER REFERENCES teams,
    ref_id INTEGER REFERENCES refs,
    is_draw BOOLEAN,
    winner INTEGER REFERENCES teams
    --definitely add location, date, season, make conditional with BOOLEAN?
);

CREATE TABLE refs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30)
    
);

-- INSERT INTO teams (team, location,ranking) VALUES 
-- ('Great Whites', 'Pittsburgh', 1),
-- ('Soldiers', 'Ottawa', 2),
-- ('Knights', 'Austin', 3),
-- ('Sheep', 'Tampa', 4);

-- INSERT INTO seasons (start, end) VALUES (2000-01-01, 2000-12-31),
--  (2001-01-01, 2001-12-31), (2002-01-01, 2002-12-31);


-- INSERT INTO refs (name) VALUES 
-- ('Billy Joel'),
-- ('Kris Jenner'),
-- ('Johnny Cash'),
-- ('Eddie Murphy');

-- INSERT INTO players (name, team_id) VALUES 
-- ('Jeff Bezos', 1),
-- ('Barack Obama', 2),
-- ('Beyonce Knowles', 3),
-- ('Little Richard', 4);

-- INSERT INTO goals (scorer_id, game_id) VALUES 
-- ('Jeff Bezos', 1),
-- ('Barack Obama', 2),
-- ('Beyonce Knowles', 3),
-- ('Little Richard', 4);

-- INSERT INTO matches (team1, team2, ref_id) VALUES 
-- (2, 1,1),
-- (4,1,1),
-- (3,2,4),
-- (1,3,2);
