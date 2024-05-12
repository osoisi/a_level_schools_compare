--dimHigherEducation
CREATE VIEW dimHigherEducation AS
SELECT 
--       [RECTYPE]
--      ,[LEA]
--      ,[ESTAB]
      [URN]
--      ,[SCHNAME]
--      ,[NFTYPE]
--      ,[FEEDER]
--      ,[ICLOSE]
--      ,[ALL_BAND]
--      ,[ALL_SCORE]
--      ,[ALL_UPPER]
--      ,[ALL_LOWER]
--      ,[ALL_COHORT]
      ,[ALL_PROGRESSED]
--      ,[ALL_APPREN]
      ,[ALL_HE]
--      ,[ALL_TOP3RD]
      ,[ALL_RUSSELL]
      ,[ALL_OXBRIDGE]
--      ,[ALL_HTECH]
--      ,[DIS_HE]

  FROM [a_levels_study_db].[dbo].[england_ks5-studest-higher_education]
  WHERE ICLOSE = 0 and SCHNAME IS NOT NULL