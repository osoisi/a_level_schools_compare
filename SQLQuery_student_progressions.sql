CREATE VIEW student_progressions AS 
SELECT 
    --   [RECTYPE]
    --  ,[LEA]
    --  ,[ESTAB]
       [URN]
    --  ,[SCHNAME]
    --  ,[NFTYPE]
    --  ,[FEEDER]
    --  ,[ICLOSE]
    --  ,[ALL_BAND]
    --  ,[ALL_SCORE]
    --  ,[ALL_UPPER]
    --  ,[ALL_LOWER]
      ,[ALL_COHORT] AS studying4level3qual
      ,[ALL_PROGRESSED] AS sustainedL4above
      ,[ALL_APPREN] AS SustainedApprenticeshipDestination
      ,[ALL_HE]
      ,[ALL_TOP3RD] AS TopthirdHEdestination
      ,[ALL_RUSSELL] AS RussellGroupInstitution
      ,[ALL_OXBRIDGE] AS OxfordorCambridge
      ,[ALL_HTECH] AS SustainedLevel4or5destination
    --  ,[ACADAGEN_COHORT]
    --  ,[ACADAGEN_PROGRESSED]
    --  ,[ACADAGEN_SCORE]
    --  ,[ACADAGEN_UPPER]
    --  ,[ACADAGEN_LOWER]
    --  ,[ACADAGEN_BAND]
    --  ,[TLEV_COHORT] AS studyingtechlevels
    --  ,[TLEV_PROGRESSED]
    --  ,[TLEV_SCORE]
    --  ,[TLEV_UPPER]
    --  ,[TLEV_LOWER]
    --  ,[TLEV_BAND]
    --  ,[OTHER_COHORT]
    --  ,[OTHER_PROGRESSED]
    --  ,[OTHER_SCORE]
    --  ,[OTHER_UPPER]
    --  ,[OTHER_LOWER]
    --  ,[OTHER_BAND]
    --  ,[DIS_PROGRESSED]
    --  ,[DIS_APPREN]
    --  ,[DIS_HE]
    --  ,[DIS_TOP3RD]
    --  ,[DIS_RUSSELL]
    --  ,[DIS_OXBRIDGE]
    --  ,[DIS_HTECH]
  FROM [a_levels_study_db].[dbo].[england_ks5-studest-higher_education]
  WHERE RECTYPE != 'LA' AND ICLOSE !=1