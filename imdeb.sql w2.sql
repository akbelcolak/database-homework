use imdb;

select min(age) as youngest, max(age) as oldest, gender
from actors
group by gender;

-- select floor(age/10)*10 as decate, fname from actors;
-- select floor(age/10)*10 as decate from actors group by decate;
-- select floor(age/10)*10 as decate, count(decate) from actors group by decate; DOES NOT WORK
select floor(age/10)*10 as decate, count(floor(age/10)*10) as quantity
from actors
group by decate
order by decate;

-- Alter table films add runtime time; IN EVERY STEP IT tries to ADD ANOTHER RUNTIME COLUMN

Alter table actors
modify age integer;

select concat(upper(fname),' ',upper(lname),' ','BIO: ',lower(biography)) as BIOs
from actors;

Alter table actors drop column biography;
