Algoritmo "Aula7 Slide24 Exercício7"

// Dado um número inteiro positivo, determine se ele é ou não um número primo OBS: Um número
// primo é aquele que só é divisível por 1 e por ele próprio. Ex.: 7 -> 7/7 = 1; 7/1 = 7

Var

   numero, divisor, contador: Inteiro
   primo: Logico

Inicio

   primo <- Verdadeiro
   contador <- 0

   Escreva("Digite um número inteiro positivo: ")
   Leia(numero)

   Se numero <= 1 Entao
      primo <- Falso
   Senao
      Para divisor <- 2 ate numero - 1 Faca
         Se numero % divisor = 0 Entao
            primo <- Falso
            contador <- contador + 1
         FimSe
      FimPara
   FimSe

   Se primo E contador = 0 Entao
      Escreva(numero, " é um número primo.")
   Senao
      Escreva(numero, " não é um número primo.")
   FimSe

FimAlgoritmo





