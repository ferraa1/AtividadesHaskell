--Funções

--1
segundoValor lista = lista !! 1

--2
mudarValor lista = [if x == "maca" then "laranja" else x | x <- lista]

--3
removerValor lista = [x | x <- lista, x /= "morango"]

--4
positivos lista = [x | x <- lista, x > 0]

--5
multiplicarListas lista1 lista2 = product (lista1 ++ lista2)

retornarMultiplicacao resultado = resultado > 40

--6
mostrarPares lista = [x | x <- lista, even x && x >= 10 && x <= 50]

--7
insere lista elemento =
  if elem elemento lista
    then lista
    else lista ++ [elemento]

--8
retornaSup lista numero = [x | x <- lista, x > numero]

--9
fatores x = [y | y <- [1 .. x], mod x y == 0]

primo x = (fatores x) == [1, x]

primos lista = [x | x <- lista, primo x]

--10
dezA = [x | x <- [0 .. 15], mod x 3 == 0]

dezB = [x | x <- [0 .. 20], mod x 3 == 0 && mod x 2 == 0]

dezC = [[x] | x <- [1 .. 5]]

dezD = [replicate x 1 | x <- [1 .. 5]]

dezE = [(x, y) | x <- [1, 2, 3], y <- [3, 2, 1]]

--Main

main = do
  let lista = ["maca", "morango", "uva"]

  --1
  print (segundoValor lista)

  --2
  print (mudarValor lista)

  --3
  print (removerValor lista)

  --4
  print (positivos [-3, -2, -1, 1, 2, 3])

  --5
  let resultado = multiplicarListas [1, 2, 3] [2, 2, 2]
  if retornarMultiplicacao resultado
    then print (resultado)
    else print ("menor que 40")

  --6
  print (mostrarPares [1, 4 .. 50])

  --7
  let listaParaInserir = [1 .. 20]
  print (insere listaParaInserir 6)
  print (insere listaParaInserir 21)
  print (insere listaParaInserir 69)

  --8
  print (retornaSup [1 .. 20] 13)

  --9
  print (primos [1 .. 10])
  print (primos [1 .. 35])

  --10
  print (dezA)
  print (dezB)
  print (dezC)
  print (dezD)
  print (dezE)