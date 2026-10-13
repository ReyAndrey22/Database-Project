--a.
--Să se afișeze emailurile angajaților împreună cu numele managerilor care îi supervizează.

select e.first_name as employee_first_name, e.last_name as employee_last_name, u.email as employee_email,
       m.first_name as manager_first_name, m.last_name as manager_last_name
from employee e
inner join users u on e.id_users = u.id_users
inner join manager m on e.id_manager = m.id_manager;

--Să se afișeze numele clienților care au plasat comenzi și statusul comenzilor.

select c.first_name as customer_first_name, c.last_name as customer_last_name, o.status_order
from customer c
inner join orders o on c.id_customer = o.id_customer;

--Să se afișeze numele clientilor care au comandat produse cu prețul cuprins între 30 și 70.

select c.first_name as customer_first_name, c.last_name as customer_last_name, p.name as product_name, p.price
from customer c
inner join orders o on c.id_customer = o.id_customer
inner join order_details od on o.id_orders = od.id_orders
inner join product p on od.id_product = p.id_product
where p.price between 30 and 70;

--Să se afișeze toți managerii,chiar dacă nu au angajați de supervizat

select m.first_name as manager_first_name, m.last_name as manager_last_name,
       e.first_name as employee_first_name, e.last_name as employee_last_name
from manager m
left outer join employee e on m.id_manager = e.id_manager;

--Să se afișeze toți clienții care au lăsat sau nu un feedback

select first_name,last_name,comment
from customer
left outer join review on customer.id_customer = review.id_customer;

--Să se afișeze clienții din București care au plasat sau nu comenzi

select c.first_name, c.last_name, c.adress, o.id_orders, o.status_order, o.date_order
from customer c
left outer join orders o on c.id_customer = o.id_customer
where c.adress like 'București%';

--b.
--Să se afișeze numărul total de animale al fiecărei specii

select species, count(*) as total_animals
from pet
group by species;

--Să se afișeze prețul mediu al produselor din fiecare categorie

select category, avg(price) as average_price
from product
group by category;

--Să se afișeze suma salariilor angajațiilor,salariul maxim și salariul minim

select sum(salary) as sum_salary, max(salary) as max_salary, min(salary) as min_salary
from employee;

--Să se afișeze animalele care s-au vândut,numărul lor cât și suma totală

select p.species, count(od.purchase_quantity) as total_sold, sum(subtotal) as total_value
from pet p
inner join order_details od on p.id_pet = od.id_pet
group by p.species;

--Să se afișeze produsele care s-au vândut,numărul lor cât și suma totală

select p.name, sum(od.purchase_quantity) as total_sold, sum(subtotal) as total_value
from product p
inner join order_details od on p.id_product = od.id_product
group by p.name;

--c.
--Interogări corelate

--Să se selecteze produsele care au recenzie de 3 stele

select p.name, p.category,re.rating
from product p
inner join review re on p.id_product=re.id_product
where exists (
    select *
    from review r
    where r.id_product = p.id_product and r.rating = 3
);

--Să se afișeze furnizorii care au livrat produse comandate de clientul cu id-ul 2

select s.name
from supplier s
where exists (
    select *
    from product p
    join order_details od on p.id_product = od.id_product
    join orders o on od.id_orders = o.id_orders
    where p.id_supplier = s.id_supplier and o.id_customer = 2 
);

--Să se afișeze produsele care au prețul mai mare decât cel puțin prețul unui câine și sunt furnizate de furnizorul 'Animalix'

select p.name, p.price
from product p
where p.price > any (
    select pe.price
    from pet pe
    where pe.species = 'Dog'
)
and exists (
    select *
    from supplier s
    where s.id_supplier = p.id_supplier
    and s.name = 'Animalix'
);



--Interogări necorelate

--Să se afișeze numele și prenumele clienților care au comandat produse din categoria 'Food'

select c.first_name, c.last_name
from customer c
where c.id_customer in (
    select o.id_customer
    from orders o
    join order_details od on o.id_orders = od.id_orders
    join product p on od.id_product = p.id_product
    where p.category = 'Food'
);

--Să se afișeze numele și prenumele clienților care au lăsat recenzii la animale cu prețul mai mare de 600

select c.first_name, c.last_name
from customer c
where exists (
    select *
    from review r
    where r.id_customer = c.id_customer
    and exists (
        select *
        from pet p
        where p.id_pet = r.id_pet
        and p.price > 600
    )
);

--Se afișeze id-ul comenzii și data comenzii pentru toate comenzile plasate de clienții care locuiesc în București și care conțin produse din categoria 'Food'.

select o.id_orders, o.date_order
from orders o
where o.id_customer = any (
    select c.id_customer
    from customer c
    where c.adress like 'București'
)
and o.id_orders in (
    select od.id_orders
    from order_details od
    join product p on od.id_product = p.id_product
    where p.category = 'Food'
);

--d.
--Utilizarea a cel puțin două funcții pe șiruri de caractere
select 
    concat(c.first_name, ' ', c.last_name) as full_name,
    upper(c.adress) as upper_adress,
    length(c.first_name) as first_name_length
from 
    customer c
where 
    c.first_name like 'A%';

--Utilizarea a cel puțin două funcții pe date calendaristice	
select
    o.id_orders, 
    o.date_order,
    current_date - o.date_order as days_since_order,
    extract(year from o.date_order) as order_year
from
    orders o
where
    o.date_order between '2024-01-01' and '2024-12-31';

--Utilizarea a cel puțin unei expresii case
select 
    p.name,
    p.price,
    case 
        when p.price > 100 then 'Expensive'
        when p.price between 50 and 100 then 'Moderate'
        else 'Cheap'
    end as price_category
from
    product p;


select 
    e.first_name,
    e.last_name,
    e.salary,
    case 
        when e.salary >= 4500 then 'high salary'
        when e.salary between 4300 and 4400 then 'medium salary'
        else 'low salary'
    end as salary_type,
    case 
        when extract(month from e.date_of_birth) = 3 then 'march'
        when extract(month from e.date_of_birth) = 4 then 'april'
        else 'unknown'
    end as birth_month
from 
    employee e;


