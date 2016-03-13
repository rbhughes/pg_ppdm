PG_PPDM
---------

![ppdm_logo](/ppdm_logo.png?raw=true "ppdm_logo")
![postgresql_logo](/postgresql_logo.png?raw=true "postgresql_logo")


The Professional Petroleum Data Management Association's ([PPDM]) data model is a very large (2000+ tables), robust relational data model ideal for Master Data Management strategies and for business focused application development.  It represents the cumulative input of subject matter experts, data management professionals, developers, regulators, data vendors, and application vendors. PPDM estimates the value of this cumulative effort to exceed $100 million.

Given this investment, most E&P companies tend to stick with Microsoft SQL Server or Oracle implementations, and these are the only two formats provided by PPDM.

But what if you wanted something a bit more...open? Enter [pg_ppdm], which translates data models for PPDM's two major releases for (arguably) the worlds best open source database, [PostgreSQL].

> Collaboration, forks, contributions, complaints: all are welcome!

---
### Quick Start 
*(tested on Windows 10, PPDM 3.9 and PostgreSQL 9.5.1)*

1. Ensure that postgresql\bin stuff is in the PATH: 
`C:\dev\PostgreSQL\9.5\bin`
2. Clone this repo (assume c:\dev here):
`git clone https://github.com/rbhughes/pg_ppdm.git`
3. CD to the creation scripts folder:
`cd c:/dev/pg_ppdm/postgres_39`
4. Run these commands after logging in to psql thusly:
`psql -U postgres`

---
```sql
CREATE ROLE ppdm_user WITH PASSWORD 'ppdm_pass';

ALTER ROLE ppdm_user WITH LOGIN SUPERUSER CREATEROLE CREATEDB REPLICATION;

SET ROLE ppdm_user;

CREATE DATABASE ppdm39 WITH OWNER ppdm_user;

connect ppdm39 ppdm_user;   (...enter password, 'ppdm_pass')

CREATE SCHEMA IF NOT EXISTS ppdm AUTHORIZATION ppdm_user;

SET search_path to ppdm;

\i PPDM39.sql

\q

```

If all goes well, you should have a *ppdm39* database with gobs of tables in the *ppdm* schema owned by the admin *ppdm_user* with a password of *ppdm_pass* like this:

[ppdm]:http://ppdm.org/
[pg_ppdm]:https://github.com/rbhughes/pg_ppdm
[PostgreSQL]:http://www.postgresql.org/

![pgadmin3 screen shot](/pgadmin3.png?raw=true "pgadmin_view")


