Algoritmo "Aula 22 Matrizes Ex 3"

Var

   pessoas: matriz [1..4, 1..3] de caractere
   i: inteiro

Inicio

   para i de 1 ate 4 faca
      escreva("Digite o nome da pessoa ", i, ": ")
      leia(pessoas[i, 1])
      escreva("Digite o email da pessoa ", i, ": ")
      leia(pessoas[i, 2])
      escreva("Digite o telefone da pessoa ", i, ": ")
      leia(pessoas[i, 3])
      escreval()
   fimpara


   escreval("Dados das Pessoas:")
   para i de 1 ate 4 faca
      escreva("Pessoa ", i, ":")
      escreva("Nome: ", pessoas[i, 1])
      escreva(" | Email: ", pessoas[i, 2])
      escreva(" | Telefone: ", pessoas[i, 3])
      escreval()
   fimpara

Fimalgoritmo