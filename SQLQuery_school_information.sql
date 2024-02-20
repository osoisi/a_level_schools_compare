CREATE VIEW school_information AS 

SELECT 
       [URN]
      ,[LANAME]
    --  ,[LA]
    --  ,[ESTAB]
    --  ,[LAESTAB]
      ,[SCHNAME]
    --  ,[STREET]
    --  ,[LOCALITY]
    --  ,[ADDRESS3]
      ,[TOWN]
      ,[POSTCODE]
--      ,[SCHSTATUS]
    --  ,[CLOSEDATE]
      ,[MINORGROUP]
      ,[SCHOOLTYPE]
    --  ,[ISPRIMARY]
    --  ,[ISSECONDARY]
    --  ,[ISPOST16]
    --  ,[AGELOW]
    --  ,[AGEHIGH]
      ,CASE 
        WHEN AGEHIGH >=17 AND AGEHIGH <=19 THEN '17-19'
        WHEN AGEHIGH >=20 AND AGEHIGH <=25 THEN '20-25'
        WHEN AGEHIGH >25 THEN 'MATURE'
        END AS age_grouping
      ,[GENDER]
    --  ,[RELCHAR]
      ,CASE 
        WHEN RELCHAR = 'Does not apply' THEN NULL
        WHEN RELCHAR = 'None' THEN NULL
        ELSE RELCHAR
        END AS associated_with
      ,[ADMPOL]
      ,CASE 
        WHEN ADMPOL = 'Not applicable' THEN NULL
        ELSE ADMPOL
        END AS admin_policy
      ,[OFSTEDRATING]
      ,[OFSTEDLASTINSP]
  FROM [a_levels_study_db].[dbo].[s_england_school_information]
  WHERE ISPOST16 != 0 AND AGEHIGH !=99 AND CLOSEDATE IS NULL