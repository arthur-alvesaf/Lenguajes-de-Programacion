-- Lenguajes de programación - clase 1 - Haskell
-- Arthur Alves Araujo Ferreira A0102593

-- Ejercicio 4 (Strings -> Lista de caracteres to Upper y to Lower)
import Data.Char
[y | x<-"hOlA", let y = toUpper x]
-- Salida>"HOLA"
[y | x<-"HoLa", let y = toLower x]
-- Salida>"hola"

-- Ejercicio 5 (Obtener el máximo de una lista)
max a = maximum a
max [1..10]
-- Salida>10

-- Ejercicio 6 (Factorial)
factorial n = if n < 2 then 1 else n * factorial (n-1)
factorial 4
-- Salida>24

-- Ejericio 7 (Obtener los últimos 'n' números de una lista 'a')
lastnumbers (a, b, n) = if n < 0 then b else lastnumbers (init(a), ([last(a)]++b), (n-1))
lastn a n = lastnumbers (a, [], n)
lastn [1..10] 5
-- Salida>[6,7,8,9,10]
