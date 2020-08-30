Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/08/2020
Var
// Seção de Declarações das variáveis 
num, cont:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval ("O Programa Fará a tabuada do número desejado")

escreval ("Digite aqui um número >0")
leia (num)

se (num>=0) entao
      para cont de 0 ate 10 faca
           escreval (num," x",cont," =",(cont*num))
      fimpara
senao
     escreval ("****Por favor, digite um número >0****")
fimse

Fimalgoritmo