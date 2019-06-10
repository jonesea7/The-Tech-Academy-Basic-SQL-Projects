create database db_zooEddy2

use db_zooEddy2;

select*from tbl_specialist;

create table tbl_animalia (
animalia_id int primary key not null identity (1,1),
animalia_type varchar(50) not null
); 

insert into tbl_animalia
	(animalia_type)
	values
	('vertebrate'),
	('invertebrate')
;

select*from tbl_animalia


create table tbl_class ( 
	class_id int primary key not null identity (100,1), 
	class_type varchar(50) not null
);

insert into tbl_class
	(class_type)
	values
	('bird'),
	('reptilian'),
	('mammal'),
	('arthropod'),
	('fish'),
	('worm'),
	('cnidaria'),
	('echinoderm')
;

update tbl_order set identity (1,1)

create table tbl_order (
	order_id int primary key not null identity (1000,1),
	order_type varchar (50) not null
);

select*from tbl_order

create table tbl_care (
	care_id varchar(50) primary key not null,
	care_type varchar(50) not null,
	care_specialist int not null
);

create table tbl_nutrition (
	nutrition_id int primary key not null identity (2000,1),
	nutrition_type varchar(50) not null,
	nutrition_cost money not null
);

create table tbl_habitat (
	habitat_id int primary key not null identity (5000,1),
	habitat_type varchar(50) not null,
	habitat_cost money not null,
);

create table tbl_specialist (
	specialist_id int primary key not null identity (1,1),
	specialist_fname varchar(50) not null,
	specialist_lname varchar(50) not null,
	specialist_contact varchar(50) not null,
);

insert into tbl_order
	(order_type)
	values
	('carnivore'),
	('herbivore'),
	('omnivore')
;

select * from tbl_order;

insert into tbl_care
	(care_id, care_type, care_specialist)
	values
	('care_0', 'replace the straw', 1),
	('care_1', 'repair or replace broken toys', 4),
	('care_2', 'bottle feed vitamins', 1),
	('care_3', 'human contact pet subject', 2),
	('care_4', 'clean up animal waste', 1),
	('care_5', 'move subject to exercise pen', 3),
	('care_6', 'drain an refill aquarium', 1),
	('care_7', 'extensive dental work', 3)
;

select * from tbl_care;

insert into tbl_nutrition
	(nutrition_type, nutrition_cost)
	values
	('raw fish', 1500),
	('live rodents', 600),
	('mixture of fruit and rice', 800),
	('warm bottle of milk', 600),
	('syringe feed broth', 600),
	('lard and seed mix', 300),
	('aphids', 150),
	('vitamins and marrow', 3500)
;

select * from tbl_nutrition;

insert into tbl_habitat
	(habitat_type, habitat_cost)
	values
	('tundra', 40000),
	('grassy gnoll with trees', 12000),
	('10 ft pond and rocks', 30000),
	('short grass, shade, and moat', 50000),
	('icy aquarium with snowy facade', 50000),
	('netted forest atrium', 10000),
	('jungle vines and winding branches', 15000),
	('cliff and shaded cave', 15000)
;

insert into tbl_specialist
	(specialist_fname, specialist_lname, specialist_contact)
	values
	('margaret', 'nyguen', '384-576-2899'),
	('mary', 'fischer', '384-784-4856'),
	('arnold', 'holden', '385-475-3944'),
	('kem', 'byeson', '384-485-4855'),
	('delmonte', 'fyedo', '786-288-3749')
;

select * from tbl_specialist;
select * from tbl_habitat;

/*this is the opening line to create a table don't forget the (); which is essential the method that will add all the items
into the tabel*/

create table tbl_species (

/*syntax is 1)name the column 2)set data type 3)establish primary key 4)establish not null
identity invokes the tuple that will tell where the primary key will start and how it will step up*/
	species_id int primary key not null identity (1,1),
	species_name varchar(50) not null,
	
	/*this is where we create a foreign key
	constraint invokes the method to name the new foreign key
	keywords: foreign key references lets us know what will be referenced
	next the syntax of table(column) is how we link the new fk to a table that is already created
	on tells us what to do 'on' update/delete cascade makes it fall like a waterfall on down so the info stays in the right place and format*/
	species_animalia int not null constraint fk_animalia_id foreign key references tbl_animalia(animalia_id) on update cascade on delete cascade,
	species_class int not null constraint fk_class_id foreign key references tbl_class(class_id) on update cascade on delete cascade,
	species_order int not null constraint fk_order_id foreign key references tbl_order(order_id) on update cascade on delete cascade,
	species_habitat int not null constraint fk_habitat_id foreign key references tbl_habitat(habitat_id) on update cascade on delete cascade,
	species_nutrition int not null constraint fk_nutrition_id foreign key references tbl_nutrition(nutrition_id) on update cascade on delete cascade,
	species_care varchar(50) not null constraint fk_care_id foreign key references tbl_care(care_id) on update cascade on delete cascade
);

insert into tbl_species
	(species_name, species_animalia, species_class, species_order, species_habitat, species_nutrition, species_care)
	values
	('brown bear', 1, 102, 1002, 5007, 2000, 'care_1'),
	('jaguar', 1, 102, 1001, 5007, 2000, 'care_4'),
	('penguin', 1, 100, 1001, 5003, 2000, 'care_6'),
	('ghost bat', 1, 102, 1001, 5007, 2004, 'care_2'),
	('chicken', 1, 100, 1002, 5001, 2005, 'care_0'),
	('panda', 1, 102, 1002, 5006, 2002, 'care_4'),
	('bobcat', 1, 102, 1001, 5001, 2004, 'care_5'),
	('grey wolf', 1, 102, 1001, 5000, 2001, 'care_1')
;

select * from tbl_order
d
select*from tbl_nutrition