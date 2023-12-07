Algoritmo "Aula7 Slide24 Exercicio9"

// Crie um programa que lê um número maior que zero e imprime o dobro de todos os números
// entre 0 e o número lido.

Var

   numero, i: Inteiro

Inicio

   Escreva("Digite um número maior que zero: ")
   Leia(numero)

   Se numero <= 0 Entao
      Escreva("O número deve ser maior que zero.")
   Senao
      Para i <- 1 ate numero Faca
         Escreva("O dobro de ", i, " é ", i * 2)
      FimPara
   FimSe

FimAlgoritmo