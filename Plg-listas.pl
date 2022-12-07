/*------------------- 1. Pertecene --------------------*/
/*
    Este predicado verifica que un elemento se encuentre 
    dentro de la lista dada.
    Se tiene como caso base que, X este en el primer 
    elemento de la lista, sin tener en cuenta los
    demás elementos.
    Para su ejecución, se necesita el elemento a 
    encontrar y la lista donde se buscará.
*/
pertenece(X,[X|_]).
pertenece(X,[_|XS]):- pertenece(X,XS).

/*---------------------- 2. Size ----------------------*/
/*
    Este predicado realiza la obtención del tamaño
    (longitud) de una lista. Para esto, si tiene
    como caso base que, cuando haya un solo elemento
    en la lista, R sea igual a 1.
    Para su ejecución, se necesita la lista de 
    elementos y una variable, la cual almacenara el 
    tamaño.
*/
size([X],1).
size([X|XS],R) :- size(XS,Count), R is 1 + Count.

/*----------------- 3. Concatenación ------------------*/
/*
    Este predicado realiza la unión o concatenación
    de dos listas. Se tiene como caso base que, al
    tener la lista original de elementos vacia, 
    regrese la lista concatenada.
    Para su ejecución, se necesita las dos listas 
    a concatenar, y una variable donde almacenará
    la lista resultante.
*/
concatenar([],L,L).
concatenar([X|XS],L,[X|R]) :- concatenar(XS,L,R).

/*-------------------- 4. Eliminar --------------------*/
/*
    Este predicado realiza la eliminación de un
    elemento que se encuentre dentro de la lista.
    Para esto, se tiene como casos base que, cuando
    la lista que se pase sea vacía y sin tener en 
    cuenta el elemento a eliminar, se regresa una 
    lista vacía. El otro es que, cuando haya un solo
    elemento en la lista y sea el que se quiera eliminar,
    se regresa la lista vacía.
    Para su ejecución, se necesita el elemento a eliminar,
    la lista donde va a eliminar dicho elemento, y una 
    variable donde almacenara la lista resultante.
*/
eliminar(_,[],[]).
eliminar(E,[E],[]).
eliminar(E,[X|XS],Res) :- E =:= X, eliminar(E,XS,Res).
eliminar(E,[X|XS],[X|Res]) :- E =\= X, eliminar(E,XS,Res).

/*--------- 5. Agregar un elemento a la lista ---------*/
/*
    Este predicado agrega un elemento a una lista.
    Se tiene como caso base que, al tener el elemento
    y la lista, se regrese la lista con el nuevo
    elemento agregado.
    Para su ejecución, se necesita el elemento
    a agregar y una lista.
*/
agregar(Elem,R1,[Elem|R1]).

/*---------------- 6. Pares e impares -----------------*/
/*
    Este predicado genera dos listas, separando los 
    numero pares e impares.
    Para esto, se tiene como caso base que, al tener 
    los arreglos vacíos, se regresa un arreglo vacío.
    Para su ejecución, es necesario ingresa la lista
    de elementos a separar, y devolverá dos listas
    con los elementos pares e impares.
*/
separar([],[],[]).
separar([X|Tail],[X|R1],R2) :- X mod 2 =:= 0, separar(Tail,R1,R2).
separar([X|Tail],R1,[X|R2]) :- X mod 2 =\= 0, separar(Tail,R1,R2).

/*------------------- 7. Ascendente -------------------*/
/*
    Este predicado verifica si los elementos dentro 
    de una lista están ordenados del menor al mayor.
    Se tiene como caso base que, al tener dos
    elementos y una lista vacía, se compare
    esos dos elementos si el primero es menor que
    el segundo, regresando un valor booleano.
    Para su ejecución, es necesario que se ingrese
    la lista que se desea verificar si tiene un 
    orden ascendente.
*/
ascendente([X1,X2|[]]) :- X1 < X2.
ascendente([X1,X2|Tail]) :- X1 < X2, ascendente([X2|Tail]).

/*------------------ 8. Descendente -------------------*/
/*
    Este predicado verifica si los elementos dentro 
    de una lista están ordenados del mayor al menor.
    Se tiene como caso base que, al tener dos
    elementos y una lista vacía, se compare
    esos dos elementos si el primero es mayor que
    el segundo, regresando un valor booleano.
    Para su ejecución, es necesario que se ingrese
    la lista que se desea verificar si tiene un 
    orden descendente.
*/
descendente([X1,X2|[]]) :- X1 > X2.
descendente([X1,X2|Tail]) :- X1 > X2, descendente([X2|Tail]).

/*-------------------- 9. Aplanar ---------------------*/
/*
    Este predicado permite generar una lista de un
    único nivel, la cual es resultado de una lista
    que contiene muchas listas anidadas.
    Para esto, se tiene como caso base que, al 
    tener una lista vacía, se regrese una lista 
    vacía.
    Para su ejecución, es necesario ingresar en la
    consulta una lista que se desee aplanar y una
    variable donde se almacenará la nueva lista
    aplanada.
*/
aplanar([],[]).
aplanar([X|R],[X|P]) :- atomic(X), aplanar(R,P).
aplanar([X|R],P) :- not(atomic(X)), aplanar(X,P_X), aplanar(R,P_R), concatenar(P_X,P_R,P).

/*---------------- 10. Menor que Head -----------------*/
/*
    Este predicado genera una lista de elementos 
    que sean menores al primer elemento de esta (HEAD).
    Para esto, se tiene como caso base que, al tener
    una lista vacía, se regrese una lista vacía.
    también se tiene que, al tener una lista con un
    solo elemento, sin importar cual sea, se regrese
    una lista vacía.
    Para su ejecución, es necesario ingresar una lista
    y la variable donde se almacenará la nueva lista
    con los elementos.
*/
menor([],[]).
menor([_],[]).
menor([X1,X2|Tail],[X2|L]) :- X1 > X2, menor([X1|Tail],L).
menor([X1,X2|Tail],L) :- X1 < X2, menor([X1|Tail],L).

/*---------------- 11. Mayor que Head -----------------*/
/*
    Este predicado genera una lista de elementos 
    que sean mayores al primer elemento de esta (HEAD).
    Para esto, se tiene como caso base que, al tener
    una lista vacía, se regrese una lista vacía.
    también se tiene que, al tener una lista con un
    solo elemento, sin importar cual sea, se regrese
    una lista vacía.
    Para su ejecución, es necesario ingresar una lista
    y la variable donde se almacenará la nueva lista
    con los elementos.
*/
mayor([_|[]],[]).
mayor([A1,A2|B],[A2|L]) :- A1 < A2, mayor([A1|B],L).
mayor([A1,A2|B],L) :- A1 >= A2, mayor([A1|B],L).

/*------------------- 12. Invertir --------------------*/
/*
    Este predicado genera una lista con los
    elementos ordenados de manera invertida a la
    lista original.
    Para esto, se tiene como caso base que, al
    tener una lista vacía, se regrese una lista
    vacía.
    Para su ejecución, se tiene que ingresar
    la lista que se desea invertir, y una 
    variable donde se almacenará la nueva
    lista.
*/
invertir([],[]).
invertir([X|XS],L) :- invertir(XS,Z), concatenar(Z,[X],L).
