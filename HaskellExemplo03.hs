listaQuad lista = [x ^ 2 | x <- lista]

main = do
  print[1..10]
  print[1,3..10]
  print[7.5..20]
  print[(-1),(-2)..(-10)]
  print(sum[1..100])
  print(product[1..5])
  print['a'..'z']
  print(listaQuad [1..10])
  let lista = [x * y | x <- [1,2,3], y <- [1,2,3]]
  print lista