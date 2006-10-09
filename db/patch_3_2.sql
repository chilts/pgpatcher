BEGIN;

-- ----------------------------------------------------------------------------

-- remove the usr table
DROP TABLE usr;

-- ----------------------------------------------------------------------------

UPDATE property SET value = 2 WHERE key = 'Patch Level';

COMMIT;
