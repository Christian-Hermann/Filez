-- TODO
DROP TABLE IF EXISTS folders CASCADE;
DROP TABLE IF EXISTS files;

CREATE TABLE folders (
    id SERIAL PRIMARY KEY, 
    name TEXT UNIQUE NOT NULL);

CREATE TABLE files (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    size integer NOT NULL,
    folder_id INT NOT NULL REFERENCES folders(id) ON DELETE CASCADE,
    UNIQUE (name, folder_id)
 


)