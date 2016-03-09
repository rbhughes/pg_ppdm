PG_PPDM39
---------

These files were converted from the Professional Petroleum Data Management ([PPDM]) Association's Oracle DDL. It seems to work on PostgreSQL 9.3.5, but there has not (yet) been any extensive testing.

Here is some scary legal stuff from PPDM that you should probably read:


> WARNING
Use of this data is subject to the Terms and Conditions outlined in the file PPDM_TermsAndConditions.txt
By opening and accessing this information, you are agreeing to these Terms and Conditions.


#####This is a work in progress! Just started testing again on 9.5.1.

TODO: gotta set the schema! don't do that stuff below just yet.

#### Quick Start:

1. Ensure that postgresql\bin stuff is in the PATH: `C:\dev\PostgreSQL\9.5\bin`
2. Clone this repo (assume c:\dev here): `git clone https://github.com/rbhughes/pg_ppdm39.git`
3. CD to the creation scripts folder: `cd c:/dev/pg_ppdm39/postgres`
4. Run these commands after loggin in to psql thusly: `psql -U postgres`

```sql
CREATE ROLE ppdm_user WITH PASSWORD 'ppdm_pass';
ALTER ROLE ppdm_user WITH LOGIN SUPERUSER CREATEROLE CREATEDB REPLICATION;
SET ROLE ppdm_user;
CREATE DATABASE ppdm39 WITH OWNER ppdm_user;
\connect ppdm39 ppdm_user;   <...and enter password, 'ppdm_pass'>
CREATE SCHEMA IF NOT EXISTS ppdm AUTHORIZATION ppdm_user;
SET search_path to ppdm;
\i PPDM39.sql
\q

```

You should have a *ppdm39* database with gobs of tables in the *ppdm* schema
owned by the admin *ppdm_user* with a password of *ppdm_pass* like this:


![Alt text](/pgadmin3.png?raw=true "pgadmin_view")

[ppdm]:http://ppdm.org/ !U!U
