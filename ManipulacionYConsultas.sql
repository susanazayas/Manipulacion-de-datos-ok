select * 
from movies_db.genres



/* Micro desafío - Paso 1 */


/* 1 Insertar un nuevo género en la tabla "genres" con los datos especificados */

insert into genres (name, ranking, active)
values ("Investigacion", 13, 1);

/* 2 Actualizar el registro "Investigación" por "Investigación Científica":*/

update genres
set name='Invesitagación Cinetífica'
where id=13;

/* 3 Para eliminar el registro con "name" igual a "Investigación Científica"sabiendo que su id = 13 */

delete from genres 
where id=13;

/* 4 Mostrar todos los registros de la tabla "movies"*/

select * from  movies;

/* 5 Mostrar el nombre, apellido y rating de todos los actore*/

SELECT first_name, last_name, rating
FROM actors;


/* 6 Mostrar el título de todas las series*/

SELECT title
FROM series;



/* Micro desafío - Paso 2 */





/* 1 Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7.5 */

SELECT first_name, last_name
FROM actors
WHERE rating > 7.5;

/* 2 Mostrar el título de las películas, el rating y los premios de las películas con un rating mayor a 7.5 y con más de dos premios */

SELECT title, rating, awards
FROM movies
WHERE rating > 7.5 AND awards  > 2;


/* 3 Mostrar el título de las películas y el rating ordenadas por rating en forma ascendente */

SELECT title, rating
FROM movies
ORDER BY rating ASC;






/* Micro desafío - Paso 3 */




/* 1 Mostrar los títulos de las primeras tres películas en la base de datos */

SELECT title 
FROM movies
LIMIT 3;

/* 2 Mostrar el top 5 de las películas con mayor rating */

SELECT title, rating
FROM movies
ORDER BY rating DESC
LIMIT 5;


/* 3 Mostrar las top 5 a 10 de las películas con mayor rating */

SELECT title, rating
FROM movies
ORDER BY rating DESC
LIMIT 5 OFFSET 5;

/* 4 Listar los primeros 10 actores (sería la página 1) */


SELECT first_name, last_name
FROM actors
LIMIT 10;


/* a) usar offset para traer la página 3 */

SELECT first_name, last_name
FROM actors
LIMIT 10 OFFSET 20;






/* Micro desafío - Paso 4 */



/* 1 Mostrar el título y rating de todas las películas cuyo título sea Harry Potter */

SELECT title, rating
FROM movies
WHERE title LIKE '%Harry Potter%';

/* 2 Mostrar  a todos los actores cuyos nombres empiecen con Sam */

SELECT first_name, last_name
FROM actors
WHERE first_name LIKE 'Sam%';



/* 3 Mostrar el título de las películas que salieron entre el 2004 y 2008*/


SELECT title
FROM movies
WHERE release_date BETWEEN '2004-01-01' AND '2008-12-31';






