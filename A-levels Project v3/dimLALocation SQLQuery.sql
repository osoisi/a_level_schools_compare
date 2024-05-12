--dimLALocation
--CREATE VIEW dimLocation1 AS 

WITH dRegion AS(
      SELECT DISTINCT Region as nRegion
      FROM [a_levels_study_db].[dbo].[16-18_Maths_&_Science_A2023]
),
dRegID AS(
      SELECT ROW_NUMBER() OVER(ORDER BY nRegion) AS RegionID, nRegion
      FROM dRegion
)
SELECT 
      -- [Region]
      Ref,
      Local_Authority,
      Region,
      dRegID.RegionID
--      ,dRegion.nRegion
--      ,[Ref] AS URN
--      ,[School_name]
--      ,[School_type]
  FROM [a_levels_study_db].[dbo].[16-18_Maths_&_Science_A2023]
  INNER JOIN dRegion
  ON nRegion = Region
  INNER JOIN dRegID
  ON dRegID.nRegion = dRegion.nRegion