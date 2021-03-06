# PgPatcher #

Copyright (c) 2005-2013 Andrew Chilton <andychilton@gmail.com>

## pgpatcher ##

PgPatcher is a program which helps you organise and apply SQL patches for your
Postgres database schema. You could run this program as part of your upgrade
scripts which makes sure that each patch is applied in the right order.

As an example, consider the following:

```
 $ pgpatcher -U dbuser -d dbname -s /usr/share/kiwiwriters/db/patch -l 5
```

This command would make sure the database is patched up to level 5. If any
particular patches don't apply, further ones won't be applied at all. The patch
level is stored in a table called 'property' which you should create in the
first patch.

## pgcreatepatch ##

This program creates both a skeleton forward and reverse patch. In the case of
any normal patch the skeleton file doesn't contain much but in the case of
patch level 1 (two files, 0->1 and the reverse patch 1->0) the skeleton file
contains code to create the property table, update it and drop it in the
reverse patch.

```
 $ pgcreatepatch -l 1
```

Creates two files:

* patch_0_1.sql
* patch_1_0.sql

## Common Options ##

Both `pgpatcher` and `pgcreatepatch` both take the following options:

* -d = dbname
* -U = user
* -h = host
* -s = script (the prefix for the script, default: 'patch')
* -l = level
* -v = verbose

But please see --help on either program for more information.

## License ##

Artistic v2 - http://opensource.org/licenses/Artistic-2.0

(Ends)
