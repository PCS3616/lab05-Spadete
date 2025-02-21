@ =0
	GD /000; li primeiro valor
	SB CONSTANTE3030; converti pra hexa
	MM X
	GD /000; espaço da entrada
	GD /000; li segundo valor
	SB CONSTANTE3030; converti pra hexa
	AD X
	MM RES
	ML SHIFT; pegando o nibble menos significativo
	MM D2RES
	LD NOVE
	SB D2RES; vendo se d2res maior que 0xA
	JN AJUSTE
	LD RES
	AD CONSTANTE3030
	PD /100
	HM =0

@ /0100
AJUSTE LD RES; ajustando a conta caso haja carry out
	SB CONSTANTEA
	AD CONSTANTE0100
	AD CONSTANTE3030
	PD /100
	HM =0
	
	
@ /0200
X	k =0
RES	k =0
D2RES	k =0
CONSTANTE3030 K /3030
CONSTANTEA K /000A
CONSTANTE0100 K /0100
SHIFT	K /1000
NOVE	K /9000



