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

-- Ejercicio 2: reversa de una lista
reverseList x = rev x []
  where
    rev a b
      | length a == 0 = b
      | otherwise = rev (init a) (b ++ [last a])

-- reverseList x = rev x []
--   where
--     rev (x:xs) b
--       | xs == [] = [x]++b
--       | otherwise = rev (xs) ([x]++b)


-- Ejercicio 3: conseguir el valor máximo y mínimo de una lista
maxMinList x = maxmin x (head x) (head x)
  where
    maxmin a mi ma
      | length a == 0 = (ma, mi)
      | otherwise = maxmin (tail a) (if head a < mi then head a else mi) (if head a > ma then head a else ma)

-- maxMinList x = maxmin (tail x) (head x) (head x)
--   where
--     maxmin a mi ma
--       | a == [] = (ma, mi)
--       | (head a) > ma = maxmin (tail a) (head a) mi
--       | (head a) < mi = maxmin (tail a) ma (head a)
--       | otherwise = maxmin (tail a) ma mi
