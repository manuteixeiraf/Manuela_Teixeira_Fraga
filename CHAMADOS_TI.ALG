algoritmo "CHAMADOS_TI"
{Sistema de chamados}

tipo
   Chamados=registro
      status:logico {verifica o chamado esta completo ou nao}
      prioridade:inteiro {nivel de prioridade do problema encontrado}
      unidade:caractere {em qual unidade se encontra o problema}
      usuario:caractere {nome do usuario que relatou o problema}
      email:caractere {email do usuario que relatou o problema}
      topico:inteiro {em qual topico se encaixa o problema}
      data:caractere {data em que o problema se encontrou}
      ticket:caractere {resumo do problema encontrado}
   fimregistro



procedimento registrar {procedimento para registrar o chamado}
inicio
   se chamado[i].status=verdadeiro entao {verifica se o chamado ja foi}
      escreval("Chamado ja registrado.") {registrado, se sim, so e possivel edita-lo.}

   senao {senao voce começa a registrar.}

      escreval("Resuma o problema encontrado."){declara o atributo que voce vai}
      leia(chamado[i].ticket)                  {atribuir, e le o valor.}
      escreval("Ticket preenchido com sucesso."){declara que funcionou.}

      escreval("") {pula a linha para ficar mais organizado.}

      escreval("Qual a prioridade de atendimento? Digite 1 para baixo, 2 para médio e 3 para urgente.")
      leia(chamado[i].prioridade) {le o valor}
      enquanto (chamado[i].prioridade<0) ou (chamado[i].prioridade>3) faca {usa o enquanto para nao deixar voce digitar o numero errado.}
         escreval("Numero invalido, digite novamente.")
         leia(chamado[i].prioridade)
      fimenquanto
      escolha chamado[i].prioridade { usa um escolha para declarar qual o nivel}
      caso 1                        { de prioridade voce selecionou.}
         escreval("Prioridade baixa, tempo estimado para atendimento é de 1 hora.") {se digitar um vai aparacer essa mensagem e assim vai...}
      caso 2
         escreval("Prioridade média, tempo estimado para atendimento é de 30 minutos.")
      caso 3
         escreval("Prioridade alta, tempo estimado para atendimento é de 5 minutos.")
      fimescolha

      escreval("")

      escreval("Qual o topico do atendimento? Digite 1 para manutenção de computadores, 2 para impressoras e 3 para rede.")
      leia(chamado[i].topico)
      enquanto (chamado[i].topico>3) ou (chamado[i].topico<0) faca {mesma coisa que na prioridade, impossibilita input errado.}
         escreval("Numero invalido, digite novamente.")
         leia(chamado[i].topico) {pede para voce digitar o numero ate estar valido}
      fimenquanto
      escolha chamado[i].topico  {mostar o topico selecionado.}
      caso 1
         escreval("Topico definido para manutenção de computadores.")
      caso 2
         escreval("Topico definido para manutenção de impressoras.")
      caso 3
         escreval("Topico definido para manutenção de internet.")
      fimescolha

      escreval("")
      {le o valor dos outros atributos e mostra o modelo de como devem ser digitados}
      escreval("Digite sua unidade usando o template: TIPO_DE_UNIDADE-BAIRRO.")
      leia(chamado[i].unidade)
      escreval("Unidade preenchida com sucesso.")

      escreval("")

      escreval("Digite o seu nome de usuario usando o template: NOME_BAIRRO.")
      leia(chamado[i].usuario)
      escreval("Usuario definido com sucesso.")

      escreval("")

      escreval("Digite seu email usando o template: seuemail@gmail.com")
      leia(chamado[i].email)
      escreval("Email definido com sucesso.")

      escreval("")

      escreval("Digite a data em que o problema iniciou usando o template: dia/mes/ano.")
      leia(chamado[i].data)
      escreval("Data definida com sucesso.")

      escreval("")
   fimse
fimprocedimento



procedimento selecao_mod {procedimento que abre um menu de selecao para}
var                      {modificar um atributo.}
   aux:inteiro {variavel usada para selecionar qual atributo}
inicio         {voce quer modificar.}
   repita {repete o menu com as opcoes ate voce digitar 0 e voltar ao menu principal.}
      escreval("-------------------------------------------------------------------------------")
      escreval("|Digite o numero correspondente ao atributo que deseja modificar.             |")
      escreval("|1.TICKET | 2.PRIORIDADE | 3.TOPICO | 4.UNIDADE | 5.USUARIO | 6.EMAIL | 7.DATA|")
      escreval("|0.Parar de editar                                                            |")
      escreval("-------------------------------------------------------------------------------")
      leia(aux)
      escolha aux {le a opcao que quer modificar e chama a funcao para o}
      caso 1      {atributo selecionado.}
         chamado[i].ticket<-modificar_carac(chamado[i].ticket)
      caso 2 {chama a funcao para o atributo e atribui o valor modificado ao atributo original.}
         chamado[i].prioridade<-modificar_int(chamado[i].prioridade)
      caso 3
         chamado[i].topico<-modificar_int(chamado[i].topico)
      caso 4
         chamado[i].unidade<-modificar_carac(chamado[i].unidade)
      caso 5
         chamado[i].usuario<-modificar_carac(chamado[i].usuario)
      caso 6
         chamado[i].email<-modificar_carac(chamado[i].email)
      caso 7
         chamado[i].data<-modificar_carac(chamado[i].data)
      fimescolha
   ate aux=0
fimprocedimento



funcao modificar_carac (re:caractere): caractere {funcao para modificar o atributo}
var                                              {com valor de caractere.}
   aux:caractere {usada para decidir se quer modificar ou nao.}
   temp : caractere {var que é usada para retornar o novo valor.}
inicio   {variavel "re" é o parametro que possui o valor do atributo original.}
   se re="" entao
      escreval("Atributo ainda nao preenchido.")
      interrompa
   senao
      escreval("O valor do atributo e: ",re,", deseja modifica-lo? Digite sim ou nao.")//declara o antigo valor e pergunta se vai querer modificar
      leia(aux) {le a sua resposta}
      enquanto (aux<>"sim") e (aux<>"nao") faca {usa o enquanto para so aceitar}
         escreval("Opcao invalida, digite novamente.") {uma resposta valida.}
         leia(aux)
      fimenquanto
      se aux="sim" entao {se a resposta for sim, le o novo valor}
         escreval("Digite o novo valor do atributo.")
         leia(temp)
         escreval("O novo valor do atributo e: ", temp)
         retorne temp {retorna o novo valor}
      senao
         retorne re {senao retorna o valor antigo}
      fimse
   fimse
fimfuncao



funcao modificar_int (re:inteiro): inteiro {mesma coisa que a ultima funcao}
var                                        {so que para valores inteiros.}
   aux:caractere
   temp:inteiro
inicio
   se re="" entao
      escreval("Atributo ainda nao preenchido.")
      interrompa
   senao
      escreval("O valor do atributo e: ",re,", deseja modifica-lo? Digite sim ou nao.")
      leia(aux)
      enquanto (aux<>"sim") e (aux<>"nao") faca
         escreval("Opcao invalida, digite novamente.")
         leia(aux)
      fimenquanto
      se aux="sim" entao
         escreval("Digite o novo valor do atributo.")
         leia(temp)
         escreval("O novo valor do atributo e: ",temp)
         retorne temp
      senao
         retorne re
      fimse
   fimse
fimfuncao



procedimento selecao_pes {procedimento que mostar um menu para selecionar qual}
var                      {atributo voce deseja saber.}
   aux:inteiro {var para ler qual a opcao voce vai selecionar}
inicio
   repita
      escreval("-------------------------------------------------------------------------------")
      escreval("|Digite o numero correspondente ao atributo que deseja saber.                 |")
      escreval("|1.TICKET | 2.PRIORIDADE | 3.TOPICO | 4.UNIDADE | 5.USUARIO | 6.EMAIL | 7.DATA|")
      escreval("|8.Declarar registro completo.                                                |")
      escreval("|0.Parar de pesquisar                                                         |")
      escreval("-------------------------------------------------------------------------------")
      leia(aux)
      escolha aux {escolha do atributo atraves da var "aux"}
      caso 1
         declarar_carac(chamado[i].ticket) {chamado do procediemnto para o}
      caso 2                               {atributo selecionado.}
         declarar_int(chamado[i].prioridade)
      caso 3
         declarar_int(chamado[i].topico)
      caso 4
         declarar_carac(chamado[i].unidade)
      caso 5
         declarar_carac(chamado[i].usuario)
      caso 6
         declarar_carac(chamado[i].email)
      caso 7
         declarar_carac(chamado[i].data)
      caso 8
         declarar_tudo {declara todos os valores}
      fimescolha
   ate aux=0 {se digitar 0 fecha o menu}
fimprocedimento



procedimento declarar_carac(dec:caractere) {procedimento para declarar o valor}
inicio                                     {do atributo selecionado.}
   escreval("O valor desse atributo e :",dec) {"dec" possui o valor do atributo}
   {que voce chamou a funcao.}
fimprocedimento


procedimento declarar_int(dec:inteiro) {mesma coisa so que para valores inteiros}
inicio
   escreval("O valor desse atributo e :",dec)
fimprocedimento



procedimento declarar_tudo {procedimento para declarar todos os atributos}
inicio
   escreval("|Seu ticket e :",chamado[i].ticket) {usa o escreval para chamar o valor}

   se chamado[i].prioridade = 1 entao {mostra o nivel de prioridade baseado no}
      escreval("|Sua prioridade e : BAIXA") {valor do atributo.}
   fimse
   se chamado[i].prioridade = 2 entao
      escreval("|Sua prioridade e : MEDIA")
   fimse
   se chamado[i].prioridade = 3 entao
      escreval("|Sua prioridade e : ALTA")
   fimse

   se chamado[i].topico = 1 entao {mesma coisa que na prioridade, mas mostra o}
      escreval("|Seu topico e : COMPUTADORES") {topico selecionado.}
   fimse
   se chamado[i].topico = 2 entao
      escreval("|Seu topico e : IMPRESSORAS")
   fimse
   se chamado[i].topico = 3 entao
      escreval("|Seu topico e : INTERNET")
   fimse

   escreval("|Seu unidade e: ",chamado[i].unidade) {mostar todos os outros valores}
   escreval("|Seu usuario e: ",chamado[i].usuario)
   escreval("|Seu email e: ",chamado[i].email)
   escreval("|Seu data e: ",chamado[i].data)
fimprocedimento



procedimento selecao_del {menu para deletar um valor de atributo.}
var
   aux:inteiro {mesma coisa que os outros menus secundarios.}
inicio
   repita
      escreval("-------------------------------------------------------------------------------")
      escreval("|Digite o numero correspondente ao atributo que deseja deletar.               |")
      escreval("|1.TICKET | 2.PRIORIDADE | 3.TOPICO | 4.UNIDADE | 5.USUARIO | 6.EMAIL | 7.DATA|")
      escreval("|0.Parar de deletar                                                           |")
      escreval("-------------------------------------------------------------------------------")
      leia(aux)
      escolha aux
      caso 1
         chamado[i].ticket<-deletar_carac(chamado[i].ticket) {chama a funcao}
      caso 2 {e atribui o valor modificado a ao atributo original.}
         chamado[i].prioridade<-deletar_int(chamado[i].prioridade)
      caso 3
         chamado[i].topico<-deletar_int(chamado[i].topico)
      caso 4
         chamado[i].unidade<-deletar_carac(chamado[i].unidade)
      caso 5
         chamado[i].usuario<-deletar_carac(chamado[i].usuario)
      caso 6
         chamado[i].email<-deletar_carac(chamado[i].email)
      caso 7
         chamado[i].data<-deletar_carac(chamado[i].data)
      fimescolha
   ate aux=0
fimprocedimento



funcao deletar_carac (del:caractere):caractere {funcao para deletar valor de}
inicio                                         {caractere.}
   del<-"" {del é o valor do atributo original.}
   escreval("Atributo deletado.")
   retorne del {retorna o valor apagado.}
fimfuncao



funcao deletar_int (del:inteiro):inteiro {mesma coisa só que para inteiros.}
inicio
   del<-0 {o valor retornado é zero.}
   escreval("Atributo deletado.")
   retorne del
fimfuncao



procedimento verificar {procedimento para verificar se todos os atributos do}
var                    {chamado foram atribuidos, se sim, o status fica verdadeiro.}
   contagem:inteiro {var usada para contar quantos atributos foram preenchidos.}
inicio
   se chamado[i].ticket <> "" entao {se o valor do atributo é diferente de nada.}
      contagem<-contagem+1          {adiciona +1 na var contagem.}
   fimse
   se chamado[i].prioridade <> 0 entao
      contagem<-contagem+1
   fimse
   se chamado[i].topico <> 0 entao
      contagem<-contagem+1
   fimse
   se chamado[i].unidade <> "" entao
      contagem<-contagem+1
   fimse
   se chamado[i].usuario <> "" entao
      contagem<-contagem+1
   fimse
   se chamado[i].email <> "" entao
      contagem<-contagem+1
   fimse
   se chamado[i].data <> "" entao
      contagem<-contagem+1
   fimse
   se contagem=7 entao {se a contagem tem o valor de sete, que sao o numero de}
      chamado[i].status<-verdadeiro {atributos a serem preenchidos, o status}
   senao                            {fica verdadeiro}.
      chamado[i].status<-falso
   fimse
fimprocedimento



var
   chamado:vetor[1..3] de Chamados {vetor que agrega até 3 chamados.}
   i,opcao:inteiro {indice para o percorrer o vetor e "opcao" para ler qual}
   {procedimento voce deseja realizar.}
inicio
   para i de 1 ate 3 faca {percorre o vetor.}
      repita {repete a lista ate voce digitar zero, entao o chamado é concluido.}
         escreval("----------------------------------------------------")
         escreval("|              Registre seu chamado:               |")
         escreval("|                                                  |")
         escreval("|Chamado completo: ",chamado.status[i],"                          |") {mostra se o registro foi completo, mas so muda de valor se}
         escreval("|                                                  |")                {voce usar o precedimento para verificar se o registro esta completo.}
         escreval("|1.Registrar chamado                               |")
         escreval("|                                                  |")
         escreval("|2.Editar registro                                 |")
         escreval("|                                                  |")
         escreval("|3.Pesquisar no registro                           |")
         escreval("|                                                  |")
         escreval("|4.Deletar atributo do registro                    |")
         escreval("|                                                  |")
         escreval("|5.Verificar se registro esta completo             |")
         escreval("|                                                  |")
         escreval("|0.Concluir chamado                                |")
         escreval("|                                                  |")
         escreval("----------------------------------------------------")
         leia (opcao) {le qual a opcao voce deseja selecionar.}
         escolha opcao
         caso 1
            registrar() {chama o procedimento que voce selecionou.}
         caso 2
            selecao_mod()
         caso 3
            selecao_pes()
         caso 4
            selecao_del()
         caso 5
            verificar()
         fimescolha
      ate opcao=0  {quando o chamado é concluido, abre um novo chamado, podendo}
   fimpara         {fazer até 3.}
Fimalgoritmo