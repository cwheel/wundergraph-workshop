-- Your SQL goes here

CREATE TABLE comments (
       id SERIAL PRIMARY KEY,
       comment TEXT,
       published_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
       author INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
       post INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE ON UPDATE CASCADE
);