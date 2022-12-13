maiorTres x y z
  |x >= y && x >= z = x
  |y >= z = y
  |otherwise = z

dobro x = if x > 100 then x else x*2

main = do
  let maior = maiorTres 1 5 3
  print(maior)
  print(dobro 2)