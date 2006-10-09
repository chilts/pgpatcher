BEGIN;

-- ----------------------------------------------------------------------------

-- add an 'admin' field to the usr table
ALTER TABLE usr ADD COLUMN admin BOOLEAN;

-- make everyone a non-admin
UPDATE usr SET admin = False;

-- now we can make it non-null
ALTER TABLE usr ALTER COLUMN admin SET NOT NULL;

-- finally, make the admin column default to False
ALTER TABLE usr ALTER COLUMN admin SET DEFAULT False;

-- we actually know that we should give 'john' admin priviledges
UPDATE usr SET admin = True WHERE name = 'john';

-- ----------------------------------------------------------------------------

UPDATE property SET value = 4 WHERE key = 'Patch Level';

COMMIT;
