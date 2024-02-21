CREATE VIEW school_information_updated AS 

SELECT 
       [URN]
      ,[LANAME] AS Location
    --  ,[LA]
    --  ,[ESTAB]
    --  ,[LAESTAB]
      ,[SCHNAME] AS School
    --  ,[STREET]
    --  ,[LOCALITY]
    --  ,[ADDRESS3]
      ,[TOWN] AS Town
      ,[POSTCODE] AS Post_code
--      ,[SCHSTATUS]
    --  ,[CLOSEDATE]
      ,[MINORGROUP] AS Other_grouping
      ,[SCHOOLTYPE] AS School_type
    --  ,[ISPRIMARY]
    --  ,[ISSECONDARY]
    --  ,[ISPOST16]
    --  ,[AGELOW]
    --  ,[AGEHIGH]
      ,CASE 
        WHEN AGEHIGH >=17 AND AGEHIGH <=19 THEN '17-19'
        WHEN AGEHIGH >=20 AND AGEHIGH <=25 THEN '20-25'
        WHEN AGEHIGH >25 THEN 'MATURE'
        END AS Age_grouping
      ,[GENDER] AS Gender
    --  ,[RELCHAR]
      ,CASE 
        WHEN RELCHAR = 'Does not apply' THEN NULL
        WHEN RELCHAR = 'None' THEN NULL
        ELSE RELCHAR
        END AS Associated_with
      --,[ADMPOL]
      ,CASE 
        WHEN ADMPOL = 'Not applicable' THEN NULL
        ELSE ADMPOL
        END AS Admission_policy
      ,[OFSTEDRATING] AS OFTSTED_rating
      ,[OFSTEDLASTINSP] AS OFSTED_visit
  FROM [a_levels_study_db].[dbo].[s_england_school_information]
  WHERE ISPOST16 != 0 AND CLOSEDATE IS NULL