-- Lenguajes de programación - clase 1 - Haskell
-- Arthur Alves Araujo Ferreira A0102593

-- Ejercicio 1 (Todos las tuplas de (x,y,z) que cumplan z^2 = x^2 + y^2 para x,y,z <= 1000)
[(x,y,z) | x <- [1 .. 1000], y <- [1 .. 1000], z <-[1 .. 1000], z^2 == x^2 + y^2]
-- Salida>[(3,4,5),(4,3,5),(5,12,13),(6,8,10),(7,24,25),(8,6,10),(8,15,17),(9,12,15),(9,40,41),(10,24,26),(11,60,61),(12,5,13),(12,9,15),(12,16,20),(12,35,37),(13,84,85),(14,48,50),(15,8,17),(15,20,25),(15,36,39),(15,112,113),(16,12,20),(16,30,34),(16,63,65),(17,144,145),(18,24,30),(18,80,82),(19,180,181),(20,15,25),(20,21,29),(20,48,52),(20,99,101),(21,20,29),(21,28,35),(21,72,75),(21,220,221),(22,120,122),(23,264,265),(24,7,25),(24,10,26),(24,18,30),(24,32,40),(24,45,51),(24,70,74),(24,143,145),(25,60,65),(25,312,313),(26,168,170),(27,36,45),(27,120,123),(27,364,365),(28,21,35),(28,45,53),(28,96,100),(28,195,197)Interrupted.

-- Ejercicio 2 (Cuantos números negativos hay entre -1000 y 1000)
length([y | x <- [-1000 .. 1000], y >= 0])
-- Salida>1000

-- Ejercicio 3 (La suma de todos los números impares abajo de 1000000)
sum ([x | x <- [1..1000000],mod x 2 == 1])
-- Salida>250000000000

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