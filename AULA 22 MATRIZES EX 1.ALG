Algoritmo "Aula 22 Matrizes Ex 1"


Var
   matriz: vetor [1..3, 1..3] de inteiro
   i, j: inteiro

Inicio

   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         matriz[i, j] <- aleatorio(100)
      fimpara
   fimpara


   escreva("Matriz 3x3:")
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         escreva(matriz[i, j], " ")
      fimpara
      escreval()
   fimpara

Fimalgoritmo