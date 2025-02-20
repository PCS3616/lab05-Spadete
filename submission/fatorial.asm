@ /0000
SC INICIO; chamada da subrotina
HM /0000; halt machine

@ /0200
INICIO K /0000; inicio da subrotina
LD N; Load inicial de N
JZ FIM; caso seja 0
MM RES

;Inicio do loop
LOOP LD N; load de N da memoria
SB M; subtrair 1
JZ FIM; caso seja 0
MM N; atualizar o valor de N
ML RES; multiplicaçao pelo valor acumulado no resultado
MM RES; atualizaçao do valor acumulado no resultado
JP LOOP; caso nao seja 0
FIM RS INICIO; fim da subrotina

@ /0300
M K /0001; endereço com o valor 1 salvo

@ /0100
N K =3
RES K /0001; resultado do fatorial
