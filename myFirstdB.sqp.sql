use db_zooEddy;

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

select*from tbl_class

update tbl_class set class_type = 'birds' where class_type = 'bird';

select replace(class_type, 'birds', 'bird') from tbl_class;

select upper(class_type) from tbl_class where class_type = 'bird';
select count(class_type) from tbl_class where class_type =  'bird';

create table tbl_persons (
	persons_id int primary key not null identity (100,1),
	persons_fname varchar (50) not null,
	persons_lname varchar (50) not null,
	persons_contact varchar (50) not null
);

insert into tbl_persons
	(persons_fname,persons_lname, persons_contact)
	values
	('Bob','Smith', '1233211221'),
	('Ed','Dorsey', '3455433443'),
	('Billy','Cooley', '7899877878'),
	('Mando', 'Sonaj', '3452343223')
;
 
select * from tbl_persons;

select persons_fname, persons_lname, persons_contact from tbl_persons where persons_id between 2 and 5

select persons_fname, persons_lname, persons_contact from tbl_persons where persons_lname like 'so%'

select persons_fname, persons_lname, persons_contact from tbl_persons where persons_lname like '_o%y';

update tbl_persons set persons_fname = 'mars' where persons_fname = 'Ed';

/*this allows me to search for someone with a firstname that starts with m*/
select persons_fname, persons_lname, persons_contact 
	from tbl_persons 
	where persons_fname 
	like 'm%' 
	order by persons_lname 
	desc;

/*trying to figure out how to delete redundancies*/
delete from tbl_persons where
	(Firstname, Lastname, Phone:)
	('Bob','Smith', '1233211221'),
	('Ed','Dorsey', '3455433443'),
	('Billy','Cooley', '7899877878'),
	('Mando', 'Sonaj', '3452343223')
;
/*this is how you can change the column names*/
select persons_fname as 'Firstname', persons_lname as 'Lastname', persons_contact as 'Phone:' from tbl_persons

delete from tbl_persons where persons_lname = 'Dorsey';

/*if you want to delete the table all together*/

drop table tbl_persons;

