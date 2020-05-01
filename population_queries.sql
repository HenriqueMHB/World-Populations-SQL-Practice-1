-- This is the first query:

SELECT DISTINCT year from population_years;

-- Populations of Gabon:
select country, population, year
from population_years
where country = 'Gabon'
order by population DESC;

-- Smallest 2005 countries by population:

select country as '10 lowest population countries in 2005', population
from population_years
where year = 2005
order by population
limit 10;

-- Countries with >100M population in 2010
select country as 'Countries with a population of over 100 million in the year 2010', population
from population_years
where population > 100 
and year = 2010
order by population desc;

-- Countries containing "islands"
select distinct country 
as 'Countries with the word "Island" in their name'
from population_years
where country like '%islands%';

-- Difference in population in Indonesia:
select year, population
FROM population_years
WHERE country = 'Indonesia'
AND year = 2000
OR country = 'Indonesia'
AND year = 2010;
