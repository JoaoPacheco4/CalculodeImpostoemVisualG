Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/03/2024
Var
// Seção de Declarações das variáveis 
INSS: real
IRRF:real
IPVA:real
salario: real
salario_real: real
SN: inteiro
idc: inteiro
vdc: real
porc: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVAL("Qual o seu salário?")
leia(salario)
ESCREVAL("Você possui um veículo? Se sim, digite 1, se não, digite 2")
leia(SN)
se(SN=1) entao
ESCREVAL("Digite 1 se ele for flex, 2 se for um gnv, 3 se for uma moto e 4 se for elétrico")
LEIA(SN)
se(SN=1) entao
porc <- 0.04
FIMSE
se(SN=2) entao
porc <- 0.015
FIMSE
se(SN=3) entao
porc <- 0.02
FIMSE
se(SN=4) entao
porc <- 0.005
FIMSE
ESCREVAL("Quantos anos você possui esse carro?")
LEIA(idc)
se(idc<=20) entao
ESCREVAL("Qual foi o valor do carro?")
LEIA(vdc)
IPVA <- vdc * porc
FIMSE
FIMSE


se(salario<2112.01) entao
IRRF<-0
senao
  se(salario<2826.66) entao
  IRRF<-158.40
  senao
    se(salario<3751.06) entao
    IRRF<-370.40
    senao
      se(salario<4664.69) entao
      IRRF<-651.73
      senao
      IRRF<-884.96
FIMSE
FIMSE
FIMSE
FIMSE
se(salario<1412.01) entao
INSS<-0.075
senao
  se(salario<2666.69) entao
  INSS<-0.09
  senao
    se(salario<4000.04) entao
    INSS<-0.12
    senao
    INSS<-0.14
FIMSE
FIMSE
FIMSE
salario_real<- salario * (1 - INSS) - IRRF - IPVA
ESCREVAL("Então, você recebe ", salario_real)

Fimalgoritmo
