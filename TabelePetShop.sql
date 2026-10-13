create table users(
id_users serial primary key,
username varchar(50) not null,
password varchar(50) not null, 
email varchar(50) not null unique,
user_type varchar(50) check(user_type in('customer','employee','manager'))
);

create table manager(
id_manager serial primary key,
first_name varchar(50) not null,
last_name varchar(50) not null, 
phone_number int not null unique,
adress varchar(50),
date_of_birth date,
salary int,
id_users int,
foreign key(id_users) references users(id_users) on delete cascade on update cascade
);

create table employee(
id_employee serial primary key,
first_name varchar(50) not null,
last_name varchar(50) not null, 
phone_number int not null unique,
adress varchar(50),
date_of_birth date,
salary int,
id_users int,
id_manager int,
foreign key(id_users) references users(id_users) on delete cascade on update cascade,
foreign key(id_manager) references manager(id_manager) on delete cascade on update cascade
);

create table customer(
id_customer serial primary key,
first_name varchar(50) not null,
last_name varchar(50) not null, 
phone_number int not null unique,
adress varchar(50),
id_users int,
foreign key(id_users) references users(id_users) on delete cascade on update cascade
);

create table supplier(
id_supplier int primary key,
name varchar(50) not null,
email varchar(50) not null unique,
adress varchar(50),
phone_number int not null  unique
);

create table pet(
id_pet int primary key,
species varchar(50) not null,
breed varchar(50) not null,
age_years int check(age_years>=0),
age_months int check(age_months>=0 and age_months<12),
price int not null,
pet_quantity int,
id_supplier int,
foreign key(id_supplier) references supplier(id_supplier) on delete cascade on update cascade
);

create table product(
id_product int primary key,
name varchar(50) not null,
category varchar(50) not null,
price int not null,
product_quantity int,
id_supplier int,
foreign key(id_supplier) references supplier(id_supplier) on delete cascade on update cascade
);

create table review(
id_review int primary key,
rating int check(rating>=0 and rating<=5),
comment varchar(50),
date_review date,
id_customer int,
id_pet int,
id_product int,
check((id_pet is not null) or (id_product is not null)),
foreign key(id_customer) references customer(id_customer) on delete cascade on update cascade,
foreign key(id_pet) references pet(id_pet) on delete cascade on update cascade,
foreign key(id_product) references product(id_product) on delete cascade on update cascade
);

create table orders(
id_orders int primary key,
status_order varchar(50),
pay_method varchar(50),
date_order date,
id_customer int,
foreign key(id_customer) references customer(id_customer) on delete cascade on update cascade
);

create table order_details(
id_orders int,
id_pet int,
id_product int,
purchase_quantity int,
unit_price int,
subtotal int generated always as (purchase_quantity * unit_price) stored,
check((id_pet is not null) or (id_product is not null)),
foreign key(id_orders) references orders(id_orders) on delete cascade on update cascade,
foreign key(id_pet) references pet(id_pet) on delete cascade on update cascade,
foreign key(id_product) references product(id_product) on delete cascade on update cascade
);
