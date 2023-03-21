Algoritmo "CampoMinado"
// Disciplina   : LP
// Descrição   : Campo Minado
// Autor(a)    : MARIA CLARA E MARIANA GRECO 3JD
// Data atual  : 17/03/2023
Var
// Seção de Declarações das variáveis
tabuleiro1: vetor [1..5, 1..5] de inteiro

//O tabuleiro2 está como caracter para que seja possível receber *
tabuleiro2: vetor [1..5, 1..5] de caracter
linha:inteiro
coluna: inteiro
l,c: inteiro
iniciar : caracter
score: inteiro
score := 0

Inicio

// Seção de Comandos, procedimento, funções, operadores, etc...

tabuleiro1[1,1]:= 1
tabuleiro1[1,4]:= 1
tabuleiro1[2,5]:= 1
tabuleiro1[3,2]:= 1
tabuleiro1[3,5]:= 1
tabuleiro1[4,4]:= 1
tabuleiro1[5,3]:= 1

// Pergunta ao usuário

escreva ("Boas vindas ao Campo Minado! Pronto para explodir?")
escreval (" Digite tecla enter para continuar.")
leia (iniciar)
// Desenho do tabuleiro
// Criamos uma variável para linha e coluna (l,c)
// O 1° para está "selecionando" a linha 1 até a linha 5 da tabela
// O 2° para está selecionando a coluna 2 até a linha 5 da tabela
// Ele está dentro do 1° para porque ele não deixa de selecionar
// a linha enquanto seleciona a coluna.
para l de 1 ate 5 faca
     para c de 1 ate 5 faca
     tabuleiro2[l,c]:= " - * - "
     //Mostra na tela
     escreva (tabuleiro2 [l,c])
     fimpara
escreval
fimpara
escreval
repita
escreval ("Escolha uma linha de 1 a 5")
leia (linha)

escreval ("Escolha uma coluna de 1 a 5")
leia (coluna)

23
escreval ("Você perdeu! Tente novamente.")
tabuleiro2[linha,coluna]:= " - 1 - "
senao
escreva ("Você está ganhando! Continue assim.")
score := score +1
tabuleiro2[linha,coluna]:= " - 0 - "
fimse

//Mostrar as opções na tela
escreval
para l de 1 ate 5 faca
     para c de 1 ate 5 faca
     escreva (tabuleiro2 [l,c])
     fimpara
escreval
fimpara

se score = 18 entao
escreva ("Uhul! Você venceu.")
fimse

ate (tabuleiro1[linha, coluna] = 1) ou (score = 18)
     
Fimalgoritmo
