--Funções

--1
funcaoR 0 = 2
funcaoR x = 2 * funcaoR (x - 1) - 4

--2
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

--3
funcaoSom 0 = 0
funcaoSom i = funcaoSom (i - 1) + 2 * (i * i + i + 4)

--4
potencia x 0 = 1
potencia x 1 = x
potencia x y = x * potencia x (y - 1)

--5
mdc2 x y
  |x == 0 && y == 0 = undefined
  |x == 0 = y
  |y == 0 = x
  |x > y = mdc2 (x - y) y
  |otherwise = mdc2 x (y - x)

mdc3 x y z
  |x == 0 = mdc2 y z
  |y == 0 = mdc2 x z
  |z == 0 = mdc2 x y
  | HERE
  |otherwise = 0

--Main
main = do
  --1
  print(funcaoR 5)

  --2
  print(fib 6)

  --3
  print(funcaoSom 6)

  --4
  print(potencia 2 6)

  --5
  print(mdc2 98 56)