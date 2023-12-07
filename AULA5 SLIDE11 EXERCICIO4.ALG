Algoritmo "Aula5 Slide11 Exercicio4"

Var

      numero1, numero2: inteiro
      resultado: real

Inicio

      escreval("Digite um número: ")
      leia(numero1)
      
      escreval("Digite outro número: ")
      leia(numero2)
      
      se numero1 > numero2 entao
       resultado <- numero1 - numero2
       
      senao numero2 > numero1 entao
       resultado <- numero2 - numero1
       
      fimse

      escreval("O resultado é ", resultado)
      
Fimalgoritmo