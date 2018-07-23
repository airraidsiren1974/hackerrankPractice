---Populations
---Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

---Asia
select sum(city.population)
    from city city join country country on city.countrycode = country.code
    where country.continent = 'Asia';

---Africa
select sum(city.population)
    from city city join country country on city.countrycode = country.code
    where country.continent = 'Africa';

---Africa City Names with country
select a.name, b.name
    from city a left join country b on a.countrycode = b.code
    where b.continent = 'Africa';

---Africa City Names
select a.name
    from city a join country b on a.countrycode = b.code
    where b.continent = 'Africa';