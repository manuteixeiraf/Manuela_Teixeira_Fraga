Algoritmo "Aula 24 Registros Ex 3"

registro Contato
   nome: caractere
   telefone: caractere
   ocupado: logico
fimregistro

Const

   MAX_CONTATOS: inteiro = 50

Var

   agenda: vetor [1..MAX_CONTATOS] de Contato

procedimento inicializarAgenda()

Var

   i: inteiro
   
Inicio

   para i de 1 ate MAX_CONTATOS faca
      agenda[i].ocupado <- falso
   fimpara
fimprocedimento

funcao agendaCheia() : logico

Var

   i: inteiro
   
Inicio

   para i de 1 ate MAX_CONTATOS faca
      se nao agenda[i].ocupado entao
         retorne falso
      fimse
   fimpara
   retorne verdadeiro
fimfuncao

funcao buscarContatoPorNome(nomeBusca: caractere) : inteiro

Var

   i: inteiro
   
Inicio

   para i de 1 ate MAX_CONTATOS faca
      se agenda[i].ocupado e agenda[i].nome = nomeBusca entao
         retorne i
      fimse
   fimpara
   retorne 0
fimfuncao

procedimento exibirListaContatos()

Var

   i: inteiro
   
Inicio

   para i de 1 ate MAX_CONTATOS faca
      se agenda[i].ocupado entao
         escreval("Nome: ", agenda[i].nome)
         escreval("Telefone: ", agenda[i].telefone)
         escreval()
      fimse
   fimpara
fimprocedimento

procedimento cadastrarContato()

Var

   novoContato: Contato
   posicaoLivre: inteiro
   
Inicio

   se not agendaCheia() entao
      posicaoLivre <- 1
      enquanto agenda[posicaoLivre].ocupado faca
         posicaoLivre <- posicaoLivre + 1
      escreva("Digite o nome do contato: ")
      leia(novoContato.nome)
      escreva("Digite o telefone do contato: ")
      leia(novoContato.telefone)

      agenda[posicaoLivre] <- novoContato
      agenda[posicaoLivre].ocupado <- verdadeiro

      escreval("Contato cadastrado com sucesso!")
   senao
      escreval("A agenda esta cheia. Nao e possivel cadastrar mais contatos.")
   fimse
fimprocedimento

procedimento removerContato(nomeRemover: caractere)
Var

   posicaoRemover: inteiro
begin
   posicaoRemover <- buscarContatoPorNome(nomeRemover)

   se posicaoRemover > 0 entao
      agenda[posicaoRemover].ocupado <- falso
      escreval("Contato removido com sucesso!")
   senao
      escreval("Contato nao encontrado.")
   fimse
end
Inicio

   inicializarAgenda()

   repita
      escreval("Escolha uma opcao:")
      escreval("1 - Cadastrar contato")
      escreval("2 - Remover contato")
      escreval("3 - Buscar contato")
      escreval("4 - Exibir lista de contatos")
      escreval("0 - Sair")
      escreva("Opcao: ")
      leia(opcao)

      escolha opcao
         caso "1"
            cadastrarContato()
         caso "2"
            escreva("Digite o nome do contato a ser removido: ")
            leia(nomeRemover)
            removerContato(nomeRemover)
         caso "3"
            escreva("Digite o nome do contato a ser buscado: ")
            leia(nomeBusca)
            posicao := buscarContatoPorNome(nomeBusca)
            se posicao > 0 entao
               escreval("Contato encontrado:")
               escreval("Nome: ", agenda[posicao].nome)
               escreval("Telefone: ", agenda[posicao].telefone)
            senao
               escreval("Contato nao encontrado.")
            fimse
         caso "4"
            exibirListaContatos()
         caso "0"
            escreval("Saindo do programa. Ate logo!")
         caso contrario
            escreval("Opcao invalida. Tente novamente.")
      fimescolha
   ate opcao = "0"
   
Fimalgoritmo