BEGIN;

-- ----------------------------------------------------------------------------

-- create a user table
CREATE TABLE usr (
    name            TEXT NOT NULL PRIMARY KEY,
    firstname       TEXT NOT NULL,
    surname         TEXT NOT NULL,
    email           TEXT NOT NULL,
    salt            CHAR(4) NOT NULL,
    password        CHAR(32) NOT NULL,

    LIKE base       INCLUDING DEFAULTS
);

-- make sure we know when things are inserted or updated
CREATE TRIGGER usr_updated BEFORE UPDATE ON usr
    FOR EACH ROW EXECUTE PROCEDURE updated();

-- create a usr already
INSERT INTO usr(name, firstname, surname, email, salt, password)
    VALUES('john', 'John', 'Johnson', 'john@example.com', 'salt', md5('salt' || 'edpassword'));

-- ----------------------------------------------------------------------------

UPDATE property SET value = 3 WHERE key = 'Patch Level';

COMMIT;
