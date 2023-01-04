
-- Micro desafío - Paso 1:

select series.title, genres.name from series inner join genres on genre_id = genres.id;

select title, first_name, last_name from episodes inner join actor_episode on episode_id = episodes.id inner join actors on actor_id = actors.id;

-- Micro desafío - Paso 2:

select  distinct first_name, last_name from actors inner join actor_movie on actor_id = actors.id inner join movies on movie_id = movies.id where movies.title like "%La Guerra de las galaxias%";

-- Micro desafío - Paso 3:

select movies.title, COALESCE(genres.name, "No tiene género") as genres from movies left join genres on genre_id = genres.id;

-- Micro desafío - Paso 4:

select id, title, datediff(release_date, end_date) as duracion from series;

-- Micro desafío - Paso 5:

select first_name from actors where length(first_name) > 6

select count(*) from movies_db.episodes;

select series.title, count(seasons.id) as seasons from movies_db.series inner join seasons on serie_id = series.id group by series.title;

select genres.name, count(movies.id) as movies 
from movies_db.genres inner join movies on genre_id = genres.id group by genres.name having count(movies.id) >= 3;