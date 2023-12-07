Algoritmo "Aula13 Slide10 Exercício3"

// Escreva um algoritmo que leia um vetor inteiro de 20
// posições (vetor 1). Verifique os valores do vetor 1 e
// modifique um segundo vetor (vetor 2), atribuindo o valor “1”
// ao vetor 2 quando houver um valor nulo no primeiro vetor.
// Ao fim, imprima os dois vetores.

Var

   vetor1, vetor2: vetor[1..20] de inteiro
   i: inteiro

Inicio

   para i de 1 ate 20 faca
      escreva("Digite o valor da posicao ", i, ": ")
      leia(vetor1[i])
   fimpara

   para i de 1 ate 20 faca
      se vetor1[i] = 0 entao
         vetor2[i] <- 1
      senao
         vetor2[i] <- vetor1[i]
      fimse
   fimpara

   escreva("Vetor 1: ")
   para i de 1 ate 20 faca
      escreva(vetor1[i], " ")
   fimpara

   escreva("\nVetor 2: ")
   para i de 1 ate 20 faca
      escreva(vetor2[i], " ")
   fimpara

FimAlgoritmo