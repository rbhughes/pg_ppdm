PG_PPDM39
---------

These files were converted from the Professional Petroleum Data Management ([PPDM]) Association's Oracle DDL. It seems to work on PostgreSQL 9.3.5, but there has not (yet) been any extensive testing.

Here is some scary legal stuff from PPDM that you should probably read:


> WARNING
Use of this data is subject to the Terms and Conditions outlined in the file PPDM_TermsAndConditions.txt
By opening and accessing this information, you are agreeing to these Terms and Conditions.


#####This is a work in progress! Just started testing again on 9.5.1.

#### Quick Start:

1. Ensure that postgresql\bin stuff is in the PATH: `C:\dev\PostgreSQL\9.5\bin`
2. Clone this repo (assume c:\dev here): `git clone https://github.com/rbhughes/pg_ppdm39.git`
3. CD to the creation scripts folder: `cd c:/dev/pg_ppdm39/postgres`
4. Run these commands after loggin in to psql thusly: `psql -U postgres`

```sql
CREATE ROLE ppdm_user WITH PASSWORD 'ppdm_pass';
ALTER ROLE ppdm_user WITH LOGIN SUPERUSER CREATEROLE CREATEDB REPLICATION;
SET ROLE ppdm_user;
CREATE DATABASE ppdm39;
\i PPDM39.sql
\q
```



[ppdm]:http://ppdm.org/
