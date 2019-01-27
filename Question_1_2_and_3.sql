
/* 1A */
Select firs_name, last_name
from actor;


/* 1B */
Select first_name, last_name, concat(first_name, ' ',last_name) as ActorName 
 From actor;
 
 /* 2A */
 Select   actor_id, first_name,last_name
 From actor
 Where first_name = 'Joe';
 
 /* 2B */
 Select * From actor
 Where last_name Like '%GEN%';
 
 /* 2C */
 Select * From actor
 Where last_name Like '%LI%'
 Order By last_name, first_name;
 

/* 2D */
 Select country_id, country
 From country 
 Where  country In ('Afghanistan', 'Bangledesh','China' );
 
 /* 3A */
 Alter Table actor
 Add description Blob(500);
 
 /* 3B */
 Alter Table actor
 Drop description
 
 
 
 