Algoritmo "Aula5 Slide11 Exerc�cio1"


Var
    nome : caractere
    nota1, nota2, nota3, media : real
Inicio
    escreval("Digite seu nome: ")
   leia(nome)

   escreval("Digite sua primeira nota: ")
   leia(nota1)

   escreval("Digite sua segunda nota: ")
   leia(nota2)

   escreval("Digite a sua terceira nota: ")
   leia(nota3)

   media <- (nota1 + nota2 + nota3 / 3)

   se media >= 7 entao

      escreval("Voc� est� aprovado!")

   senao media <= 5 entao
      escreval("Voc� est� reprovado!")

   senao media = 5.1 ou 6.9
      escreval("Voc� est� de recupera��o!")

   fimse
Fimalgoritmo