Algoritmo "Aula7 Slide24 Exercício6"

// Ler 5 números inteiros informados pelo usuário, e ao final mostrar a soma desses números. a.
// Complementar o exercício 6 informando, ao final, se a soma representa um número par ou ímpar.

Var

   numero, soma: Inteiro
   i: Inteiro

Inicio

   soma <- 0

   Para i <- 1 ate 5 Faca
      Escreva("Digite o ", i, "º número inteiro: ")
      Leia(numero)
      soma <- soma + numero
   FimPara

   Escreva("A soma dos 5 números é: ", soma)

   Se soma % 2 = 0 Entao
      Escreva("A soma é um número par.")
   Senao
      Escreva("A soma é um número ímpar.")
   FimSe

FimAlgoritmo





