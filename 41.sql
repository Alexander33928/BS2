SELECT * FROM sakila.country pais
    LEFT JOIN sakila.countrylanguage
    ON sakila.countrylanguage.countrycode = pais.code
    WHERE sakila.countrylanguage.language line 'Spanish';