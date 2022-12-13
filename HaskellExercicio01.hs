--Exercicio1
dobrar x = x*2
--Exercicio2
quaduplicar x = (dobrar x) + (dobrar x)
--Exercicio3
multiplicar x y z = x*y*z
--Exercicio4
calculardistancia xa ya xb yb = sqrt (((xb-xa)*(xb-xa))+((yb-ya)*(yb-ya)))
--Exercicio5
hipotenusa x y = sqrt ((x*x)+(y*y))
--Exercicio6
arearetangulo x y = x*y
--Exercicio7
areacirculo r = pi*(r*r)

main = do
  print("Dobrar 10", dobrar 10)
  print("Quaduplicar 2", quaduplicar 2)
  print("Multiplicar 3, 4 e 5", multiplicar 3 4 5)
  print("Distancia entre pontos 1,1 e 3,3", calculardistancia 1 1 3 3)
  print("Hipotenusa de um triangulo retangulo de catetos 2 e 3", hipotenusa 2 3)
  print("Area de um retangulo 2 por 8", arearetangulo 2 8)
  print("Area de um circulo de raio 2", areacirculo 2)
