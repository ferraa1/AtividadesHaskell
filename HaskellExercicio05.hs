--Funções

--1
dobro lista = [x * 2 | x <- lista]

--2
fatorial x = product [2 .. x]

--3
fatores x = [y | y <- [1 .. x], mod x y == 0]

primo x = fatores x == [1, x]

--4
primeirograu a b = -b / a
segundograu a b c = if d < 0 then error "0" else [x, y]
  where
  x = e + sqrt d / (2 * a)
  y = e - sqrt d / (2 * a)
  d = b * b - 4 * a * c
  e = - b / (2 * a)
{-
segundograu (a, b, c)
      | d == 0 = [root (+)]
      | otherwise = [root (+), root (-)]
  where d = b*b - 4*a*c
        root sign = sign (-b) (sqrt d) / (2*a)
-}
--5


--6


--7


--8


--9


--10


--EXEMPLO FATORIAL
fat 1 = 1
fat n = n * fat (n - 1)

--Main

main = do

  --1
  print(dobro [1,2,3])

  --2
  print(fatorial 10)

  --3
  print(primo 13)
  print(primo 14)

  --4
  print(primeirograu 3 (-3))
  print(primeirograu 2 3)

  --5
  print(segundograu 4 (-2) 0) --0.5 e 0
  print(segundograu 1 2 (-3)) --1 e -3

  --6


  --7


  --8


  --9


  --10


  --EXEMPLO FATORIAL
  print(fat 4)