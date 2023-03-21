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

Inicio

// Seção de Comandos, procedimento, funções, operadores, etc...

escreval ("                                                         ")
escreval ("                                                         ")
escreval ("   __¦¯¯¯¦_¦                                             ")
escreval (" _¦¦¯     ¯¦                                             ")
escreval (" ¦¦¯       ¯_¦¯¦¦_ ¯¦¦¦¦¦¦¦¦_¦¦¦¦¦_ ¯¦¦¦¦¦¦¦¦_  _¦¦¯¦¦_  ")
escreval (" ¦¦        ¦¦   ¦¦   ¦¦    ¦¦    ¦¦   ¦¦   ¯¦¦ ¦¦¯   ¯¦¦ ")
escreval (" ¦¦_        _¦¦¦¦¦   ¦¦    ¦¦    ¦¦   ¦¦    ¦¦ ¦¦     ¦¦ ")
escreval (" ¯¦¦_     _¯¦   ¦¦   ¦¦    ¦¦    ¦¦   ¦¦   _¦¦ ¦¦_   _¦¦ ")
escreval ("   ¯¯¦¦¦¦¦¯¯¦¦¦¦¯¦¦_¦¦¦¦  ¦¦¦¦  ¦¦¦¦_ ¦¦¦¦¦¦¯   ¯¦¦¦¦¦¯  ")
escreval ("                                      ¦¦                 ")
escreval ("                                    _¦¦¦¦_               ")
escreval ("                                                         ")

escreval ("                                                               ")
escreval ("                   __                            __            ")
escreval ("  ¯¦¦¦¦_     _¦¦¦¯ ¦¦                          ¯¦¦¦            ")
escreval ("    ¦¦¦¦    ¦¦¦¦                                 ¦¦            ")
escreval ("    ¦ ¦¦   _¦ ¦¦ ¯¦¦¦ ¯¦¦¦¦¦¦¦¦_  _¦¯¦¦_    _¦¯¯¦¦¦   _¦¦¯¦¦_  ")
escreval ("    ¦  ¦¦  ¦¯ ¦¦   ¦¦   ¦¦    ¦¦ ¦¦   ¦¦  _¦¦    ¦¦  ¦¦¯   ¯¦¦ ")
escreval ("    ¦  ¦¦_¦¯  ¦¦   ¦¦   ¦¦    ¦¦  _¦¦¦¦¦  ¦¦¦    ¦¦  ¦¦     ¦¦ ")
escreval ("    ¦  ¯¦¦¯   ¦¦   ¦¦   ¦¦    ¦¦ ¦¦   ¦¦  ¯¦¦    ¦¦  ¦¦_   _¦¦ ")
escreval ("  _¦¦¦_ ¯¯  _¦¦¦¦_¦¦¦¦_¦¦¦¦  ¦¦¦¦_¦¦¦¦¯¦¦_ ¯¦¦¦¦¯¦¦¦_ ¯¦¦¦¦¦¯  ")
escreval ("                                                               ")
escreval ("                                                               ")
escreval ("                                                               ")
escreval ("")
escreval ("")




tabuleiro1[1,1]:= 1
tabuleiro1[1,4]:= 1
tabuleiro1[2,5]:= 1
tabuleiro1[3,2]:= 1
tabuleiro1[3,5]:= 1
tabuleiro1[4,4]:= 1
tabuleiro1[5,3]:= 1

// Pergunta ao usuário

escreval ("Boas vindas ao Campo Minado!")
escreval ("Pronto para explodir?")
escreval ("Digite a tecla ENTER para continuar.")
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

se tabuleiro1[linha,coluna] = 1 entao
escreval ("Você encontrou uma bomba e explodiu! Tente novamente.")
tabuleiro2[linha,coluna]:= " - 1 - "

escreval ("")
escreval ("              \|/                ")
escreval ("            `--+--'              ")
escreval ("              /|\                ")
escreval ("             ' | '               ")
escreval ("               |                 ")
escreval ("               |                 ")
escreval ("           ,--'#`--.             ")
escreval ("           |#######|             ")
escreval ("        _.-'#######`-._          ")
escreval ("     ,-'###############`-.       ")
escreval ("   ,'#####################`,     ")
escreval ("  /#########################\    ")
escreval (" |###########################|   ")
escreval ("|#############################|  ")
escreval ("|#############################|  ")
escreval ("|#############################|  ")
escreval ("|#############################|  ")
escreval (" |###########################|   ")
escreval ("  \#########################/    ")
escreval ("   `.#####################,'     ")
escreval ("     `._###############_,'       ")
escreval ("        `--..#####..--'          ")
escreval ("")

senao
escreva ("Você encontrou um espaço livre! Continue assim.")
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
escreva ("Uhul! Você venceu!")
escreval ("                        ")
escreval ("     _______________    ")
escreval ("    |@@@@|     |####|   ")
escreval ("    |@@@@|     |####|   ")
escreval ("    |@@@@|     |####|   ")
escreval ("    \@@@@|     |####/   ")
escreval ("     \@@@|     |###/    ")
escreval ("      `@@|_____|##'     ")
escreval ("           (O)          ")
escreval ("        .-'''''-.       ")
escreval ("      .'  * * *  `.     ")
escreval ("     :  *       *  :    ")
escreval ("    :~ B O M B E R ~:   ")
escreval ("    :~ M A S T E R ~:   ")
escreval ("     :  *       *  :    ")
escreval ("      `.  * * *  .'     ")
escreval ("        `-.....-'       ")
escreval ("")
fimse
ate (tabuleiro1[linha, coluna] = 1) ou (score = 18)
     
Fimalgoritmo