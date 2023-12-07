Algoritmo "Aula5 Slide11 Exercício6"

Var
      nota1, nota2, nota3, nota4: inteiro
      media: real
      genero: caractere
Inicio

      escreval("Digite M se seu gênero for Masculino e F se for Feminino: ")
      leia(genero)

      escreval("Digite a sua nota 1: ")
      leia(nota1)

      escreval("Digite a sua nota 2: ")
      leia(nota2)

      escreval("Digite a sua nota 3: ")
      leia(nota3)

      escreval("Digite a sua nota 4: ")
      leia(nota4)

      media <- (nota1 + nota2 + nota3 + nota4) / 4

      se media >= 6 e (genero = "M") entao
       escreval("Caro aluno, seu resultado é:", media)

      se media < 6 e (genero = "F") entao
       escreval("Cara aluna, seu resultado é:", media)
      fimse

Fimalgoritmo