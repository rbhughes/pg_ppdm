-- WARNING --
-- Use of this data is subject to the Terms and Conditions outlined in the file PPDM_TermsAndConditions.txt
-- By opening and accessing this information, you are agreeing to these Terms and Conditions.

-- This PostgreSQL DDL is for the PPDM39 model
-- It was adapted from the Oracle DDL

-- Differences from the Oracle DDL:
-- 1. Spool behavior: may experiment echos or use the postgres stderr log.
--    Everything is written to the PPDM39_output.txt file now.
-- 2. Oracle NUMBER without precision or scale defaults to DOUBLE PRECISION
--    in PostgreSQL. I set all fields matching /_OBS_NO/ to use NUMBER(8,0)
--    to match the MS SQL Server DDL and equate to INT in PostgreSQL
-- 3. PostgreSQL does not appear to have (or need) synonyms because of the
--    way it handles schemas and roles. Skip it.

\o PPDM39_output.txt

\echo  'Creating Tables and Columns...'
\qecho 'Creating Tables and Columns'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START01 - PPDM39_TAB.SQL' as START_01;
\qecho '======================================================================'
\i PPDM39_TAB.SQL


\echo  'Creating Primary Keys...'
\qecho 'Creating Primary Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START02 - PPDM39_PK.SQL' as START_02;
\qecho '======================================================================'
\i PPDM39_PK.SQL


\echo  'Creating Check Constraints...'
\qecho 'Creating Check Constraints'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START03 - PPDM39_CK.SQL' as START_03;
\qecho '======================================================================'
\i PPDM39_CK.SQL


\echo  'Creating Foreign Keys...'
\qecho 'Creating Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START04 - PPDM39_FK.SQL' as START_04;
\qecho '======================================================================'
\i PPDM39_FK.SQL


\echo  'Creating Original Units of Measure (OUOM) Foreign Keys...'
\qecho 'Creating Original Units of Measure (OUOM) Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START05 - PPDM39_OUOM.SQL' as START_05;
\qecho '======================================================================'
\i PPDM39_OUOM.SQL


\echo  'Creating Units of Measure (UOM) Foreign Keys...'
\qecho 'Creating Units of Measure (UOM) Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START06 - PPDM39_UOM.SQL' as START_06;
\qecho '======================================================================'
\i PPDM39_UOM.SQL


\echo  'Creating ROW_QUALITY Foreign Keys...'
\qecho 'Creating ROW_QUALITY Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START07 - PPDM39_RQUAL.SQL' as START_07;
\qecho '======================================================================'
\i PPDM39_RQUAL.SQL


\echo  'Creating SOURCE Foreign Keys...'
\qecho 'Creating SOURCE Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.9'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START08 - PPDM39_RSRC.SQL' as START_08;
\qecho '======================================================================'
\i PPDM39_RSRC.SQL


\echo  'Creating Table Comments...'
\qecho 'Creating Table Comments'
\qecho 'This script is OPTIONAL for PPDM 3.9, but is strongly recommended'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START09 - PPDM39_TCM.SQL' as START_09;
\qecho '======================================================================'
\i PPDM39_TCM.SQL


\echo  'Creating Column Comments...'
\qecho 'Creating Column Comments'
\qecho 'This script is OPTIONAL for PPDM 3.9, but is strongly recommended'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START10 - PPDM39_CCM.SQL' as START_10;
\qecho '======================================================================'
\i PPDM39_CCM.SQL


--\echo  'Creating Table Synonyms...'
--\qecho 'Creating Table Synonyms'
--\qecho 'This script is OPTIONAL for PPDM 3.9, but is strongly recommended'
--\qecho '======================================================================'
--select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START11 - PPDM39_SYN.SQL' as START_11;
--\qecho '======================================================================'
--\i PPDM39_SYN.SQL


\echo  'Creating Unique constraints and Not Null constraints on PPDM_GUID...'
\qecho 'Creating Unique constraints and Not Null constraints on PPDM_GUID'
\qecho 'This script is OPTIONAL for PPDM 3.9'
\qecho 'PPDM_GUID columns are used to create data coordinate references'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START12 - PPDM39_GUID.SQL' as START_12;
\qecho '======================================================================'
\i PPDM39_GUID.SQL

\o
