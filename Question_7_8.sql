
/* 7A*/
select title 
from film f
where title like 'Q%' or title like 'K%' and language_id in
	(Select language_id
		From language l 
        where l.name = 'English'); 







/* 7B */
select a.first_name, a.last_name
from actor a
where actor_id in 
	(Select fa.actor_id
		from film_actor fa
        where film_id in 
        (Select film_id
			from film f
            where f.title = 'Alone Trip'));
            

/* 7C */
Select c.first_name, c.last_name, c.email, co.country
from customer c join 
address a on c.address_id = a.address_id join
city ci on ci.city_id = a.city_id join
 country co on ci.country_id = co.country_id
 where co.country = 'Canada';
 
 
/* 7D */ 
 Select f.title, c.name
 From film f join 
 film_category fc on f.film_id = fc.film_id join
 category c on fc.category_id = c.category_id
 where c.name = 'Family' ;
 

/* 7E */
 Select f.title,count(r.rental_id)from 
 rental r join 
 inventory i  on r.inventory_id = i.inventory_id join 
 film f on i.film_id = f.film_id
 Group by f.title
 order by count(r.rental_id) DESC;
 

/* 7G */
 select s.store_id, ci.city, co.country
 from store s join 
 address a on s.address_id = a.address_id join
 city ci on ci.city_id = a.city_id join
 country co on ci.country_id = co.country_id;
 
 
 /* 7F */ 
 Select  s.store_id, sum(p.amount)
 from staff s join 
 payment p on s.staff_id = p.staff_id
 group by s.store_id;
 


 /* 7H */
 select  cat.name, sum(p.amount)
 from film_category fc join
 category cat on fc.category_id = cat.category_id inner join
 inventory i on i.film_id = fc.film_id inner join
 rental r on i.inventory_id = r.inventory_id inner join
 payment p on p.customer_id = r.customer_id
 Group by cat.name
 order by sum(p.amount) DESC
 Limit 5;
 
 
/* 8A */
create view v_top5_genres As
 select  cat.name, sum(p.amount)
 from film_category fc join
 category cat on fc.category_id = cat.category_id inner join
 inventory i on i.film_id = fc.film_id inner join
 rental r on i.inventory_id = r.inventory_id inner join
 payment p on p.customer_id = r.customer_id
 Group by cat.name
 order by sum(p.amount) DESC
 Limit 5;
 
 
 /* 8B */
 select * from sakila.v_top5_genres;


/* 8C */
Drop view v_top5_genres;

 
 
 
 
 
 