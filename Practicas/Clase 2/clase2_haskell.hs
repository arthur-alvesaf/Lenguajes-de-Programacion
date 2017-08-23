-- Arthur Alves A01022593

-- tail recursion
-- clausula where
-- guard conditions (|)
-- clausula otherwise (si nada se puede evaluar como verdadero, ...)

-- Ejercicio 1: factorial recursivo con tail recursion
-- factorialTail x = ft (x-1) x
--   where ft n res
--           | n == 0    = res
--           | otherwise = ft (n-1) (res*n)
