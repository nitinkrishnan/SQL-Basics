create table customer_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key (id)
);

select * from customer_info;
insert into customer_info(first_name , last_name , salary)
values
("Nithin","Krish",76000),
("Krish","Naik",98000),
("Raghu","varan",56000),
("David","beckham",67000),
("Nikhil","Madhav",NULL);

SELECT * FROM customer_info where salary is NULL;


# sql update statement
update customer_info set salary = 67000 where id=5;

#sql delete statement
delete from customer_info where id = 5;

#sql alter statement
#adding column 
alter table customer_info add email varchar(25); 

alter table customer_info add DOB date;
#modify column 
alter table customer_info modify DOB year;

desc customer_info;

#alter table - dropping columns
alter table customer_info drop column email;
