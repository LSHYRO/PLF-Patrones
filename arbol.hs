data Arbol a = Hoja | Nodo a (Arbol a) (Arbol a) deriving(Show)
insertar :: (Ord a) => a -> Arbol a -> Arbol a
insertar valor Hoja = raiz valor
insertar valor (Nodo elemento izq der)
    | valor == elemento = Nodo elemento izq der
    | valor < elemento = Nodo elemento (insertar valor izq) der
    | otherwise = Nodo elemento izq (insertar valor der)

raiz :: (Ord a) => a -> Arbol a
raiz valor = Nodo valor Hoja Hoja