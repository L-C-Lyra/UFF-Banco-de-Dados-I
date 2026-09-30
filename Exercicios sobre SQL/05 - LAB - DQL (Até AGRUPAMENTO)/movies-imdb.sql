-- SELECT g.name, COUNT(mg.movie_id) AS Quant FROM genres AS g JOIN movies_genres AS mg ON g.genre_id = mg.genre_id GROUP BY g.genre_id, g.name;

-- SELECT name, year FROM movies WHERE year = (SELECT MIN(year) FROM movies);

-- SELECT d.first_name, d.last_name FROM directors AS d JOIN movies_directors AS md ON d.director_id = md.director_id JOIN movies AS m ON md.movie_id = m.movie_id WHERE m.rank = (SELECT MAX(rank) FROM movies);

-- SELECT a.first_name, a.last_name, COUNT(r.role) as Quant FROM actors AS a JOIN roles AS r ON a.actor_id = r.actor_id GROUP BY a.actor_id, a.first_name, a.last_name HAVING COUNT(r.role) > 2;

-- SELECT m.name FROM movies AS m LEFT OUTER JOIN roles AS r ON m.movie_id = r.movie_id WHERE r.movie_id IS NULL;

-- SELECT year, AVG(rank) AS Media FROM movies GROUP BY year ORDER BY Media DESC;

-- SELECT SUM(rank) AS Soma FROM movies WHERE year = 1994;

-- SELECT d.first_name, d.last_name, g.name AS Genero, dg.prob FROM directors AS d JOIN directors_genres AS dg ON d.director_id = dg.director_id JOIN genres AS g ON dg.genre_id = g.genre_id WHERE dg.prob = (SELECT MAX(dgs.prob) FROM directors_genres AS dgs WHERE dgs.director_id = dg.director_id);

-- SELECT gender, COUNT(*) As Quant FROM actors GROUP BY gender;

-- SELECT first_name, COUNT(*) As Quant FROM actors GROUP BY first_name HAVING COUNT(*) = (SELECT MAX(Qnt) FROM (SELECT COUNT(*) AS Qnt FROM actors GROUP BY first_name));
