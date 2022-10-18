-----------------------Ejercicio 1: firstToEnd---------------------------
{------------------------------------------------------------------------
La función elimina el primer elemento de la lista y lo coloca al final.
Recibe una lista de clase de tipo Ord, el cual es una lista o un String 
y devuelve una lista o String.
------------------------------------------------------------------------}
firstToEnd :: (Ord a) => [a] -> [a]
firstToEnd xs = drop 1 xs ++ [head xs]

------------------------Ejercicio 2: minAndMax---------------------------
{------------------------------------------------------------------------
La función obtiene el numero menor y mayor en una lista y los coloca en 
una nueva lista.
Recibe una lista de clase de tipo Ord y devuelve una lista de clase de
tipo Ord. 
------------------------------------------------------------------------}
minAndMax :: (Ord a) => [a] -> [a]
minAndMax xs = minimum xs : [maximum xs]

---------------------Ejercicio 3: minorsFirstElement---------------------
{------------------------------------------------------------------------
La función obtiene una lista con los numeros menores al primer elemento
sin contar al primero.
Recibe una lista de clase de tipo Integral y devuelve una lista del mis-
mo clase de tipo con los elementos menores al primero.
------------------------------------------------------------------------}
minorsFirstElement :: (Integral a) => [a] -> [a]
minorsFirstElement xs = filter (head xs >) (drop 1 xs) 

-----------------Ejercicio 4: greaterOrEqualFirstElement-----------------
{------------------------------------------------------------------------
La función realiza algo similar a la función anterior, ya que obtiene 
una lista pero de los elementos mayores al primer elemento, sin contar 
al primer elemento.
Recibe una lista de clase de tipo Integral y devuelve una lista del mis-
mo clase de tipo con elementos mayores al primero, sin contarlo. 
------------------------------------------------------------------------}
greaterOrEqualFirstElement :: (Integral a) => [a] -> [a]
greaterOrEqualFirstElement xs = filter (head xs <=) (drop 1 xs) 

---------------Ejercicio 5: minorsToSumFirstAndSecondElem----------------
{------------------------------------------------------------------------
La función realiza una lista donde sus elementos son menores a la suma 
de los dos primeros elementos de la lista que recibe el método. 
Recibe una lista de clase de tipo Integral y se obtiene otra lista con
el mismo clase de tipo.
------------------------------------------------------------------------}
minorsToSumFirstAndSecondElement :: (Integral a) => [a] -> [a]
minorsToSumFirstAndSecondElement [] = []
minorsToSumFirstAndSecondElement [x] = error "Solo hay un elemento"
minorsToSumFirstAndSecondElement xs = filter ((head xs + (xs !! 1)) >) (drop 2 xs)

---------------------Ejercicio 6: listSumDuplaToList---------------------
{------------------------------------------------------------------------
Esta función suma el contenido de las duplas de una lista.
Recibe una lista de clase de tipo Integral que contiene duplas, y se 
obtiene una llsta de clase de tipo Integral, la cual contiene los 
resultados de las sumas.
En este caso se uso la función uncurry la cual aplica la suma al primer
elemento de la lista, el cual lo manera como cartesiano. 
------------------------------------------------------------------------}
listSumDuplaToList :: (Integral a) => [(a,a)] -> [a]
listSumDuplaToList [] = []
listSumDuplaToList xs = uncurry (+) (head xs) : listSumDuplaToList(drop 1 xs)

-------------------Ejercicio 7: listMultTripletaToList-------------------
{------------------------------------------------------------------------
Esta función suma las el contenido de las tripletas de una lista.
Recibe una lista de tripletas de clase de tipo Integral, y devuelve una
lista de clase de tipo Integral con los valores resultantes de cada 
tripleta de la lista.
------------------------------------------------------------------------}
listMulTripletaToList :: (Integral a) => [(a,a,a)] -> [a]
listMulTripletaToList [] = []
listMulTripletaToList xs = [x*y*z | (x,y,z) <- xs]

-----------------------Ejercicio 8: changeFstToSnd-----------------------
{------------------------------------------------------------------------
Esta función cambia de posición de los valores dentro de las duplas que
se contiene en una lista.
Recibe un dato de clase de tipo Integral la cual es la lista que 
contiene las duplas y se obtiene una lista de tuplas de clase de tipo
Integral, las cuales contienen los valores en su posición opuesta
------------------------------------------------------------------------}
changeFstToSnd :: (Integral a) => [(a,a)] -> [(a,a)]
changeFstToSnd [] = []
changeFstToSnd xs = (snd (head xs),fst (head xs)) : changeFstToSnd (tail xs)

-------------------------Ejercicio 9: sumVectors-------------------------
{------------------------------------------------------------------------
Esta función realiza el calculo del vector resultante de la suma de dos
vectores diferentes, los cuales son duplas dentro de una lista. 
Recibe un dato de clase de tipo Integral, el cual es la lista que
contiene los vectores a sumar y devuelve una dupla de clase de tipo 
Integral con los valores del vector resultante.
------------------------------------------------------------------------}
sumVectors :: (Integral a) => [(a,a)] -> (a,a)
sumVectors [x] = x
sumVectors xs = (fst (head xs) + fst (sumVectors (tail xs)),snd (head xs) + snd (sumVectors (tail xs)))

-------------------------Ejercicio 10: dividers--------------------------
{------------------------------------------------------------------------
Esta función obtiene los divisores de un número.
Recibe un dato de clase de tipo Integral, el cual es el número al cual 
se le buscaran sus divisores y devuelve una lista de clase de tipo
Integral, la cual contiene los divisores del número que recibe 
------------------------------------------------------------------------}
dividers :: (Integral a) => a -> [a]
dividers n = [x | x <- [1..n], mod n x == 0]

------------------------Ejercicio 11: primeNumbers-----------------------
{------------------------------------------------------------------------
Esta función obtiene los numeros primos del 1 hasta un número que se
defina.
Recibe como un dato de clase de tipo Integral, el cual es el número
límite y devuelve una lista de clase de tipo Integral que contiene los 
diferentes números primos
------------------------------------------------------------------------}
primeNumbers :: (Integral a) => a -> [a]
primeNumbers n = [x | x <- [2..n], dividers x == [1,x]]

--------------------Ejercicio 12: infinitePrimeNumbers-------------------
{------------------------------------------------------------------------
Esta función es similar a la anterior, solo que esta obtiene un número 
infinito de números primos
No recibe ningun dato, y devuelve una lista con los números primos de 
clase de tipo Integral que se generen. 
------------------------------------------------------------------------}
infinitePrimeNumbers :: (Integral a) => [a]
infinitePrimeNumbers = [x | x <- [2..], dividers x == [1,x]]
