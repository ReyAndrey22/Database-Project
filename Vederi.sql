create view total_order_amount as
select o.id_orders,c.first_name,c.last_name,sum(od.subtotal) as total_amount
from  orders o
inner join customer c on o.id_customer = c.id_customer
inner join order_details od on o.id_orders = od.id_orders
group by o.id_orders, c.first_name, c.last_name;

create view pet_details as
select p.id_pet,p.species,p.breed,p.price,s.name as supplier_name,s.phone_number as supplier_contact
from pet p
inner join supplier s on p.id_supplier = s.id_supplier;

create view user_details as
select 
    u.id_users,
    u.username,
    u.email,
    case 
        when u.user_type = 'customer' then (select c.first_name || ' ' || c.last_name from customer c where c.id_users = u.id_users)
        when u.user_type = 'employee' then (select e.first_name || ' ' || e.last_name from employee e where e.id_users = u.id_users)
        when u.user_type = 'manager' then (select m.first_name || ' ' || m.last_name from manager m where m.id_users = u.id_users)
    end as full_name,
	u.user_type
from  users u;

create view v_pet_details as
select id_pet, species, breed, price
from pet;

update v_pet_details
set price = 850
where id_pet = 1;

create view v_pet_sum as
select species, avg(price) as avg_price
from pet;

update v_pet_sum
set avg_price = 500
where species = 'Dog';


