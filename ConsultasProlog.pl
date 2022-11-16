/*----------------- Hechos que se hicieron en clase -----------------*/
/* Ven peliculas */
ve_peliculas(roberto,suspenso).
ve_peliculas(jaanai,suspenso).
ve_peliculas(abimael,suspenso).
ve_peliculas(leonardo,romance).
ve_peliculas(miguel,terror).
/* Escuchan musica */
escucha_musica(abelino,reggae).
escucha_musica(jose,rock).
escucha_musica(izmucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).
/* Que les gusta comer mientras ven una pelicula */
consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).
/* Quien tiene cuenta netflix */
tiene_netflix(roberto,si).
tiene_netflix(jaanai,si).
tiene_netflix(abimael,si).
tiene_netflix(leonardo,no).
tiene_netflix(miguel,si).
/* Quien usa audifonos para ver una pelicula */
usa_audifonos(roberto,no).
usa_audifonos(jaanai,si).
usa_audifonos(abimael,no).
usa_audifonos(leonardo,si).
usa_audifonos(miguel,si).
/* Quien tiene cuenta Spotify */
tiene_spotify(abelino,no).
tiene_spotify(jose,si).
tiene_spotify(izmucaneth,si).
tiene_spotify(rolando,no).
tiene_spotify(maldonado,si).
/* Quien cuenta con tiempo libre */
tiempo_libre(roberto,no).
tiempo_libre(jaanai,no).
tiempo_libre(abimael,no).
tiempo_libre(leonardo,no).
tiempo_libre(miguel,no).
/* Quien tiene audifonos */
tiene_audifonos(abelino,no).
tiene_audifonos(jose,no).
tiene_audifonos(izmucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(maldonado,no).

/*vida_saludable(X) :- consume(X,ensalada).*/
/*-------------------------------- Consultas --------------------------------*/
/*------------------ 1. ¿Quienes prefieren ver peliculas? -------------------*/
/*
   En esta consulta se refiere a quienes prefieren ver peliculas, donde solo 
   se usa el hecho ver_peliculas para las reglas.
*/
prefieren_pelis(X,Y) :- ve_peliculas(X,Y).

/*------------------ 2. ¿Quienes prefieren escuchar música? ------------------*/
/*
   En esta consulta se refiere a quienes prefieren escuchar musica, donde so-
   lo se usa el hecho escucha_musica para las reglas.
*/
prefieren_musica(X,Y) :- escucha_musica(X,Y).

/*---------------- 3. Alguien que ve peliculas de suspenso, -----------------*/
/*-------------- disfruta verlas con palomitas, tiene Netflix --------------*/
/*---------------- y tiempo libre, tiene una tarde perfecta. ----------------*/
/*
   En esta consulta se refiere quienes tienen una tarde perfecta, para esto
   se se requiere que vean peliculas de suspenso, consuman palomitas mientras
   ven peliculas, cuenten con una cuenta netflix y ademas cuenten con tiempo 
   libre. Para esto se usa los hechos ve_peliculas, consume, tiene_netflix y
   tiempo_libre para las reglas.
*/
tarde_perfecta(X) :- ve_peliculas(X,suspenso), consume(X,palomitas), tiene_netflix(X,si), tiempo_libre(X,si).

/*---------------- 4.	Alguien que ve películas consumiendo ----------------*/
/*----------------- una ensalada, tiene una vida saludable. -----------------*/
/*
   En esta consulta se refiere a quienes tengan una vida saludable, para esto
   se requiere que vean peliculas y que consuman ensalada mientras ven una 
   pelicula. Para esto se usa los hechos ve_peliculas y consume(X, ensalada)
   para las reglas.
*/
vida_saludable(X) :- ve_peliculas(X,Y), consume(X,ensalada).

/*---------- 5. Alguien que escuche regional, tiene audifonos y la ----------*/
/*------------ aplicación de spotify, disfruta de camino a casa. ------------*/
/*
   En esta consulta se refiere a quienes disfrutan caminar a casa, para esto
   se requiere que escuchen musica regional, tengan audifonos y cuenten con 
   una cuenta de spotify. Para esto se requiere los hechos escucha_musica(X,
   regional), tiene_audifonos(X,si), y tiene_spotify(X,si) para las reglas.
*/
disfruta_caminoCasa(X) :- escucha_musica(X,regional), tiene_audifonos(X,si), tiene_spotify(X,si).

/*------------- 6. Alguien es feliz si ve peliculas consumiendo -------------*/
/*-------------------- maruchan, tiempo libre y netflix. --------------------*/
/*
   En esta consulta se refiere a quienes son felices, para esto se require 
   que vean peliculas, consuman maruchan mientras ven peliculas, cuente con
   tiempo libre y cuenten con una cuenta netflix. Para esto se usan los he-
   chos ve_peliculas(X,Y), consume(X,maruchan), tiempo_libre(X,si), tiene_
   netflix(X,si)
*/
es_feliz(X) :- ve_peliculas(X,Y), consume(X,maruchan), tiempo_libre(X,si), tiene_netflix(X,si).

/*------- 7. Solo pueden ser amigos quienes tienen los mismos gustos. -------*/
/*
   Esta consulta se refiere quienes son amigos, para esto tienen que coincidir
   en gustos, los cuales son lo que consumen al ver una pelicula y el genero 
   de peliculas que ven. Para esto se usan los hechos consume y ve_peliculas. 
*/
son_amigos(X,Y) :- 
consume(X,palomitas), consume(Y,palomitas), ve_peliculas(X,suspenso), ve_peliculas(Y,suspenso); 
consume(X,ensalada), consume(Y,ensalada), ve_peliculas(X,suspenso), ve_peliculas(Y,suspenso); 
consume(X,maruchan), consume(Y,maruchan), ve_peliculas(X,suspenso), ve_peliculas(Y,suspenso); 
consume(X,palomitas), consume(Y,palomitas), ve_peliculas(X,terror), ve_peliculas(Y,terror); 
consume(X,ensalada), consume(Y,ensalada), ve_peliculas(X,terror), ve_peliculas(Y,terror); 
consume(X,maruchan), consume(Y,maruchan), ve_peliculas(X,terror), ve_peliculas(Y,terror); 
consume(x,palomitas), consume(Y,palomitas), ve_peliculas(X,romance), ve_peliculas(Y,romance); 
consume(x,ensalada), consume(Y,ensalada), ve_peliculas(X,romance), ve_peliculas(Y,romance); 
consume(x,maruchan), consume(Y,maruchan), ve_peliculas(X,romance), ve_peliculas(Y,romance).