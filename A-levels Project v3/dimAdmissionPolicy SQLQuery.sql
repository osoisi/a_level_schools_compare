--dimAdmissionPolicy
CREATE VIEW dimAdmissionPolicytest AS
SELECT
       [URN],
--      ,[LANAME]
 --     ,[LA]
--      ,[ESTAB]
--      ,[LAESTAB
--      ,[SCHNAME]
--      ,[STREET]
--      ,[LOCALITY]
--      ,[ADDRESS3]
--      ,[TOWN]
--      ,[POSTCODE]
--      ,[SCHSTATUS]
--      ,[CLOSEDATE]
--      ,[MINORGROUP]
--        DISTINCT [SCHOOLTYPE]
--      ,[ISPRIMARY]
--      ,[ISSECONDARY]
--      ,[ISPOST16]
--      ,[AGELOW]
--      ,[AGEHIGH]
--      ,[GENDER]
--      ,[RELCHAR]
       [ADMPOL]
--      ,[OFSTEDRATING]
--      ,[OFSTEDLASTINSP]
  FROM [a_levels_study_db].[dbo].[s_england_school_information]
  WHERE ISPOST16 = 1
  and OFSTEDRATING IS NOT NULL