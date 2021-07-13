SELECT pais.name, pais.continent, pais.region, pais.population, cidade.name, cidade.district, cidade.population, lingua.language
    FROM sakila.country pais, sakila.city cidade, sakila.countrylanguage lingua
    WHERE pais.continent LIKE 'Europe';
