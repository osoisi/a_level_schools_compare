--DIMCharterBody
CREATE VIEW dimCharterBody AS 
WITH dRelChar as (
  SELECT DISTINCT RELCHAR AS Body
  FROM [a_levels_study_db].[dbo].[s_england_school_information]
  WHERE ISPOST16 = 1 and OFSTEDRATING IS NOT NULL
  
),
dRelChar2 as (
  SELECT CASE 
    WHEN Body LIKE '%church%' THEN 'Christian'
    WHEN Body LIKE '%jew%' THEN 'Jewish'
    WHEN Body LIKE '%christian%' THEN 'Christian'
    WHEN Body LIKE '%Catholic%' THEN 'Christian'
    WHEN Body LIKE '%Does%' THEN 'None'
    WHEN Body LIKE '%Ortho%' THEN 'Christian'
    WHEN Body LIKE '%deno%' THEN 'Christian'
    WHEN Body IN ('Islam','Muslim') THEN 'Islam'
    WHEN Body IS NULL THEN 'None'
  ELSE body end AS CharterBody
  FROM dRelChar
),
dRelChar3 as(
  SELECT DISTINCT CharterBody 
  FROM dRelChar2

), 
dRelChar4 as (

SELECT ROW_NUMBER() OVER(ORDER BY CharterBody) AS BodyID, CharterBody FROM dRelChar3
)

SELECT 
      [URN]
--      ,[LANAME]
--      ,[LA]
--      ,[ESTAB]
--      ,[LAESTAB]
--      ,[SCHNAME]
--      ,[STREET]
--      ,[LOCALITY]
--      ,[ADDRESS3]
--      ,[TOWN]
--      ,[POSTCODE]
--      ,[SCHSTATUS]
--      ,[CLOSEDATE]
--      ,[MINORGROUP]
--      ,[SCHOOLTYPE]
--      ,[ISPRIMARY]
--      ,[ISSECONDARY]
--      ,[ISPOST16]
--      ,[AGELOW]
--      ,[AGEHIGH]
--      ,[GENDER]
      ,[RELCHAR],
      CASE WHEN RELCHAR LIKE '%church%' THEN 'Christian'
      WHEN RELCHAR LIKE '%jew%' THEN 'Jewish'
      WHEN RELCHAR LIKE '%christian%' THEN 'Christian'
      WHEN RELCHAR LIKE '%Catholic%' THEN 'Christian'
      WHEN RELCHAR LIKE '%Does%' THEN 'None'
      WHEN RELCHAR LIKE '%Ortho%' THEN 'Christian'
      WHEN RELCHAR LIKE '%deno%' THEN 'Christian'
      WHEN RELCHAR IN ('Islam','Muslim') THEN 'Islam'
      WHEN RELCHAR IS NULL THEN 'None'
      ELSE RELCHAR end AS RelCharGroup
  , dRelChar4.BodyID, dRelChar4.CharterBody
--      ,[ADMPOL]
--      ,[OFSTEDRATING]
--      ,[OFSTEDLASTINSP]
  FROM [a_levels_study_db].[dbo].[s_england_school_information]
  INNER JOIN dRelChar4 ON dRelChar4.CharterBody = 
      (CASE WHEN RELCHAR LIKE '%church%' THEN 'Christian'
        WHEN RELCHAR LIKE '%jew%' THEN 'Jewish'
        WHEN RELCHAR LIKE '%christian%' THEN 'Christian'
        WHEN RELCHAR LIKE '%Catholic%' THEN 'Christian'
        WHEN RELCHAR LIKE '%Does%' THEN 'None'
        WHEN RELCHAR LIKE '%Ortho%' THEN 'Christian'
        WHEN RELCHAR LIKE '%deno%' THEN 'Christian'
        WHEN RELCHAR IN ('Islam','Muslim') THEN 'Islam'
        WHEN RELCHAR IS NULL THEN 'None'
      ELSE RELCHAR 
      END);