Algoritmo "Aula13 Slide10 Exercicio2"

// Escreva um algoritmo que leia um vetor de 15 elementos
// inteiros. Encontre e imprima na tela o menor elemento,
// assim como sua posição no vetor.

Var

   vetor: vetor[1..15] de inteiro
   menorElemento, posicaoMenor: inteiro
   i: inteiro

Inicio

   para i de 1 ate 15 faca
      escreva("Digite o valor da posicao ", i, ": ")
      leia(vetor[i])
   fimpara

   menorElemento <- vetor[1]
   posicaoMenor <- 1

   para i de 2 ate 15 faca
      se vetor[i] < menorElemento entao
         menorElemento <- vetor[i]
         posicaoMenor <- i
      fimse
   fimpara

   escreva("O menor elemento é ", menorElemento, " e está na posição ", posicaoMenor)

FimAlgoritmo