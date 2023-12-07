Algoritmo "Aula9 Slide26 Exercicio3"



Var

   numero, fatorial: inteiro

Funcao FatorialRecursivo(n: inteiro): inteiro

Inicio

   Se n <= 1 Entao
      Retorne 1
   Senao
      Retorne n * FatorialRecursivo(n - 1)
   FimSe
FimFuncao

Inicio

   Escreva("Digite um número não-negativo: ")
   Leia(numero)

   Se numero < 0 Entao
      Escreva("Número inválido. Digite um número não-negativo.")
   Senao
      fatorial <- 1
      Para i <- 1 ate numero faca
         fatorial <- fatorial * i
      FimPara

      Escreva("Usando estrutura de repetição PARA: O fatorial de ", numero, " é: ", fatorial)
      Escreva("Usando chamada recursiva: O fatorial de ", numero, " é: ", FatorialRecursivo(numero))
   FimSe
   
FimAlgoritmo