Algoritmo "Aula7 Slide24 Exercício1"

//  Crie um programa que lê um número inteiro, maior que 0, e imprime a soma entre todos os
//  números menores que o número lido, até chegar em 0. Exemplo: usuário informa o numero 10 -> 9
//  + 8 + 7 + ... + 1

Var

      numero, soma, indice: inteiro

Inicio

// entrada

     escreval("Digite um número inteiro maior que zero: ")
     leia(numero)
     
     soma <- 0
     indice <- numero - 1
     
// processamento

      enquanto indice > 0 faca
               soma <- soma + indice
               indice <- indice - 1
      fimenquanto
      
// saída

       escreval("A soma de", numero, " até", indice, " é: ", soma)

Fimalgoritmo