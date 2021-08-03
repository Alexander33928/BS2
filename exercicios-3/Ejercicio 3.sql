use world;
select count(Name) from country; /*1*/

select Continent, count(Name)/*2*/
from country group by Continent; 

select Continent, count(Name)/*3*/
from country GROUP BY Continent ORDER BY Continent ASC; 

select Continent, count(Name)  /*4*/
from country   
GROUP BY Continent
HAVING count(Name) > 50;

select SurfaceArea, Name from country  /*5*/
where SurfaceArea = (Select MAX(SurfaceArea) from country);


select SurfaceArea, Name from country  /*6*/
where SurfaceArea = (Select MIN(SurfaceArea) from country);

select AVG(SurfaceArea) from country; /*7*/

select AVG(SurfaceArea) from country  /*8*/
where Continent = 'Europe';

select Continent, AVG(SurfaceArea)/*9*/
from country group by Continent; 

select Continent, AVG(SurfaceArea)/*10*/
from country group by Continent order by AVG(SurfaceArea) DESC; 


select Continent, MAX(SurfaceArea)/*11*/
from country group by Continent;

select Continent, MAX(SurfaceArea)/*12*/
from country group by Continent order by MAX(SurfaceArea) desc;

SELECT             /*13*/
	country.Name,	
	count(countrylanguage.Language)
FROM country INNER JOIN countrylanguage 
ON countrylanguage.CountryCode = country.code
group by country.Name;

SELECT             /*14*/
	country.Name,	
	count(countrylanguage.Language) as 'countLanguages'
FROM country INNER JOIN countrylanguage 
ON countrylanguage.CountryCode = country.code
group by country.Name
Having count('countLanguage') > 10;

SELECT Name, capital from country;   /*15*/

Select Name, AVG(Population) from country  /*16*/
group by Name;

Select Name, AVG(Population) from country  /*17*/
group by Name order by AVG(Population) ASC ;

Select Name, AVG(Population) from country  /*18*/
group by Name
Having AVG(Population) > 70000 order by AVG(Population) ASC;

/*---------------------------------------------------------------------------------------------------------*/

use sakila;
select SUM(amount) from payment;  /*19*/

select AVG(amount) from payment;  /*20*/

SELECT             /*21*/
customer.customer_id,
customer.first_name,	
customer.last_name,
SUM(payment.amount)
FROM payment INNER JOIN customer 
ON payment.customer_id = customer.customer_id
group by customer.customer_id;

SELECT             /*22*/
customer.customer_id,
customer.first_name,	
customer.last_name,
SUM(payment.amount)
FROM payment INNER JOIN customer 
ON payment.customer_id = customer.customer_id
group by customer.customer_id order by customer.first_name,	customer.last_name;

SELECT             /*23 */
customer.customer_id,
customer.first_name,	
customer.last_name,
SUM(payment.amount)
FROM payment INNER JOIN customer 
ON payment.customer_id = customer.customer_id
group by customer.customer_id 
Having SUM(payment.amount) > 100
order by payment.amount;

select    /*24*/
staff.staff_id,
staff.first_name, 
staff.last_name,
count(payment.amount)
FROM staff INNER JOIN payment
ON staff.staff_id = payment.staff_id
group by staff.staff_id;

select    /*25*/
staff.staff_id,
staff.first_name, 
staff.last_name,
count(payment.amount)
FROM staff INNER JOIN payment
ON staff.staff_id = payment.staff_id WHERE 
payment.payment_date between '2005-05-25' AND '2005-08-23'
group by staff.staff_id;

select  /*26*/
 actor.actor_id,
 actor.first_name,
 actor.last_name,
 Count(film_actor.actor_id)
 FROM actor INNER JOIN film_actor
 ON actor.actor_id = film_actor.actor_id
 group by actor.actor_id;
 
 select  /*27*/
 actor.actor_id,
 actor.first_name,
 actor.last_name,
 Count(film_actor.actor_id)
 FROM actor INNER JOIN film_actor
 ON actor.actor_id = film_actor.actor_id
 group by actor.actor_id order by Count(actor.actor_id) DESC;

select  /*28*/
 actor.actor_id,
 actor.first_name,
 actor.last_name,
 Count(film_actor.actor_id)
 FROM actor INNER JOIN film_actor
 ON actor.actor_id = film_actor.actor_id
 where actor.actor_id = 100;
 
 select  /*29*/
  category.name,
  count(film_category.category_id)
  FROM category INNER JOIN film_category
  ON category.category_id = film_category.category_id
  group by category.name;

 
 


