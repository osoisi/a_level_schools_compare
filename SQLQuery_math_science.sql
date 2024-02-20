CREATE VIEW math_science AS
SELECT 
    --   [Region]
    --  ,[Local_Authority]
    --  ,[Ref]
    --  ,[School_name]
        URN
    --  ,[School_type]
    --  ,[Gender_info]
      ,[All_A_levels_students]
      ,[A_level_maths_percent_all]
      ,[A_level_further_maths_percent_all]
      ,[A_level_biological_sciences_percent_all]
      ,[A_level_chemistry_percent_all]
      ,[A_level_physics_percent_all]
      ,[A_level_computer_sciences_percent_all]
      ,[Female_A_levels_students]
      ,[A_level_maths_percent_female]
      ,[A_level_further_maths_percent_female]
      ,[A_level_biological_sciences_percent_female]
      ,[A_level_chemistry_percent_female]
      ,[A_level_physics_percent_female]
      ,[A_level_computer_sciences_percent_female]
      ,[Male_A_levels_students]
      ,[A_level_Maths_percent_male]
      ,[A_level_further_maths_percent_male]
      ,[A_level_biological_sciences_percent_male]
      ,[A_level_chemistry_percent_male]
      ,[A_level_physics_percent_male]
      ,[A_level_computer_sciences_percent_male]
  FROM [16-18_Maths_&_Science_A2023] AS ms2023
  INNER JOIN s_england_school_information AS si
  ON ms2023.School_name=si.SCHNAME