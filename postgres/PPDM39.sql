-- WARNING --
-- Use of this data is subject to the Terms and Conditions outlined in the file PPDM_TermsAndConditions.txt
-- By opening and accessing this information, you are agreeing to these Terms and Conditions.


-- This PostgreSQL DDL is for the PPDM39 model
-- It was adapted from the Oracle DDL
-- This is an EVALUTATION version, so you might want to run it like this:
-- psql -U ppdm_user -d ppdm39 -f PPDM39.SQL -v ON_ERROR_STOP=1

-- Differences from the Oracle DDL:
-- 1. spool behavior: may experiment echos or use the postgres stderr log.
--    Everything is written to the PPDM39_output.txt file now.
-- 2. Oracle NUMBER without precision or scale defaults to DOUBLE PRECISION
--    in PostgreSQL. I set all fields matching /_OBS_NO/ to use NUMBER(8,0)
--    to match the SQL Server DDL and equate to INT in PostgreSQL

\o PPDM39_output.txt

\qecho 'Creating Tables and Columns'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START01 - PPDM39_TAB.SQL' as START_01;
\qecho '======================================================================'
-- CREATES THE TABLES
--\i PPDM39_TAB.SQL


\qecho 'Creating Primary Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START02 - PPDM39_PK.SQL' as START_02;
\qecho '======================================================================'
-- CREATES THE PRIMARY KEYS
--\i PPDM39_PK.SQL


\qecho 'Creating Check Constraints'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START03 - PPDM39_CK.SQL' as START_03;
\qecho '======================================================================'
-- CREATES THE CHECK CONSTRAINTS
--\i PPDM39_CK.SQL


\qecho 'Creating Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START04 - PPDM39_FK.SQL' as START_04;
\qecho '======================================================================'
-- CREATES THE FOREIGN KEYS
--\i PPDM39_FK.SQL


\qecho 'Creating Original Units of Measure (OUOM) Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START05 - PPDM39_OUOM.SQL' as START_05;
\qecho '======================================================================'
-- CREATES THE ORIGINAL UNITS OF MEASURE CONSTRAINTS
--\i PPDM39_OUOM.SQL


\qecho 'Creating Units of Measure (UOM) Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START06 - PPDM39_UOM.SQL' as START_06;
\qecho '======================================================================'
-- CREATES THE UNITS OF MEASURE CONSTRAINTS
\i PPDM39_UOM.SQL


\qecho 'Creating ROW_QUALITY Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START07 - PPDM39_RQUAL.SQL' as START_07;
\qecho '======================================================================'
-- CREATES THE ROW QUALITY CONSTRAINTS
\i PPDM39_RQUAL.SQL


\qecho 'Creating SOURCE Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START08 - PPDM39_RSRC.SQL' as START_08;
\qecho '======================================================================'
-- CREATES THE R_SOURCE CONSTRAINTS
\i PPDM39_RSRC.SQL


\qecho 'Creating Table Comments'
\qecho 'This script is OPTIONAL for PPDM 3.9, but is strongly recommended'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START09 - PPDM39_TCM.SQL' as START_09;
\qecho '======================================================================'
-- CREATES THE TABLE COMMENTS
\i PPDM39_TCM.SQL


\qecho 'Creating Column Comments'
\qecho 'This script is OPTIONAL for PPDM 3.9, but is strongly recommended'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START10 - PPDM39_CCM.SQL' as START_10;
\qecho '======================================================================'
-- CREATES THE COLUMN COMMENTS
\i PPDM39_CCM.SQL


\qecho 'Creating Table Synonyms'
\qecho 'This script is OPTIONAL for PPDM 3.9, but is strongly recommended'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START11 - PPDM39_SYN.SQL' as START_11;
\qecho '======================================================================'
-- CREATES THE SYNONYMS
\i PPDM39_SYN.SQL


\qecho 'Creating Unique constraints and Not Null constraints on PPDM_GUID'
\qecho 'This script is OPTIONAL for PPDM 3.9'
\qecho 'PPDM_GUID columns are used to create data coordinate references'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START12 - PPDM39_GUID.SQL' as START_12;
\qecho '======================================================================'
-- CREATES THE UNIQUE CONSTRAINT ON GUID COLUMNS AND PREVENTS NULL GUID VALUES
\i PPDM39_GUID.SQL

\o





