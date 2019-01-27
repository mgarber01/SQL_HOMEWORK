
/* 4A */
select last_name, Count(last_name)
from actor
group by last_name;


/* 4B */
select  last_name, count(last_name)
from actor 
group by last_name
having count(last_name)>= 2;



/* 4C */
update actor
set first_name = 'HARPO'
where last_name = 'WILLIAMS' and first_name = 'GROUCHO';


/* 4D */
update actor
set first_name = 'GROUCHO'
where last_name = 'WILLIAMS' and first_name = 'HARPO';

/* 5A */
Show Create Table address;


/* 6A */
select first_name, last_name,address
 from staff as s inner join
 address as a on a.address_id = s.address_id;
 
 
 
/* 6B*/ 
 select last_name, first_name, sum(amount),p.staff_id
 from staff as s inner join
 payment as p on s.staff_id = p.staff_id
 Where payment_date between '2005-08-01' and '2005-09-01'
 group by p.staff_id;
 
 
 /* 6C */
 select title,count(actor_id)
 from film as f inner join 
 film_actor as fa on f.film_id = fa.film_id
 group by title;
 
 
 /* 6D */
 select title,count(f.film_id) 
 from inventory as i inner join
 film as f on i.film_id = f.film_id
 where title = 'Hunchback Impossible'
 group by title;
 
 
/* 6E */ 
 select last_name,first_name,sum(amount), p.customer_id
 from customer as c inner join
payment as p on c.customer_id = p.customer_id
group by p.customer_id
order by last_name;

 

