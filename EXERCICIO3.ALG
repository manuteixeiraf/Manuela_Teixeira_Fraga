Algoritmo "exercicio3"



Var

   comissao, vendas, salario: inteiro
   nome: caractere
   salario_final: real

Inicio

   escreval("Digite o valor da sua comissão: ")
   leia(comissao)
   
   escreval("Digite o valor das vendas: ")
   leia(vendas)
   
   escreval("Digite o salário do mês: ")
   leia(salario)
   
   escreva("Digite o nome do vendedor: ")
   leia(nome)
   
   salario_final <- salario + vendas * 15 / 100

Fimalgoritmo