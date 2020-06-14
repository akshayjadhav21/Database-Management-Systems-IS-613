##How many passengers have been survived from 'Business' Class? (select on Passenger, TICKET & SEAT) ##
select count(*) 
from PASSENGER p 
join TICKET t 
on p.p_id = t.p_id
join SEAT s 
on s.seat_number = t.seat_number 
where s.class = 'Business' AND p.survived = 'YES';


##How many passengers have been died from 'Economy' Class? (select on Passenger, TICKET & SEAT)##
select count(*) 
from PASSENGER p 
join TICKET t 
on p.p_id = t.p_id
join SEAT s 
on s.seat_number = t.seat_number 
where s.class = 'Economy' AND p.survived = 'NO';

## Find out the Passenger names, age, FEMALE gender who have died in the business class in Airplane Crash ####

select first_name, last_name, age, gender 
from PASSENGER p
join TICKET t
on p.p_id = t.p_id
join SEAT s 
on s.seat_number = t.seat_number
where p.survived = 'NO'
AND p.gender = 'FEMALE' AND s.class = 'Business';

## How many passengers have been survived who were having children with them? (select on companion & Passenger) ##

select count(*) 
from PASSENGER p
join COMPANION c 
on p.p_id = c.p_id 
where c.companion_type = 'Children' AND 
p.survived = 'YES';


## How many passengers have been died who were having children with them in the Business class? (select on companion & Passenger) ##
select count(*) 
from PASSENGER p
join COMPANION c 
on p.p_id = c.p_id 
join TICKET t 
on t.p_id = p.p_id
join SEAT s 
on s.seat_number = t.seat_number
where c.companion_type = 'Children' AND 
p.survived = 'NO' AND s.class = 'Business';


## Update the companion type in Companion table for particular passenger in the airplane crash. (update on Companion)##

update COMPANION 
set companion_type = 'Pets'
where p_id in
(select p_id 
from PASSENGER 
where first_name = 'Gretchen');

/** Make the changes for one PASSENGER in Passenger table who has been confirmed as dead, 
but the confirmation got wrong and we want to change it to survived. (Update on Passenger – Survival – NO to YES)**/

update PASSENGER
set survived = 'YES' 
where first_name = 'Walter';


/* Insert a new companion_type and special_seat to COMPANION table for particular Passenger */

insert into COMPANION 
(p_id, companion_type, special_seat)
values (30,'Pets','YES');



## Delete some Passenger records who have survived and age is between 5 to 10 ####

delete from PASSENGER
where survived = 'YES'
AND age BETWEEN 1 and 5;


