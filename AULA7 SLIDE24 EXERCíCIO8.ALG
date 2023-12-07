Algoritmo "Aula7 Slide24 Exercício8"

// Faça a tabuada de multiplicação (1 a 10) de um número inteiro fornecido pelo usuário.

Var

   numero, resultado: Inteiro
   i: Inteiro

Inicio

   Escreva("Digite um número inteiro para a tabuada de multiplicação: ")
   Leia(numero)

   Escreva("Tabuada de multiplicação de ", numero, ":")

   Para i <- 1 ate 10 Faca
      resultado <- numero * i
      Escreva(numero, " x ", i, " = ", resultado)
   FimPara

FimAlgoritmo