Algoritmo "Aula5 Slide11 Exercício6"

Var
      nota1, nota2, nota3, nota4: inteiro
      media: real

Inicio

      escreval("Digite a sua nota 1: ")
      leia(nota1)
      
      escreval("Digite a sua nota 2: ")
      leia(nota2)

      escreval("Digite a sua nota 3: ")
      leia(nota3)

      escreval("Digite a sua nota 4: ")
      leia(nota4)

      media <- (nota1 + nota2 + nota3 + nota4) / 4
      
      se media >= 6 entao
       escreval("Aprovado"

      senao
       escreval("Reprovado", media)
      fimse

Fimalgoritmo
