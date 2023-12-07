Algoritmo "Aula 22 Matrizes Ex 5"

Var
   matriz: matriz [1..4, 1..4] de inteiro
   valorMultiplicacao: inteiro
   i, j: inteiro

Inicio

   escreval("Digite os valores para preencher a matriz:")
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         escreva("Digite o valor para a posição ", i, "x", j, ": ")
         leia(matriz[i, j])
      fimpara
   fimpara

   escreva("Digite um valor para multiplicar a matriz: ")
   leia(valorMultiplicacao)

   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         matriz[i, j] <- matriz[i, j] * valorMultiplicacao
      fimpara
   fimpara

   escreval("Nova Matriz:")
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         escreva(matriz[i, j], " ")
      fimpara
      escreval()
   fimpara

Fimalgoritmo