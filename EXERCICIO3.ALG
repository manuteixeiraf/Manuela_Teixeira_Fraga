Algoritmo "exercicio3"



Var

   comissao, vendas, salario: inteiro
   nome: caractere
   salario_final: real

Inicio

   escreval("Digite o valor da sua comiss�o: ")
   leia(comissao)
   
   escreval("Digite o valor das vendas: ")
   leia(vendas)
   
   escreval("Digite o sal�rio do m�s: ")
   leia(salario)
   
   escreva("Digite o nome do vendedor: ")
   leia(nome)
   
   salario_final <- salario + vendas * 15 / 100

Fimalgoritmo