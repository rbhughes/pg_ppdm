set linesize 1000
column constraint_type format a5
column constraint_name format a20
column column_name format a25
column table_name format a25
SELECT C.CONSTRAINT_TYPE, CC.CONSTRAINT_NAME, CC.COLUMN_NAME, C.TABLE_NAME 
FROM USER_CONSTRAINTS C, USER_CONS_COLUMNS CC 
WHERE C.CONSTRAINT_TYPE IN ('P', 'R', 'C') 
AND C.CONSTRAINT_NAME = CC.CONSTRAINT_NAME
AND C.TABLE_NAME = 'WELL';
