Algoritmo "Aula7 Slide24 Exercício5"

//  Ler um número inteiro e escrever o valor da soma de todos os números digitados até o momento,
//  até que seja digitado um número negativo.

Var
   numero, soma: Inteiro

Inicio

   soma <- 0
   Escreva("Digite um número inteiro (digite um número negativo para encerrar): ")
   Leia(numero)

   Enquanto numero >= 0 Faca
      soma <- soma + numero
      Escreva("Digite outro número inteiro (digite um número negativo para encerrar): ")
      Leia(numero)
   FimEnquanto

   Escreva("A soma de todos os números digitados é: ", soma)

FimAlgoritmo