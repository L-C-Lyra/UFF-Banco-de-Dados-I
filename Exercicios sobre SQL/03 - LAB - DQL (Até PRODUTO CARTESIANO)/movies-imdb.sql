-- SELECT name, year FROM movies WHERE year >= 1961 AND year <= 1970 ORDER BY year;

-- SELECT a.first_name, a.last_name, r.role FROM actors AS a, roles AS r WHERE a.actor_id = r.actor_id AND a.gender = 'F' ORDER BY a.first_name, a.last_name, r.role;

-- SELECT m.name, a.first_name, a.last_name, r.role FROM movies AS m, actors AS a, roles AS r WHERE m.movie_id = r.movie_id AND r.actor_id = a.actor_id AND m.year > 2000 ORDER BY m.name;

-- SELECT m.name AS titulo, g.name AS genero FROM movies AS m, genres AS g, movies_genres AS mg WHERE m.movie_id = mg.movie_id AND mg.genre_id = g.genre_id AND g.name IN ('Romance', 'Comedy');

-- SELECT m.name, m.rank, d.first_name, d.last_name FROM movies AS m, directors AS d, movies_directors AS md WHERE m.movie_id = md.movie_id AND md.director_id = d.director_id AND m.rank > 8 ORDER BY m.rank;

-- SELECT a.first_name, a.last_name, a.gender FROM actors AS a, roles AS r WHERE a.actor_id = r.actor_id AND r.role = 'Kid';

-- SELECT a1.first_name AS nomeator1, a2.first_name AS nomeator2, a1.last_name AS sobrenome FROM actors AS a1, actors AS a2 WHERE a1.last_name = a2.last_name AND a1.actor_id < a2.actor_id;

-- SELECT first_name, last_name FROM actors WHERE last_name LIKE 'M%';

-- SELECT DISTINCT m.name FROM movies AS m, roles AS r WHERE m.movie_id = r.movie_id AND r.role = 'Narrator';

-- SELECT a.last_name, r.role FROM actors AS a, roles AS r WHERE a.actor_id = r.actor_id AND r.role LIKE '%soldier%';

-- SELECT a.first_name, a.last_name, r.role FROM directors AS d, movies_directors AS md, roles AS r, actors AS a WHERE d.director_id = md.director_id AND md.movie_id = r.movie_id AND r.actor_id = a.actor_id AND d.last_name = 'Cameron';

-- SELECT a.first_name, a.last_name, r.role, m.name, m.year, d.first_name, d.last_name, dg.prob FROM actors AS a, roles AS r, movies AS m, genres AS g, movies_genres AS mg, directors AS d, directors_genres AS dg, movies_directors AS md WHERE a.actor_id = r.actor_id AND r.movie_id = m.movie_id AND m.movie_id = mg.movie_id AND mg.genre_id = g.genre_id AND m.movie_id = md.movie_id AND md.director_id = d.director_id AND d.director_id = dg.director_id AND dg.genre_id = g.genre_id AND g.name = 'Documentary' AND (r.role LIKE 'Himself%' OR r.role LIKE 'Herself%');