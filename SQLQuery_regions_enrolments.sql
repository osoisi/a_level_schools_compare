CREATE VIEW regional_info AS
SELECT 
    --time_period
    --  ,[time_identifier]
      [geographic_level]
    --  ,[country_code]
    --  ,[country_name]
    --  ,CAST([region_code] AS numeric) AS region_code
      ,[region_name]
    --  ,[old_la_code]
    --  ,[new_la_code]
    --  ,[la_name]
    --  ,[school_type_group]
    --  ,[subject_area]
      ,[qualification]
    --  ,[school_type]
    --  ,[subject_name]
      ,[entry_count]
    --  ,SUM(entry_count) OVER (PARTITION BY region_name)
    --  ,[perc_astar_grade_achieved]
    --  ,[perc_astar_a_grade_achieved]
    --  ,[perc_astar_b_grade_achieved]
    --  ,[perc_astar_c_grade_achieved]
    --  ,[perc_astar_d_grade_achieved]
    --  ,[perc_astar_e_grade_achieved]
  FROM [a_levels_study_db].[dbo].[s_data-a-level-and-other-16-to-18-results]
  WHERE geographic_level ='Regional'
