Algoritmo "Aula7 Slide24 Exercício4"

// Crie um programa que lê dois números inteiros e imprimir todos os números ímpares entre eles.
// Suponha que o segundo número é maior que o primeiro.

Var

  primeiroNumero, segundoNumero, numero: Inteiro

Inicio

   escreva("Digite o primeiro número inteiro: ")
   Leia(primeiroNumero)

   Escreva("Digite o segundo número inteiro (maior que o primeiro): ")
   Leia(segundoNumero)

   Se segundoNumero <= primeiroNumero Entao
      Escreva("O segundo número deve ser maior que o primeiro.")
   Senao
      Escreva("Números ímpares entre ", primeiroNumero, " e ", segundoNumero, ":")

      numero <- primeiroNumero + 1

      Enquanto numero < segundoNumero Faca
         Se numero % 2 <> 0 Entao
            Escreva(numero)
         FimSe
         numero <- numero + 1
      FimEnquanto
   FimSe

Fimalgoritmo