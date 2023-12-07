Algoritmo "Aula9 Slide26 Exercício2"



Var

   numero1, numero2, numero3, maior, menor: real

Funcao Maior(n1, n2, n3: real): real

Inicio

   Se n1 >= n2 E n1 >= n3 Entao
      Retorne n1
   Senao Se n2 >= n1 E n2 >= n3 Entao
      Retorne n2
   Senao
      Retorne n3
   FimSe
FimFuncao

Funcao Menor(n1, n2, n3: real): real

Inicio

   Se n1 <= n2 E n1 <= n3 Entao
      Retorne n1
   Senao Se n2 <= n1 E n2 <= n3 Entao
      Retorne n2
   Senao
      Retorne n3
   FimSe
FimFuncao

Inicio

   Escreva("Digite o primeiro número: ")
   Leia(numero1)
   Escreva("Digite o segundo número: ")
   Leia(numero2)
   Escreva("Digite o terceiro número: ")
   Leia(numero3)

   maior <- Maior(numero1, numero2, numero3)
   menor <- Menor(numero1, numero2, numero3)

   Escreva("O maior número é: ", maior)
   Escreva("O menor número é: ", menor)
   
FimAlgoritmo