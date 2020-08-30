Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/08/2020
Var
// Seção de Declarações das variáveis 
a, b, cont:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval ("O Programa Fará o Intervalo Numérico Desejado")

escreval ("Digite o número inicial:")
leia (a)

escreval ("Digite o número final:")
leia (b)

se (a<=b) entao
      para cont de a ate b faca
           escreval ("conta =",cont)
      fimpara
senao
     para cont de a ate b passo -1 faca
           escreval ("conta =",cont)
     fimpara
fimse

Fimalgoritmo