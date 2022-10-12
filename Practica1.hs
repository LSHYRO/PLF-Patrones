import Data.List (elemIndex)
--Ejercicio 1: average3Numbers
{-
  Esta función realiza el cálculo del promedio de tres números dados.
  Recibe tres datos de clase Floating, los cuales son los números que se quieren
  promediar, y se obtiene un dato de clase Floating, el cuál es el promedio
-}
average3Numbers :: (Floating a) => a -> a -> a -> a
average3Numbers x y z = (x + y + z) / 3

--Ejercicio 2: isLastDigit3
{-
  Esta función determina si el ultimo dígito del número dado es igual a 3.
  Recibe un dato de clase Integral, el cuál que es el número, y se obtiene
  un dato de Bool, que en dado caso de ser True, significa que el ultimo
  dígito es 3, si en dado caso no es así, se obtiene un False.
-}
isLastDigit3 :: (Integral a) => a -> Bool
isLastDigit3 x = rem x 10 == 3

--Ejercicio 3: has3Digits
{-
  Esta función indica si el número dado contiene tres dígitos.
  Recibe un dato de clase Integral, el cuál es el número y se 
  obtiene un dato de tipo Bool, que indica si es de tres dígitos
  o no.
-}
has3Digits :: (Integral a) => a -> Bool
has3Digits x = x > 99 && x < 1000;

--Ejercicio 4: isNegative 
{-
  Esta función indica si el número dado es negativo.
  Recibe un dato de clase Integral, el cuál es el numero, y
  se obtiene un Bool que indica si es o no negativo.
-}
isNegative :: (Integral a) => a -> Bool
isNegative x = x < 0

--Ejercicio 5: sum2Digits
{-
  Esta función realiza la suma de los dígitos de un numero de dos
  dígitos.
  Recibe un dato de clase Integral, el cuál es el número, y se obtiene la suma
  de los digitos en un dato de tipo Integral. Sí en dado caso no es un número
  de dos dígitos, se obtiene el error "Necesito un numero de dos digitos"
-}
sum2Digits :: (Integral a) => a -> a
sum2Digits x
    | x < 10 || x > 99 = error "El numero no tiene 2 digitos"
    |otherwise = div x 10 + (x - (div x 10 * 10))

--Ejercicio 6: even2Digits
{-
  Esta función determina si los dígitos de un número de dos dígitos son pares.
  Recibe un dato de tipo Int, el cuál es el número y se obtiene un dato de tipo
  Bool, que indica si los dígitos son pares o no. Sí en dado caso el número no
  es de dos dígitos, se lanza un mensaje de error con el mensaje "El numero no
  es de dos digitos".
-}
even2Digit:: Int -> Bool
even2Digit x
    | x > 9 && x < 100 = even (mod x 10) && even(mod (div x 10) 10)
    | otherwise = error "El numero no es de dos digitos"

--Ejercicio 7: isPrimeNumber
{-
  Esta función comprueba si el número ingresado se encuentra entre los primeros
  8 números primos, esto a través de la comparación con los primeros 8 números primos.
  Recibe un número de tipo Int, que es el número ingresado, y se obtiene un
  dato de tipo Bool que indica si este es primo o no.
-}
isPrimeNumber :: Int -> Bool
isPrimeNumber x 
    |x == 2 || x == 3|| x == 5 || x == 7 || x == 11 || x == 13|| x == 17 || x == 19 = True
    |otherwise = False

--Ejercicio 8: isEvenAndPrimeNumber
{-
  Esta función es similar a la anterior, ya que determina si el número ingresado 
  es primo, sin embargo tambien comprueba si es par. Por lo anterior, se ocupa la
  función isPrimeNumber
  Recibe un número de tipo Int y regresa un dato de tipo Bool que indica si esta
  entre los primeros 8 números primos y es par o no.
-}
isEvenAndPrimeNumber :: Int -> Bool
isEvenAndPrimeNumber x
    | isPrimeNumber x && even x = True
    | otherwise = False

--Ejercicio 9: isMultiple
{-
  Esta función determina si los dos números ingresados son multiplos.
  Recibe dos números de clase Integral, los cuales son los dos números a comparar
  y regresa un dato de tipo Bool que indica si son multiplos.
-}
isMultiple :: (Integral a) => a -> a -> Bool
isMultiple x y
    |mod x y == 0 = True
    |otherwise = False

--Ejercicio 10: isEqual2Digits
{-
  Esta función determina sí los dígitos del número ingresado de 
  dos dígitos son iguales.
  Recibe un número de dos dígitos de clase Integral, y se obtiene
  un dato de tipo Bool, que indica si los digitos son pares.
-}
isEqual2Digits :: (Integral a) => a -> Bool
isEqual2Digits x
    |(x > 9 && x < 100) && (div x 10 == mod x 10) = True
    |otherwise = False

--Ejercicio 11: higher
{-
  Esta función determina el número mayor de tres números dados.
  Recibe tres datos de clase Integral, los cuales son los tres numeros
  y se obtiene un número de clase Integral, el cual es el mayor.
-}
higher :: (Integral a) => a -> a -> a -> a
higher x y z = max x (max y z)

--Ejercicio 12: isEvenSum2Number
{-
  Esta función determina si la suma de dos números dados es par
  Recibe dos datos de clase Integral, los cuales son los números a sumar
  y se obtiene un dato de tipo Bool, el cuál indica si la suma es par
-}
isEvenSum2Number :: (Integral a) => a -> a -> Bool
isEvenSum2Number x y = even (x + y)

--Ejercicio 13: sum2Digit2Number
{-
  Esta función suma todos los dígitos de dos números de dos dígitos (cada uno) dados.
  Recibe dos números de clase Integral y se obtiene el resultado de clase Integral. Sí
  en dado caso alguno de los dos números no es de dos dígitos, se lanza un error con el
  mensaje "Algún número no tiene 2 dígitos"
-}
sum2Digit2Number :: (Integral a) => a -> a -> a
sum2Digit2Number x y
    |x > 9 && x <100 && y > 9 && y <100 = (div x 10 + mod x 10) + (div y 10 + mod y 10)
    |otherwise = error "Algún número no tiene 2 dígitos"

--Ejercicio 14: sum3Digits
{-
  Esta función realiza la suma de los dígitos de un número de tres dígitos.
  Recibe un número de clase Integral, y se obtiene un resultado de clase Integral. Sí
  en dado caso, el número no contiene 3 dígitos, se manda un error con el mensaje 
  "El número no tiene 3 dígitos".
-}
sum3Digits :: (Integral a) => a -> a
sum3Digits x
    |x > 99 && x < 1000 = div x 100 + div (mod x 100) 10 + mod (mod x 100) 10
    |otherwise = error "El número no tiene 3 dígitos"

--Ejercicio 15: equal3Digits
{-
  Esta función determina sí el número ingresado al menos cuenta con dos dígitos
  iguales.
  Recibe un número de clase Integral, y se obtiene un dato tipo Bool, el cuál
  indica si al menos dos dígitos son iguales.
-}
equal3Digits :: (Integral a) => a -> Bool
equal3Digits x
    |(x > 99 && x <1000) && (x1 == x2 || x1 == x3 || x2 == x3)= True
    |(x > 99 && x <1000) && (x1 /= x2 && x1 /= x3 && x2 /= x3)= False
    |otherwise = error "El número no tiene 3 dígitos"
    where
        x1 = div x 100
        x2 = div (mod x 100) 10
        x3 = mod (mod x 100) 10

--Ejercicio 16: positionHigher3Digits
--Obtención de digitos
{- 
  Esta función sirve para reordenar lo que se obtenga de la función digitos' 
  Recibe un Integer, el cual es el número, y se obtiene un lista con los digitos 
  en orden.
-}
digitos :: Integer -> [Integer]
digitos n = reverse (digitos' n)

{-
  Esta función permite separar el numero por digitos.
  Recibe un Integral, el cual es el número, y se obtiene una lista con los digitos 
  empezando por el ultimo.
-}
digitos' :: Integral t => t -> [t]
digitos' n
    | n < 10    = [n]
    | otherwise = rem n 10 : digitos' (div n 10)

{- 
  Esta función busca el dígito mayor de un número de 3 dígitos, si el número en dado 
  caso es mayor o menor a 3 dígitos se envía un mesnaje de error.
  Recibe un Integer el cuál es el número, y se obtiene un String el cuál es el mensaje 
  "El mayor se encuentra en la pos " y la posición.
  En este caso se usa la expresión let para ligar la variable en el resultado.
  Además se usa una función que se importo, el cual es elemIndex, la cual ayuda a 
  obtener el índice a tráves del elemento, por lo que se obtiene un Maybe Int, y el let Just
  ayudo a convertirlo a Int.
-}
positionHigher3Digits :: Integer -> String
positionHigher3Digits x

 | has3Digits x = 
    let Just y = elemIndex (maximum (digitos x)) (digitos x)
    in "El mayor se encuentra en la pos " ++ show y
 |otherwise = error "Este numero no tiene 3 digitos"

--Ejercicio 17: palindrome
{-
  Esta función determina si lo que se le da es palindromo o no (lo mismo de 
  izquiera a derecha que de derecha a izquierda).
  Recibe la cadena o lista y se obtiene un Bool, el cuál, si es True significa que
  es palindromo, y si es False, significa que no lo es.
-}
palindrome :: Eq a => [a] -> Bool
palindrome xs = xs == reverse xs

--Ejercicio 18: safeDivision
{-
  Esta función realiza divisiones, donde se especifica el caso de que el divisor sea 0,
  el cuál, no es posible dividir entre 0.
  Recibe dos datos de clase Ord y Floating, los cuales son los números y devuelve un
  dato de clase Ord y Floating, que es el resultado de la division o el mensaje de 
  error al dividir entre 0.
-}
safeDivision :: (Ord p, Floating p) => p -> p -> p
safeDivision x y
    |y == 0 = error "No es posible dividir entre 0"
    |otherwise = x / y

--Ejercicio 19: xor
{-
  Esta función realiza la operación lógica XOR.
  Recibe dos datos de tipo Bool y se obtiene un Bool.
-}
xor :: Bool -> Bool -> Bool
xor x y
    |not x && y = True
    |x && not y = True
    |otherwise = False

--Ejercicio 20: distance
{-
  Esta función realiza el cálculo de dos puntos dados como puntos cartesianos
  Recibe dos duplas con las coordenadas, las cuales son de clase Floating y 
  se obtiene un valor de clase Floating.
-}
distance :: Floating a => (a, a) -> (a, a) -> a
distance (x1,y1) (x2,y2) = sqrt(((x2 - x1)^2) + ((y2 - y1)^2))