BEGIN;

-- ----------------------------------------------------------------------------

-- remove the admin column
ALTER TABLE usr DROP COLUMN admin;

-- ----------------------------------------------------------------------------

UPDATE property SET value = 3 WHERE key = 'Patch Level';

COMMIT;
