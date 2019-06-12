USE db_zoo

--STEP 4 REDO

SELECT species_name, species_nutrition FROM tbl_species WHERE species_nutrition >=2202 AND species_nutrition <=2206;

--didn't realize i needed to show the nutrition id as apart of the query so i replaced the species_nutrition column with the nutrition id column to solve this problem.

SELECT tbl_species.species_name, tbl_nutrition.nutrition_id
FROM tbl_species
JOIN tbl_nutrition ON tbl_nutrition.nutrition_id = tbl_species.species_nutrition
WHERE species_nutrition >=2202 AND species_nutrition <=2206;


/*STEP 6 REDO 
From the specialist table, 
retrieve the first and last name and contact number
of those that provide care for the penguins from the species table.*/

USE db_zoo

--first example I was getting back arnold 
SELECT
	tbs.specialist_fname, tbs.specialist_lname, tbs.specialist_contact, tbs2.species_name
	FROM tbl_specialist tbs
	INNER JOIN tbl_species tbs2 ON tbs2.species_id = tbs.specialist_id
	WHERE species_name = 'penguin'

--then I got stuck doing different versions of getting arnold twice, more of the same. not good.

SELECT
tbl_specialist.specialist_fname, tbl_specialist.specialist_lname, 
tbl_specialist.specialist_contact, tbl_species.species_name
FROM tbl_species
INNER JOIN tbl_care ON tbl_care.care_specialist = tbl_species.species_care
INNER JOIN tbl_specialist ON tbl_species.species_id = tbl_specialist.specialist_id
WHERE species_name = 'penguin'

--I decided to look at all of the table at the same time to determine what the correct answer should be

SELECT * from tbl_specialist
select * from tbl_species
select * from tbl_care

--discovered it should be margret

--next i just did the inner join to from care table to the specialist table to see how they related

select * from tbl_care inner join tbl_specialist on tbl_specialist.specialist_id =tbl_care.care_specialist;

--then i did the penguin search and realized that's why i needed the second inner join to put the species table that tied it all together in the mix.

SELECT tbl_specialist.specialist_fname, tbl_specialist.specialist_lname, tbl_specialist.specialist_contact 
from tbl_care 
inner join tbl_specialist on tbl_specialist.specialist_id = tbl_care.care_specialist 
inner join tbl_species on tbl_species.species_care = tbl_care.care_id
WHERE species_name = 'penguin'

--i finally got you marge you couldn't escape me forever.

