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

create table tbl_order (
	order_id int primary key not null identity (1000,1),
	order_type varchar (50) not null
);

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

create table tbl_species (
	species_id int primary key not null identity (1,1),
	species_name varchar(50) not null,
	species_animalia int not null constraint fk_animalia_id foreign key references tbl_animalia(animalia_id) on update cascade on delete cascade,
	species_class int not null constraint fk_class_id foreign key references tbl_class(class_id) on update cascade on delete cascade,
	species_order int not null constraint fk_order_id foreign key references tbl_order(order_id) on update cascade on delete cascade,
	species_habitat int not null constraint fk_habitat_id foreign key references tbl_habitat(habitat_id) on update cascade on delete cascade,
	species_nutrition int not null constraint fk_nutrition_id foreign key references tbl_nutrition(nutrition_id) on update cascade on delete cascade,
	species_care varchar(50) not null constraint fk_care_id foreign key references tbl_care(care_id) on update cascade on delete cascade
);



