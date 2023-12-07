Algoritmo "Aula 22 Matrizes Ex 6"

const

   precoInteira: real = 12.00
   precoMeia: real = 6.00
   totalPoltronas: inteiro = 150
   poltronasPorFila: inteiro = 10
   filas: inteiro = 15

Var
   salaCinema: matriz [1..filas, 1..poltronasPorFila] de inteiro
   ocupacaoTotal, ocupacaoInteira, ocupacaoMeia: inteiro
   valorTotal: real
   i, j, tipoIngresso: inteiro

funcao aleatorioTipoIngresso() : inteiro

Var

   rnd: inteiro
   
Inicio

   rnd <- aleatorio(3)
   retorne rnd
fimfuncao

Inicio

   ocupacaoTotal <- 0
   ocupacaoInteira <- 0
   ocupacaoMeia <- 0
   valorTotal <- 0

   para i de 1 ate filas faca
      para j de 1 ate poltronasPorFila faca
         tipoIngresso <- aleatorioTipoIngresso()
         salaCinema[i, j] <- tipoIngresso

         ocupacaoTotal <- ocupacaoTotal + tipoIngresso
         se tipoIngresso = 1 entao
            ocupacaoInteira <- ocupacaoInteira + 1
            valorTotal <- valorTotal + precoInteira
         senao
            se tipoIngresso = 2 entao
               ocupacaoMeia <- ocupacaoMeia + 1
               valorTotal <- valorTotal + precoMeia
            fimse
         fimse
      fimpara
   fimpara

   escreval("Ocupação das Poltronas:")
   para i de 1 ate filas faca
      para j de 1 ate poltronasPorFila faca
         escreva(salaCinema[i, j], " ")
      fimpara
      escreval()
   fimpara

   escreval("Quantidade de Ingressos:")
   escreva("Total: ", ocupacaoTotal, " | Inteira: ", ocupacaoInteira, " | Meia: ", ocupacaoMeia)
   escreval()

   escreval("Valor apurado na sessão: R$", valorTotal)

Fimalgoritmo