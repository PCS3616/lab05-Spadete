@ /0000
SC INICIO
HM  =0

@ /0400
INICIO  K =0
LOOP	LD PARADA
	JZ FIM;. pular para fim da subrotina se parada for 0
	LD IMPAR
	AD DOIS
	MM IMPAR
	AD RES
	MM RES
ENDERECO MM /104
	LD PARADA
	SB UM
	MM PARADA
	LD ENDERECO
	AD DOIS 
	MM ENDERECO
	JP LOOP
FIM	RS INICIO



@ /0100; salvando os endereços
	K =0; 0100
	K =1; 0102
	

@ /0500
IMPAR K =1; SALVANDO EM 0500 OS MEUS IMPARES
RES K =1; RESULTADO DA SOMA
PARADA K =63
DOIS K =2
UM K =1
