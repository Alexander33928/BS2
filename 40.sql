SELECT * FROM sakila.city cidade
    LEFT JOIN sakila.countrylanguage
    ON sakila.countrylanguage.countrycode = cidade.countrycode
    WHERE sakila.countrylanguage.language LIKE 'Dutch';