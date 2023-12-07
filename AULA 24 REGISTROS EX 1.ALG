Algoritmo "Aula 24 Registros Ex 1"

registro Carro
   ano: inteiro
   quilometragem: inteiro
   modelo: caractere
fimregistro

Var

   carros: vetor [1..1] de Carro

Inicio

   carros[1].ano <- 2013
   carros[1].quilometragem <- 50000
   carros[1].modelo <- "Prisma"

   escreval("Atributos do Carro:")
   escreva("Ano: ", carros[1].ano)
   escreva(" | Quilometragem: ", carros[1].quilometragem)
   escreva(" | Modelo: ", carros[1].modelo)

Fimalgoritmo