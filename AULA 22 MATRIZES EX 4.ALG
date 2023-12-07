Algoritmo "Aula 22 Matrizes Ex 4"

Var

   moradores: matriz [1..4, 1..6] de inteiro
   totalMoradores, andar, apartamento: inteiro

Inicio

   totalMoradores <- 0

   para andar de 1 ate 4 faca
      para apartamento de 1 ate 6 faca
         escreva("Digite a quantidade de moradores no apartamento ", andar, ".", apartamento, ": ")
         leia(moradores[andar, apartamento])
         totalMoradores <- totalMoradores + moradores[andar, apartamento]
      fimpara
   fimpara

   escreval("Total de moradores no prédio: ", totalMoradores)

Fimalgoritmo