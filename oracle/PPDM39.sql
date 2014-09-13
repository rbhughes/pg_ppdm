-- WARNING --
-- Use of this data is subject to the Terms and Conditions outlined in the file PPDM_TermsAndConditions.txt
-- By opening and accessing this information, you are agreeing to these Terms and Conditions.


--  This Oracle DDL is for the PPDM39 model
--  This is the PRODUCTION version

spool PPDM39.lst

PROMPT Creating Tables and Columns
PROMPT This script is MANDATORY for PPDM 3.9
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_01 - PPDM39_TAB.SQL' as START_01 from dual;
PROMPT ======================================================================
-- CREATES THE TABLES
@@PPDM39_TAB.SQL

PROMPT Creating Primary Keys
PROMPT This script is MANDATORY for PPDM 3.9
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_02 - PPDM39_PK.SQL' as START_02 from dual;
PROMPT ======================================================================
-- CREATES THE PRIMARY KEYS
@@PPDM39_PK.SQL

PROMPT Creating Check Constraints
PROMPT This script is MANDATORY for PPDM 3.9

PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_03 - PPDM39_CK.SQL' as START_03 from dual;
PROMPT ======================================================================
-- CREATES THE CHECK CONSTRAINTS
@@PPDM39_CK.SQL	

PROMPT Creating Foreign Keys
PROMPT This script is MANDATORY for PPDM 3.9
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_04 - PPDM39_FK.SQL' as START_04 from dual;
PROMPT ======================================================================
-- CREATES THE FOREIGN KEYS
@@PPDM39_FK.SQL		

PROMPT Creating Original Units of Measure (OUOM) Foreign Keys
PROMPT This script is MANDATORY for PPDM 3.9
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_05 - PPDM39_OUOM.SQL' as START_05 from dual;
PROMPT ======================================================================
-- CREATES THE ORIGINAL UNITS OF MEASURE CONSTRAINTS
@@PPDM39_OUOM.SQL

PROMPT Creating Units of Measure (UOM) Foreign Keys
PROMPT This script is MANDATORY for PPDM 3.9
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_06 - PPDM39_UOM.SQL' as START_06 from dual;
PROMPT ======================================================================
-- CREATES THE UNITS OF MEASURE CONSTRAINTS
@@PPDM39_UOM.SQL

PROMPT Creating ROW_QUALITY Foreign Keys
PROMPT This script is MANDATORY for PPDM 3.9
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_07 - PPDM39_RQUAL.SQL' as START_07 from dual;
PROMPT ======================================================================
-- CREATES THE ROW QUALITY CONSTRAINTS
@@PPDM39_RQUAL.SQL

PROMPT Creating SOURCE Foreign Keys
PROMPT This script is MANDATORY for PPDM 3.9
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_08 - PPDM39_RSRC.SQL' as START_08 from dual;
PROMPT ======================================================================
-- CREATES THE R_SOURCE CONSTRAINTS
@@PPDM39_RSRC.SQL

PROMPT Creating Table Comments
PROMPT This script is OPTIONAL for PPDM 3.9, but is strongly recommended
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_09 - PPDM39_TCM.SQL' as START_09 from dual;
PROMPT ======================================================================
-- CREATES THE TABLE COMMENTS
@@PPDM39_TCM.SQL

PROMPT Creating Column Comments
PROMPT This script is OPTIONAL for PPDM 3.9, but is strongly recommended
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_10 - PPDM39_CCM.SQL' as START_10 from dual;
PROMPT ======================================================================
-- CREATES THE COLUMN COMMENTS
@@PPDM39_CCM.SQL

PROMPT Creating Table Synonyms
PROMPT This script is OPTIONAL for PPDM 3.9, but is strongly recommended
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_11 - PPDM39_SYN.SQL' as START_11 from dual;
PROMPT ======================================================================
-- CREATES THE SYNONYMS
@@PPDM39_SYN.SQL

PROMPT Creating Unique constraints and Not Null constraints on PPDM_GUID
PROMPT This script is OPTIONAL for PPDM 3.9
PROMPT PPDM_GUID columns are used to create data coordinate references 
PROMPT ======================================================================
select 'Date: ' || to_char(sysdate, 'YYYYMMDD HH24:MI:SS') || ' - START_12 - PPDM39_GUID.SQL' as START_12 from dual;
PROMPT ======================================================================
-- CREATES UNIQUE CONSTRAINT ON GUID COLUMNS AND PREVENTS NULL GUID VALUES
@@PPDM39_GUID.SQL

SPOOL OFF
