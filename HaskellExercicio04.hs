--Funções

--1
inverte_lista lista = reverse lista

--2
prod_lista lista = product lista

--3
todos_imparesQ lista = filter even lista == []

--4
pertenceQ w n = filter (\x -> x == n) w /= []

--5
retira_negativos lista = filter (\x -> x > 0) lista

--Main

main = do

  --1
  print(inverte_lista [1,2,3])

  --2
  print(prod_lista [2,4,6])
  print(prod_lista [])

  --3
  let listaTeste = [1,3,5]
  print(todos_imparesQ listaTeste)
  let listaTeste = [1,3,5,6]
  print(todos_imparesQ listaTeste)

  --4
  let listaTeste = [1,2,3]
  print(pertenceQ listaTeste 2)
  print(pertenceQ listaTeste 4)

  --5
  print(retira_negativos [1,2,3,-4,5,-6])