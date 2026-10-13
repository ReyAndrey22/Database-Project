--inserări în tabelele create
insert into users(username, password, email, user_type) values
('andrei21','password1234','andrei_bitoleanu@gmail.com','customer'),
('sebi42','password2345','sebi_marcel@gmail.com','employee'),
('elena02','password1235','elena_popescu@gmail.com','customer'),
('cazimir41','password1222','cazimir_ionel@gmail.com','manager'),
('sorin89','password2223','sorin_tătaru@gmail.com','manager'),
('gigel54','password3345','gigel_enescu@gmail.com','customer'),
('ana19','password8745','ana_dumitrașcu@gmail.com','customer'),
('teodora65','password6754','teodora_anghel@gmail.com','employee'),
('john35','password1000','john_davis@gmail.com','employee'),
('anca27','password9324','anca_istrate@gmail.com','manager'),
('florin50','password3293','florin_andronie@gmail.com','manager'),
('eduard02','password2293','eduard_drăcea@gmail.com','employee'),
('filip62','password9000','filip_voiculescu@gmail.com','customer'),
('frank22','password3314','frank_johnson@gmail.com','customer'),
('mike77','password5633','mike_harold@gmail.com','employee'),
('jack11','password9721','jack_maurice@gmail.com','manager'),
('vladimir32','password9133','vladimir_putin@gmail.com','employee'),
('daniela45','password0032','daniela_georgescu@gmail.com','manager'),
('mirela20','password0011','mirela_zamfir@gmail.com','manager'),
('andrada76','password472','andrada_chivu@gmail.com','employee'),
('orlando81','password449','orlando_nedelea@gmail.com','customer'),
('georgel123','password168','georgel_lungu@gmail.com','customer');


insert into customer(first_name, last_name, phone_number, adress, id_users) values
('Andrei','Bitoleanu', 773345643, 'Golumbu', 1),
('Elena','Popescu', 745234123, 'Craiova', 3),
('Gigel','Enescu', 724390784, 'Craiova', 6),
('Ana','Dumitrașcu', 776873454, 'București', 7),
('Filip','Voiculescu', 773216734, 'București', 13),
('Frank','Johnson', 771232100, 'București', 14),
('Orlando','Nedelea', 700423210, 'Sibiu', 21),
('Georgel','Lungu', 711120755, 'Golumbu', 22);

insert into manager(first_name, last_name, phone_number, adress, date_of_birth, salary, id_users) values
('Cazimir', 'Ionel', 723456789, 'Ilfov', '1980-05-15', 8000, 4),
('Sorin', 'Tătaru', 741234567, 'Craiova', '1975-10-10', 8500, 5),
('Anca', 'Istrate', 765678901 , 'Șimnic', '1982-08-22', 8200, 10),
('Florin', 'Andronie', 789345678, 'Șimnic', '1979-11-18', 8700, 11),
('Jack', 'Maurice', 700452832, 'Ilfov', '1982-07-05', 8900, 16),
('Daniela', 'Georgescu', 701234567, 'Melinești', '1984-03-04', 8300, 18),
('Mirela', 'Zamfir', 791222734, 'Craiova', '1981-06-01', 8600, 19);

insert into employee(first_name, last_name, phone_number, adress, date_of_birth, salary, id_users, id_manager) values
('Sebi', 'Marcel', 743458309, 'Craiova', '1990-04-10', 4000, 2, 1),
('Teodora', 'Anghel', 723111234, 'Craiova', '1992-07-15', 4200, 8, 1),
('John', 'Davis', 734800645, 'Strehaia', '1991-03-20', 4100, 9, 2),
('Eduard', 'Drăcea', 789433222, 'Filiași', '1989-11-01', 4300, 12, 3),
('Mike', 'Harold', 723456643, 'Filiași', '1974-10-12', 4500, 15, 4),
('Vladimir', 'Putin', 700499643, 'Filiași', '1994-9-12', 4500, 17, 5),
('Andrada', 'Chivu', 748834567, 'Melinești', '1986-08-24', 4400, 20, 3);

insert into supplier(id_supplier, name, email, adress, phone_number) values
(1, 'Pet Supplies', 'contact@petsupplies.com', 'Blvd Tudor Arghezi', 72223456),
(2, 'Happy Pets', 'contact@happypets.com', 'Cartierul 1Mai', 87657421),
(3, 'Animal World', 'info@animalworld.com', 'Blvd Ecaterina Teodorescu', 123256543),
(4, 'Animalix', 'info@animalix.com', 'Strada Ion Matei', 77775654),
(5, 'My Pet', 'service@mypet.com', 'Strada Trei Pistoale', 96355353),
(6, 'Maxi Pet', 'service@maxipet.com', 'Cartierul Dumbrava Nouă', 96355009),
(7, 'Pisi Cuțu', 'contact@pisicuțu.com', 'Strada Nicolae Bălcescu', 78832566);

insert into pet(id_pet, species, breed, age_years, age_months, price, pet_quantity, id_supplier) values
(1, 'Dog', 'Golden Retriever', 2, 6, 800, 3, 1),
(2, 'Dog', 'Doberman', 3, 0, 500, 5, 2),
(3, 'Cat', 'Sphynx', 1, 2, 300, 2, 2),
(4, 'Snake', 'Python', 0, 8, 200, 10, 4),
(5, 'Fish', 'Clownfish', 1, 4, 100, 4, 6),
(6, 'Dog', 'German Shepherd', 4, 3, 700, 2, 2),
(7, 'Cat', 'Maine Coon', 2, 7, 600, 3, 5),
(8, 'Spider', 'Tarantula', 5, 0, 150, 6, 4),
(9, 'Cat', 'Siamese', 2, 1, 600, 7, 5),
(10, 'Fish', 'Goldenfish', 0, 3, 150, 12, 5),
(11, 'Bird', 'Parrot', 2, 5, 130, 5, 6),
(12, 'Bird', 'Canary', 1, 8, 100, 19, 6),
(13, 'Lizard', 'Iguana', 4, 0, 220, 3, 5),
(14, 'Dog', 'Beagle', 4, 2, 50, 10, 7),
(15, 'Lizard', 'Chameleon', 6, 5, 350, 4, 3),
(16, 'Dog', 'Bulldog', 0, 9, 260, 9, 3),
(17, 'Rabbit', 'Lionhead', 1, 2, 100, 10, 1);

insert into product(id_product, name, category, price, product_quantity, id_supplier) values
(1, 'Dog Food', 'Food', 20, 20, 1),
(2, 'Cat Food', 'Food', 30, 25, 1),
(3, 'Bird Seeds', 'Food', 15, 30, 1),
(4, 'Aquarium', 'Accessories', 100, 10, 4),
(5, 'Cat Cage', 'Accessories', 200, 13, 4),
(6, 'Leash', 'Accessories', 25, 30, 2),
(7, 'Dog Cage', 'Accessories', 175, 25, 3),
(8, 'Shampoo Dog', 'Grooming Products', 50, 17, 5),
(9, 'Flea and Tick Spray', 'Grooming Products', 60, 45, 6),
(10, 'Fish Food', 'Food', 30, 19, 5),
(11, 'Shampoo Cat', 'Grooming Products', 50, 20, 7),
(12, 'Dog Toys', 'Toys', 35, 15, 7),
(13, 'Cat Toys', 'Toys', 45, 20, 2),
(14, 'Bird Cage', 'Accesories', 150, 10, 6),
(15, 'Nail Clipper', 'Grooming Products', 50, 10, 4),
(16, 'Collar', 'Accessories', 12, 34, 4),
(17, 'Terrarium', 'Accessories', 135, 15, 3);

insert into review (id_review, rating, comment, date_review, id_customer, id_pet, id_product) values 
(1, 5, 'My Golden Retriever is amazing!', '2023-01-01', 1, 1, NULL), 
(2, 4, 'The dog food is great quality.', '2024-03-02', 2, NULL, 1), 
(3, 3, 'The aquarium is decent but a bit expensive.', '2025-11-23', 2, NULL, 4), 
(4, 5, 'My Maine Coon is so fluffy and adorable!', '2025-06-14', 4, 7, NULL), 
(5, 2, 'The flea spray didn’t work as expected.', '2023-09-05', 6, NULL, 9), 
(6, 4, 'The cat cage is very sturdy.', '2020-10-01', 3, NULL, 5), 
(7, 5, 'The Clownfish looks amazing in the aquarium!', '2025-01-07', 1, 5, NULL),
(8, 2, 'The Tarantula looks scary.', '2024-02-03', 3, 8, NULL),
(9, 3, 'The shampoo is good.', '2025-03-03', 5, NULL, 11),
(10, 1,'Poor quality nail clipper,broke after one use', '2024-03-03', 8, NULL, 15);

insert into orders(id_orders, status_order, pay_method, date_order, id_customer) values
(1, 'Completed', 'Credit Card', '2024-02-01', 1),
(2, 'Processing', 'Cash', '2024-07-05', 2),
(3, 'Completed', 'Debit Card', '2024-07-09', 2),
(4, 'Pending', 'Cash', '2025-01-04', 4),
(5, 'Returned', 'Credit Card', '2025-10-05', 5),
(6, 'Processing', 'Credit Card', '2024-03-06', 5),
(7, 'Pending', 'Debit Card', '2025-01-10', 3),
(8, 'Processing', 'Credit Card', '2023-01-09', 2),
(9, 'Completed', 'Cash', '2023-11-13', 1),
(10, 'Completed', 'Cash', '2024-09-23', 4);

insert into order_details(id_orders, id_pet, id_product, purchase_quantity, unit_price) values
(1, NULL, 1, 5, 20),
(2, 1, NULL, 1, 800), 
(2, NULL, 7, 1, 175),  
(3, NULL, 6, 1, 25),  
(3, NULL, 8, 2, 50),  
(8, 12, NULL, 2, 100),  
(5, 4, NULL, 1, 200), 
(5, 5, NULL, 1, 100),
(4, NULL, 12, 2, 35),
(4, NULL, 1, 2, 20),
(4, NULL, 13, 1, 45),
(10, 9, NULL, 1, 600),
(10, NULL, 2, 3, 30),
(10, NULL, 5, 1, 200);

--modificări și ștergeri în tabelele create

alter table manager
add constraint unique_id_user unique (id_users);

alter table employee
add constraint unique1_id_user unique (id_users);

alter table customer
add constraint unique2_id_user unique (id_users);

update pet set price=250 
where breed='Iguana'

update product set product_quantity = 14
where price between 90 and 160

delete from orders 
where date_order = '2023-11-13';

delete from pet
where price between 30 and 60;


alter table supplier add contract boolean;

alter table supplier drop contract;

drop table orders cascade;

update product set price = price * 1.1
where id_supplier = (
    select id_supplier
    from supplier
    where name = 'Happy Pets'
);

update employee set salary = salary + 500
where id_manager = (
    select id_manager
    from manager
    where last_name = 'Tătaru'
);

update manager set date_of_birth = '1989-07-05'
where id_users = (
     select id_users
	 from users
     where username like 'da%'
);

delete from review 
where id_customer in (
     select id_customer
	 from customer
     where adress like 'Sibiu' 
);

delete from product
where id_product in(
    select id_product
   from review
    where rating < 3
);


--afișările tabelelor
select * from users;
select * from customer;
select * from employee;
select * from manager;
select * from supplier;
select * from pet;
select * from product;
select * from review;
select * from orders;
select * from order_details;


