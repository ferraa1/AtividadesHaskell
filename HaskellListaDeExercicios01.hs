--Funções

--Exercício 1
entre10e80 x =
  if x >= 10 && x <= 80
    then "O numero informado esta entre 10 e 80"
    else "O numero informado nao esta entre 10 e 80"

--Exercício 2
categoriaNadador idade
  | idade >= 5 && idade <= 7 = "Infantil A"
  | idade >= 8 && idade <= 10 = "Infantil B"
  | idade >= 11 && idade <= 13 = "Juvenil A"
  | idade >= 14 && idade <= 17 = "Juvenil B"
  | idade >= 18 = "Senior"
  |otherwise = "Nenhuma"

--Exercício 3
pesoIdeal altura sexo =
  if sexo == "homem"
    then 72.7 * altura - 58
    else 62.1 * altura - 44.7

--Exercício 4
mostrarMes mes
  |mes == 1 = "Janeiro"
  |mes == 2 = "Fevereiro"
  |mes == 3 = "Marco"
  |mes == 4 = "Abril"
  |mes == 5 = "Maio"
  |mes == 6 = "Junho"
  |mes == 7 = "Julho"
  |mes == 8 = "Agosto"
  |mes == 9 = "Setembro"
  |mes == 10 = "Outubro"
  |mes == 11 = "Novembro"
  |mes == 12 = "Dezembro"
  |otherwise = "ERROR: Não existe mês com este número!"

--Exercício 5
raizOuQuadrado x
  |x > 0 = sqrt(x)
  |x < 0 = x * x
  |otherwise = 0

--Exercício 6
calcularMedia notaUm notaDois = (notaUm + notaDois) / 2

calcularSituacao media
  |media >= 10 = "Aprovado"
  |media < 3 = "Reprovado"
  |otherwise = "Exame"

--Exercício 7
classeEleitoral idade
  |idade < 16 = "Nao-eleitor"
  |idade >= 18 && idade < 65 = "Eleitor obrigatorio"
  |otherwise = "Eleitor facultativo"

--Exercício 8
calcularValor valor =
  if valor < 30
    then valor * 1.45
    else valor * 1.3

--Main

main = do
  --Exercício 1
  print("Informe um numero:")
  input <- getLine
  let numero = (read input :: Int)
  print(entre10e80 numero)

  --Exercício 2
  print("Informe a idade do/a nadador/a:")
  input <- getLine
  let idade = (read input :: Int)
  if idade < 0
    then print("ERRO: A idade nao pode ser negativa!")
    else print("Categoria:",categoriaNadador idade)

  --Exercício 3
  print("Informe a altura em metros:")
  input <- getLine
  let altura = (read input :: Float)
  print("Informe o sexo (homem ou mulher):")
  input <- getLine
  let sexo = input
  print("Peso ideal:",pesoIdeal altura sexo)
      
  --Exercício 4
  print("Informe um mes em forma de numero (1 - 12):")
  input <- getLine
  let mes = (read input :: Int)
  print("Mes informado:",mostrarMes mes)

  --Exercício 5
  print("Informe um numero:")
  input <- getLine
  let numero = (read input :: Float)
  print(raizOuQuadrado numero)

  --Exercício 6
  print("Informa a primeira nota:")
  input <- getLine
  let notaUm = (read input :: Float)
  print("Informa a segunda nota:")
  input <- getLine
  let notaDois = (read input :: Float)
  let media = calcularMedia notaUm notaDois
  print("Media:",media)
  print("Situacao:",calcularSituacao media)

  --Exercício 7
  print("Informe a idade:")
  input <- getLine
  let idade = (read input :: Int)
  print("Classe eleitoral:",classeEleitoral idade)

  --Exercício 8
  print("Informe o valor do produto: R$")
  input <- getLine
  let valor = (read input :: Float)
  print("Valor de venda: R$",calcularValor valor)