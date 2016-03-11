-- WARNING --
-- Use of this data is subject to the Terms and Conditions outlined in the file PPDM_TermsAndConditions.txt
-- By opening and accessing this information, you are agreeing to these Terms and Conditions.

-- This PostgreSQL DDL is for the PPDM38 model
-- It was adapted from the Oracle DDL

-- Differences from the Oracle DDL:
-- 1. Spool behavior: may experiment echos or use the postgres stderr log.
--    Everything is written to the PPDM38_output.txt file now.
-- 2. Oracle NUMBER without precision or scale defaults to DOUBLE PRECISION
--    in PostgreSQL. I set all fields matching /_OBS_NO/ to use NUMBER(8,0)
--    to match the MS SQL Server DDL and equate to INT in PostgreSQL
-- 3. PostgreSQL does not appear to have (or need) synonyms because of the
--    way it handles schemas and roles. Skip it.

\o PPDM38_output.txt

\echo  'Creating Tables and Columns...'
\qecho 'Creating Tables and Columns'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START01 - PPDM38.tab' as START_01;
\qecho '======================================================================'
\i PPDM38.tab


\echo  'Creating Primary Keys...'
\qecho 'Creating Primary Keys'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START02 - PPDM38.pk' as START_02;
\qecho '======================================================================'
\i PPDM38.pk


\echo  'Creating Unique Keys...'
\qecho 'Creating Unique Keys'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START03 - PPDM38.uk' as START_03;
\qecho '======================================================================'
\i PPDM38.uk


\echo  'Creating Foreign Keys...'
\qecho 'Creating Foreign Keys'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START04 - PPDM38.fk' as START_04;
\qecho '======================================================================'
\i PPDM38.fk


\echo  'Creating Check Constraints...'
\qecho 'Creating Check Constraints'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START05 - PPDM38.ck' as START_05;
\qecho '======================================================================'
\i PPDM38.ck


\echo  'Creating Column Comments...'
\qecho 'Creating Column Comments'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START06 - PPDM38.ccm' as START_06;
\qecho '======================================================================'
\i PPDM38.ccm


--\echo  'Creating Synonyms...'
--\qecho 'Creating Synonyms'
--\qecho 'This script is MANDATORY for PPDM 3.8'
--\qecho '======================================================================'
--select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START07 - PPDM38.syn' as START_07;
--\qecho '======================================================================'
--\i PPDM38.syn
--@@PPDM38.syn		--CREATES THE SYNONYMS


\echo  'Creating Table Comments...'
\qecho 'Creating Table Comments'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START08 - PPDM38.tcm' as START_08;
\qecho '======================================================================'
\i PPDM38.tcm


\echo  'Creating OUOM Constraints...'
\qecho 'Creating OUOM Constraints'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START09 - PPDM38.ouom' as START_09;
\qecho '======================================================================'
\i PPDM38.ouom


\echo  'Creating UOM Constraints...'
\qecho 'Creating UOM Constraints'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START10 - PPDM38.uom' as START_10;
\qecho '======================================================================'
\i PPDM38.uom


\echo  'Creating Row Quality Constraints...'
\qecho 'Creating Row Quality Constraints'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START11 - PPDM38.rqual' as START_11;
\qecho '======================================================================'
\i PPDM38.rqual


\echo  'Creating R_Source Constraints...'
\qecho 'Creating R_Source Constraints'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START12 - PPDM38.rsrc' as START_12;
\qecho '======================================================================'
\i PPDM38.rsrc


\echo  'Creating GUID not NULL Constraints...'
\qecho 'Creating GUID not NULL Constraints'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START13 - PPDM38.guidnn' as START_13;
\qecho '======================================================================'
\i PPDM38.guidnn


\echo  'Creating Unique GUID Constraints...'
\qecho 'Creating Unique GUID Constraints'
\qecho 'This script is MANDATORY for PPDM 3.8'
\qecho '======================================================================'
select 'Date: ' || to_char(current_timestamp, 'YYYYMMDD HH24:MI:SS') || ' - START14 - PPDM38.guid' as START_14;
\qecho '======================================================================'
\i PPDM38.guid

\o
