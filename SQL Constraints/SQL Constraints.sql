create table student(
id int not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
age int
);
desc student;

create table person(
id int not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
age int not null,
unique(id)
);

insert into person values(1,"Nithin","Krish",22);

alter table person
ADD unique(first_name);

desc person;

select * from person;

alter table person 
add constraint uc_person unique(age,first_name);

alter table person
drop index uc_person;

#Primary Key
create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
constraint pk_person primary key(id,first_name)
);

desc person1;

alter table person1
drop primary key;

alter table person1
add primary key(id);

use customers;

create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id)
);

desc department;

drop table department;

alter table department
add foreign key(id) references person(id);

##Check Constraints
create table Departmental_store (
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int ,
salary int,
primary key (id),
check(salary<70000)
);
desc Departmental_store;

insert into Departmental_store values (1 , 'Nithin','Krish',22,50000);

select * from departmental_store;

##Deafult constraint 

create table jobs(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
city varchar(25) default 'Coimbatore'
);

desc jobs;
select * from jobs;


