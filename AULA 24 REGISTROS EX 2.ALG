Algoritmo "Aula 24 Registros Ex 2"

registro Aluno
   matricula: inteiro
   nome: caractere
   mediaFinal: real
fimregistro

Var

   turma: vetor [1..10] de Aluno
   totalAlunos: inteiro
   mediaGeral: real
   i: inteiro

Inicio

   para i de 1 ate 10 faca
      escreva("Informe a matrícula do aluno ", i, ": ")
      leia(turma[i].matricula)
      escreva("Informe o nome do aluno ", i, ": ")
      leia(turma[i].nome)
      escreva("Informe a média final do aluno ", i, ": ")
      leia(turma[i].mediaFinal)
      escreval()
   fimpara

   escreval("Nome e Média Final dos Alunos:")
   para i de 1 ate 10 faca
      escreva(turma[i].nome, ": ", turma[i].mediaFinal)
      escreval()
   fimpara

   mediaGeral <- 0
   para i de 1 ate 10 faca
      mediaGeral <- mediaGeral + turma[i].mediaFinal
   fimpara
   mediaGeral <- mediaGeral / 10

   escreval("Média Geral da Turma: ", mediaGeral)

Fimalgoritmo