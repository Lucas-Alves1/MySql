Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/08/2020
Var
// Seção de Declarações das variáveis 
cod, senha, qtde, operacao: inteiro
validado:logico
saldo, valor:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval ("----Bem-Vindo ao Bando MCM!----")

escreval ("Digite o número da sua conta:")
leia (cod)

escreval ("Digite sua senha:")
leia (senha)
qtde<-1
validado<-verdadeiro

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
         validado<-falso
         interrompa
      fimse
fimenquanto
saldo<-10000

se (validado=verdadeiro) entao
     repita
           escreval ("***O que deseja fazer?***")
           escreval ("Digite 1 para Saque;")
           escreval ("Digite 2 para Depósito;")
           escreval ("Digite 3 para Visualizar o Saldo;")
           escreval ("Digite 4 para Sair.")
           leia (operacao)
           limpatela
           
               escolha operacao
                   caso 1
                        escreval ("Digite o valor do saque:")
                        leia (valor)
                        saldo<-saldo-valor
                        escreval ("Seu saldo atual é de",saldo," reais. Aguarde o dinheiro!")
                   caso 2
                        escreval ("Digite o valor de depósito:")
                        leia (valor)
                        saldo<-saldo+valor
                        escreval ("Seu saldo atual é de",saldo," reais!")
                   caso 3
                        escreval ("Seu saldo atual é de",saldo," reais.")
                   caso 4
                        escreval ("Obrigado por escolher o Bando MCM! Volte Sempre!")
                   outrocaso
                        escreval ("-------Você não digitou um valor válido!-------")
     ate (operacao=4)
senao
     escreval("-------Usuário Não Autenticado! Até a Próxima!-------")
fimse





Fimalgoritmo