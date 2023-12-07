Algoritmo "aula1209"

  procedimento soma (numero1, numero2 : inteiro):
Var

  resultado: inteiro

Inicio

  resultado <- numero1 + numero2
   escreval("O Resultado da soma é: ", resultado)

 fimprocedimento

 procedimento soma (numero1, numero2 : inteiro):
   
Var

   n1, n2: inteiro
  
Inicio

   escreval("Caro usuário, digite um número: ")
   leia(n1)
   
   escreval("Caro usuário, digite outro número: ")
   leia(n2)
   
   soma(n1,n2)