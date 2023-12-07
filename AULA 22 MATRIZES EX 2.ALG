Algoritmo "Aula 22 Matrizes Ex 2"


Var

   matriz: vetor [1..10, 1..10] de inteiro
   i, j: inteiro

Inicio

   para i de 1 ate 10 faca
      para j de 1 ate 10 faca
         matriz[i, j] <- aleatorio(100)
      fimpara
   fimpara


   escreva("Matriz 10x10:")
   para i de 1 ate 10 faca
      para j de 1 ate 10 faca
         escreva(matriz[i, j], " ")
      fimpara
      escreval()
   fimpara

Fimalgoritmo