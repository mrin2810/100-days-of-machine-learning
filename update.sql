ALTER TABLE base_table 
ADD COLUMN positions_array text[];

UPDATE base_table
SET positions_array = string_to_array(positions, ',');

ALTER TABLE base_table 
ADD COLUMN insdustries_array text[];

UPDATE base_table
SET insdustries_array = string_to_array(industry, ',');