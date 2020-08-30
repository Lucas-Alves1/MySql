Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/08/2020
Var
// Seção de Declarações das variáveis 
cod, senha, qtde: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval ("----Bem-Vindo ao Bando MCM!----")

escreval ("Digite o número da sua conta:")
leia (cod)

escreval ("Digite sua senha:")
leia (senha)
qtde<-1

enquanto ((cod<>1234) ou (senha<>1234)) faca
         escreval ("--------Usuário ou Senha inválidos!--------")
         escreval ("Digite o número da sua conta novamente:")
         leia (cod)
         escreval ("Digite sua senha novamente:")
         leia (senha)
         qtde<-qtde+1
         se (qtde=3) entao
            escreval ("Você errou o usuário ou senha 3 vezes")
            escreval (" *******Seu cartão foi cancelado!*******")
            interrompa
         fimse
fimenquanto

Fimalgoritmo