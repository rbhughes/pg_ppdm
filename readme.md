PG_PPDM
---------

![postgresql_logo](/postgresql_logo.png?raw=true "postgresql_logo")

##### +

![ppdm_logo](/ppdm_logo.png?raw=true "ppdm_logo")



The Professional Petroleum Data Management Association's ([PPDM]) data model is a very large (1700+ tables), robust relational data model ideal for Master Data Management strategies and for business focused application development.  It represents the cumulative input of subject matter experts, data management professionals, developers, regulators, data vendors, and application vendors. PPDM estimates the value of this cumulative effort to exceed $100 million.

Given this investment, most E&P companies tend to stick with Microsoft SQL Server or Oracle implementations, and these are the only two formats provided by PPDM.

But what if you wanted something a bit more...open? Enter [pg_ppdm], which translates data models for PPDM's two major releases for (arguably) the worlds best open source database, [PostgreSQL].

> Collaboration, forks, contributions, complaints: all are welcome!

Tested/developed on:

* Windows 10
* PPDM 3.8 and 3.9 (converted from Oracle DDL)
* PostgreSQL 9.5.1 and 9.6.2

---
### Quick Start

1. Ensure that postgresql\bin stuff is in your PATH:
`C:\dev\PostgreSQL\9.5\bin`
2. Clone this repo (assume c:\dev here):
`git clone https://github.com/rbhughes/pg_ppdm.git`
3. cd to the creation scripts folder for your preferred PPDM version:
`cd c:/dev/pg_ppdm/postgres_39`
4. Run these commands after logging in to psql thusly:
`psql -U postgres`

---
```sql
CREATE ROLE ppdm_user WITH PASSWORD 'ppdm_pass';

ALTER ROLE ppdm_user WITH LOGIN SUPERUSER CREATEROLE CREATEDB REPLICATION;

SET ROLE ppdm_user;

CREATE DATABASE ppdm39 WITH OWNER ppdm_user;

\connect ppdm39 ppdm_user;   (...enter password, 'ppdm_pass')

CREATE SCHEMA IF NOT EXISTS ppdm AUTHORIZATION ppdm_user;

SET search_path to ppdm;

\i PPDM39.sql

\q

```

> NOTE: The PPDM38 scripts include a custom script to set foreign keys to DEFERRABLE by default. Comment out `PPDM38.defer` to exclude this.

If all goes well, you should have a *ppdm39* database with gobs of tables in the *ppdm* schema owned by the admin *ppdm_user* with a password of *ppdm_pass* like this:

![pgadmin3 screen shot](/pgadmin3.png?raw=true "pgadmin3_view")

...or if you prefer PostgreSQL 9.6...

![pgadmin4 screen shot](/pgadmin4.png?raw=true "pgadmin4_view")


[ppdm]:http://ppdm.org/
[pg_ppdm]:https://github.com/rbhughes/pg_ppdm
[PostgreSQL]:http://www.postgresql.org/
