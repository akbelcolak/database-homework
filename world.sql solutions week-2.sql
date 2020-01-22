use world;
-- select * from country where name = 'india';
select name, population from city where countrycode = 'IND' order by population desc limit 1;
-- select max(population) from city where countrycode = 'IND'; SHOWS ONLY POPULATION
-- select name, max(population) from city where CountryCode = 'IND'; THIS DOES NOT WORK
-- select name, max(population) from city where CountryCode = 'IND' group by name; THIS SHOWS ALL THE CITIES

-- second statement:
-- select name, population from country where population =(select population from city where population >= 3000000);
-- select city.population, country.name from country inner join city on country.code = city.CountryCode; 
-- select country.name from country inner join city on country.code = city.CountryCode where city.population >= 3000000;
select count(country.name) as CrowdedCities, country.name
from country inner join city
on country.code = city.CountryCode
where city.population >= 3000000
group by country.name
having CrowdedCities > 3;

select c.name, count(l.Language)
from country as c inner join countrylanguage as l
on c.code = l.CountryCode
where IsOfficial = 'T'
group by c.name; -- FIRST JOIN THAN ADD THE COUNT FUNC.

select c.name, count(l.Language) as officialLanguage
from country as c inner join countrylanguage as l
on c.code = l.CountryCode
where IsOfficial = 'T'
group by c.name
having officialLanguage = '1';

select name, capital
from country
where capital is null;

-- select MIN(population) from country;
-- select MIN(population) as least_pop_country, population from country group by population;
select name, population
from country
where population = 0;

select c.name, l.language
from country c join countrylanguage l
on c.code = l.countrycode
where region = 'Eastern Africa';
