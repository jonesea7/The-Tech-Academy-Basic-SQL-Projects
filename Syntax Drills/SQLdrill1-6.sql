use db_zoo
/*drill 1*/

SELECT * FROM tbl_habitat;

/* Drill 2*/

SELECT species_name FROM tbl_species WHERE species_order = 3;

/* Drill 3*/

SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600;

/* Drill 4 */

SELECT species_name FROM tbl_species WHERE species_nutrition >=2202 AND species_nutrition <=2206;

/* Drill 5 */

SELECT
	ts.species_name AS 'Species Name:', tn.nutrition_type AS 'Nutrition Type:'
	FROM tbl_species ts
	INNER JOIN tbl_nutrition tn ON tn.nutrition_id = ts.species_nutrition;

/* Drill 6 */

SELECT
	tbs.specialist_fname, tbs.specialist_lname, tbs.specialist_contact, tbs2.species_name
	FROM tbl_specialist tbs
	INNER JOIN tbl_species tbs2 ON tbs2.species_id = tbs.specialist_id
	WHERE species_name = 'penguin'

/* Drill 7 is separate */
