   .data 
   Lixo1: .asciiz "Execute value: "
#   #Lixo2: .asciiz "Execute value: "
#   #Lixo3: .asciiz "Execute value: "
   Executev: .asciiz "Execute value: "
   Decodev: .asciiz "Decode value: "
   Writebackv: .asciiz "Writeback value: "
   Enter: .asciiz "\n"
   Space: .asciiz " "
   Fetchv: .asciiz "Fetch value: "

.text



# instrucao Add
lui $s2, 0x1001
ori $s2, $s2, 0x0000 	# $s2 = array iniciando em 0x10010000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, RD) 


addi $t0, $0, 000	# 000 é a nossa representação do OP/Funct para add (Só usaremos 3 bits para esse campo pois só criamos 5 instruções distintas)
sw $t0, 0($s2)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s2

addi $t0, $0, 0 	# $t0 representa o endereço do primeiro registrador (rs1)
sw $t0, 4($s2)		# colocamos o endereco do primeiro registrador (rs1) dentro da posicao 1 do vetor $s2

addi $t0, $0, 0		# $t0 representa o endereço do segundo registrador (rt1)
sw  $t0, 8($s2)		# colocamos o endereco do segundo registrador (rt1) dentro da posicao 2 do vetor $s2

add $t0, $0, 0		# $t0 representa o endereço do terceiro registrador (rd1)
sw $t0, 12($s2)		# colocamos o endereço do terceiro registrador (rd1) dentro da posicao 3 do vetor $s2


#Sub
lui $s3, 0x1002
ori $s3, $s3, 0x0000 	# $s2 = array iniciando em 0x10020000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, RD) 

addi $t0, $0, 001	# 001 é a nossa representação do OP/Funct para sub
sw $t0, 0($s3)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s3

addi $t0, $0, 0	# $t0 representa o endereço do primeiro registrador de sub (rs2)
sw $t0, 4($s3)		# colocamos o endereco do primeiro registrador (rs2) dentro da posicao 1 do vetor $s3

addi $t0, $0, 0	# $t0 representa o endereco do segundo registrador de sub (rt2)
sw $t0, 8($s3)		# colocamos o endereco do segundo registrador (rt2) dentro da posicao 2 do vetor $s3

addi $t0, $0, 0  	# $t0 representa o endereco do terceiro registrador de sub (rd2)
sw $t0, 12($s3)		# colocamos o endereco do terceiro registrador (rd2) dentro da posicao 3 do vetor $s3


#And
lui $s4, 0x1003
ori $s4, $s4, 0x0000 	# $s4 = array iniciando em 0x10030000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, RD) 

addi $t0, $0, 010	# 010 é a nossa representação do OP/Funct para and
sw $t0, 0($s4)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s4

addi $t0, $0, 0	# $t0 representa o endereço do primeiro registrador de and (rs3)
sw $t0, 4($s4)		# colocamos o endereco do primeiro registrador (rs3) dentro da posicao 1 do vetor $s4

addi $t0, $0, 0		# $t0 representa o endereco do segundo registrador de and (rt3)
sw $t0, 8($s4)		# colocamos o endereco do segundo registrador (rt3) dentro da posicao 2 do vetor $s4

addi $t0, $0, 0		# $t0 representa o endereco do terceiro registrador de and (rd3)
sw $t0, 12($s4)		# colocamos o endereco do terceiro registrador (rd3) dentro da posicao 3 do vetor $s4

#Or
lui $s5, 0x1004
ori $s5, $s5, 0x0000 	# $s5 = array iniciando em 0x10040000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, RD) 

addi $t0, $0, 011	# 011 é a nossa representação do OP/Funct para or
sw $t0, 0($s5)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s5

addi $t0, $0, 0	# $t0 representa o endereço do primeiro registrador de or (rs4)
sw $t0, 4($s5)		# colocamos o endereco do primeiro registrador (rs4) dentro da posicao 1 do vetor $s5

addi $t0, $0, 0	# $t0 representa o endereco do segundo registrador de or (rt4)
sw $t0, 8($s5)		# colocamos o endereco do segundo registrador (rt4) dentro da posicao 2 do vetor $s5

addi $t0, $0, 0	# $t0 representa o endereco do terceiro registrador de or (rd4)
sw $t0, 12($s5)		# colocamos o endereco do terceiro registrador (rd4) dentro da posicao 3 do vetor $s5

#Addi
lui $s6, 0x1005
ori $s6, $s6, 0x0000 	# $s6 = array iniciando em 0x10050000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, IMM) 

addi $t0, $0, 100	# 100 é a nossa representação do OP/Funct para addi
sw $t0, 0($s6)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s6

addi $t0, $0, 0	# $t0 representa o endereço do primeiro registrador de addi (rs5)
sw $t0, 4($s6)		# colocamos o endereco do primeiro registrador (rs5) dentro da posicao 1 do vetor $s6

addi $t0, $0, 0	# $t0 representa o endereco do segundo registrador de addi (rt5)
sw $t0, 8($s6)		# colocamos o endereco do segundo registrador (rt5) dentro da posicao 2 do vetor $s6

addi $t0, $0, 14	# $t0 representa o imediato de addi (imm) (coloquei 14 mas pode ser qualquer numero)
sw $t0, 12($s6)		# colocamos o imediato (imm) dentro da posicao 3 do vetor $s6


# PIPELINE
#########################################################################

add $a0, $0, $s6	# recebendo o vetor da instrução addi
jal Fetch


#########################################################################

add $a0, $0, $v0        # vetor addi vai para Decode
jal Decode
add $t3, $0, $v0	# $t3 = retorno RS de Decode da instrucao addi
add $t4, $0, $v1	# $t4 = retorno RT ou IMM de Decode da instrucao addi

add $a0, $0, $s2        # recebendo o vetor add no Fetch
jal Fetch 

#########################################################################

add $a0, $0, $t3        # $a0 = $t3 = retorno RS de Decode da instrucao addi que vai para Execute
add $a1, $0, $t4	# $a1 = $t4 = retorno RT ou IMM de Decode da instrucao addi que vai para Execute
add $a3, $0, $s6	# $a3 = vetor de instrucao addi entrando como argumento de Execute
jal Execute
add $t3, $0, $v0	# $t3 = $v0 = resultado da ALU da instrucao addi no estágio Execute
add $t4, $0, $v1	# $t4 = $v1 = endereco de destino da instrucao addi que veio do estágio Execute

add $a0, $0, $s2	# recebendo o vetor add em Decode
jal Decode
add $t5, $0, $v0	# $t5 = retorno RS de Decode da instrucao add
add $t6, $0, $v1	# $t5 = retorno RT ou IMM de Decode da intrucao add

add $a0, $0, $s5	# recebendo o vetor or no Fetch
jal Fetch		

###########################################################################

add $a0, $0, $t3	# $a0 = $t3 = resultado da ALU da instrucao addi que vai para Writeback
add $a2, $0, $s6	# $a2 = vetor de instrucao addi entrando como argumento de Writeback
jal Writeback		

#add $a0, $0, $t5	# $a0 = retorno RS de Decode da instrucao add que vai para Execute
add $a0, $0, $t3	# $a0 = resultado da ALU da instrucao addi no estágio Execute (ENCAMINHAMENTO)
#add $a1, $0, $t6	# $a1 = retorno RT ou IMM de Decode da instrucao add que vai para Execute
add $a1, $0, $t3	# $a1 = resultado da ALU da instrucao addi no estágio Execute (ENCAMINHAMENTO)
add $a3, $0, $s2	# $a3 = vetor de instrucao add entrando como argumento de Execute
jal Execute
add $t3, $0, $v0	# $t3 = resultado da ALU da instrucao add no estagio Execute
add $t4, $0, $v1	# $t4 = endereco de destino da instrucao add que veio do etagio Execute

add $a0, $0, $s5	# recebendo vetor or em decode
jal Decode
add $t5, $0, $v0	# $t5 = retorno RS de Decode da instrucao or
add $t6, $0, $v1	# $t6 = retorno RT ou IMM de Decode da instrucao or

add $a0, $0, $s4	# recebendo vetor and no Fetch
jal Fetch		

###########################################################################

add $a0, $0, $t3	# $a0 = resultado da ALU da instrucao add que vai para Writeback
add $a2, $0, $s2	# $a2 = vetor de instrucao add entrando como argumento de Writeback
jal Writeback

#add $a0, $0, $t5	# $a0 = retorno RS de Decode da instrucao or que vai para Execute
add $a0, $0, $t3	# $a0 = resultado da ALU da instrucao add no estagio Execute (ENCAMINHAMENTO)
#add $a1, $0, $t6 	# $a1 = retorno RT ou IMM de Decode da instrucao or que vai para Execute
lw $a1, 8($s6)		# $a1 = valor que está dentro do registrador destino da instrucao addi (~~ENCAMINHAMENTO)
add $a3, $0, $s5	# $a3 = vetor de instrucao or entrando como argumento de Execute
jal Execute
add $t3, $0, $v0	# $t3 = resultado da ALU da instrucao or no estagio Execute
add $t4, $0, $v1	# $t4 = endereco de destino da instrucao or que veio do estagio Execute

add $a0, $0, $s4	# recebendo vetor and em Decode
jal Decode 
add $t5, $0, $v0	# $t5 = retorno RS de Decode da instrucao and
add $t6, $0, $v1	# $t6 = retorno RT ou IMM de Decode da instrucao and

add $a0, $0, $s3	# recebendo vetor sub no Fetch
jal Fetch

###########################################################################

add $a0, $0, $t3	# $a0 = resultado da ALU da instrucao or que vai para WriteBack
add $a2, $0, $s5	# $a2 = vetor de instrucao or entrando como argumento de Writeback
jal Writeback

#add $a0, $0, $t5	# $a0 = retorno RS de Decode da instrucao and que vai para Execute
add $a0, $0, $t3	# $a0 = resultado da ALU do Execute de or (ENCAMINHAMENTO)
#add $a1, $0,  $t6	# $a1 = retorno RT ou IMM de Decode da instrucao and que vai para Execute 
lw $a1, 8($s6)		# $a1 = valor que está dentro do registrador destino da instrucao addi (~~ENCAMINHAMENTO)
add $a3, $0, $s4	# $a3 = vetor de instrucao and entrando como argumento de Execute
jal Execute
add $t3, $0, $v0	# $t3 = resultado da ALU da instrucao and no estagio Execute
add $t4, $0, $v1	# $t4 = endereco de destino da instrucao and que veio do estagio Execute

add $a0, $0, $s3	# recebendo vetor sub em Decode
jal Decode
add $t5, $0, $v0	# $t5 = retorno RS de Decode da instrucao sub
add $t6, $0, $v1	# $t6 = retorno RT ou IMM de Decode da instrucao sub

###########################################################################

add $a0, $0, $t3	# $a0 = resultado da ALU da instrucao and que vai pra Writeback
add $a2, $0, $s4	# $a2 = vetor de instrucao and entrando como argumento de Writeback
jal Writeback

#add $a0, $0, $t5	# $a0 = retorno RS de Decode da instrucao sub que vai para Execute
add $a0, $0, $t3	# $a0 = resultado da ALU do Execute da instrucao and (ENCAMINHAMENTO)
#add $a1, $0, $t6	# $a1 = retorno RT ou IMM de Decode da instrucao sub que vai para Execute
lw $a1, 8($s6)		# $a1 = valor que está dentro do registrador destino da instrucao addi (~~ENCAMINHAMENTO)
add $a3, $0, $s3	# $a3 = vetor de instrucao sub entrando como argumento de Execute
jal Execute
add $t3, $0, $v0	# $t3 = resultado da ALU da instrucao sub no estagio Execute
add $t4, $0, $v1	# $t4 = endereco de destino da instrucao sub que veio do estagio Execute

###########################################################################

add $a0, $0, $t3	# $a0 = resultado da ALU da instrucao sub que vai para Writeback
add $a2, $0, $s3	# $a2 = vetor de instrucao sub entrando como argumento de Writeback
jal Writeback

##########################################################################
j fim

Fetch:
	add $t0, $0, $a0
        
        li  $v0, 4
        la  $a0, Fetchv #escreve Fetch na tela
        syscall
        
        move $v0,$t0 
        move $a0, $v0 
        li $v0,1 #escreve valor do Fetch na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Enter na tela
        syscall
        
        add $v0, $0, $t0
	jr $ra
Decode:
	# $a0 é o meu vetor com a instrucao dentro
	
	lw $t0, 0($a0) 		# $t0 = OP/Funct do vetor instrucao $a0
	
	addi $t1, $0, 100	# $t1 = OPCode de addi
	beq $t0, $t1, typeifunct
	bne $t0, $t1, typerfunct
	jr $ra
	
	typeifunct:
		lw $t1 4($a0) 	# $t1 = conteudo de RS
		lw $t2 12($a0) 	# $t2 = conteudo de IMM
		
		li  $v0, 4
                la  $a0, Decodev #escreve Decode na tela
                syscall
        
                move $v0,$t1 
                move $a0, $v0 
                li $v0,1 #escreve valor do Decode na tela
                syscall
        
                li  $v0, 4
                la  $a0, Space #escreve Space na tela
                syscall
        
                move $v0,$t2 
                move $a0, $v0 
                li $v0,1 #escreve valor do Decode na tela
                syscall
        
                li  $v0, 4
                la  $a0, Enter #escreve Enter na tela
                syscall
                
                move $v0, $t1	# $v0 = conteudo de RS
		move $v1, $t2	# $v1 = conteudo de IMM
		
		jr $ra
		
	typerfunct:
		lw $t1 4($a0) 	# $t1 = RS
		lw $t2 8($a0) 	# $t2 = RT
		
		li  $v0, 4
                la  $a0, Decodev #escreve Decode na tela
                syscall
        
                move $v0,$t1 
                move $a0, $v0 
                li $v0,1 #escreve valor do Decode na tela
                syscall
        
                li  $v0, 4
                la  $a0, Space #escreve Space na tela
                syscall
        
                move $v0,$t2 
                move $a0, $v0 
                li $v0,1 #escreve valor do Decode na tela
                syscall
        
                li  $v0, 4
                la  $a0, Enter #escreve Enter na tela
                syscall
                
                move $v0, $t1	# $v0 = conteudo de RS
		move $v1, $t2	# $v1 = conteudo de IMM
		
		
		jr $ra
		
	
Execute:	
	# $a0 = RS  	$a1 = RT ou IMM  	$a3 = vetor de instrucao
	
	add $t1, $0, $a0	# $t4 = $v0 = conteudo de RS
	add $t2, $0, $a1	# $t5 = %v1 = conteudo de RT ou de IMM
	lw $s7, 0($a3)
	
	add $t0, $0, 001
	beq $t0, $s7, operacaosub	# Se 001 == Op/Funct da instrucao que entrou no estagio EXECUTE, entao a ALU vai fazer subtracao
	
	add $t0, $0, 010		# $t0 = OP/Funct de AND
	beq $t0, $s7, operacaoand	# Se 010 == OP/Funct da instrucao que entrou no estagio EXECUTE, entao a ALU vai fazer and
	
	add $t0, $0, 011		# $t0 = OP/Funct de OR
	beq $t0, $s7, operacaoor	# Se 011 == Op/Funct da instrucao que entrou no estagio ECECUTE, entao a ALU vai fazer or
	
	add $t0, $0, 000		# $t3 = OP/Funct de ADD
	beq $t0, $s7, operacaoadd	# Se 000 == Op/Funct da instrucao que entrou no estagio EXECUTE, entao a ALU vai fazer add
					
	add $t0, $0, 100
	beq $t0, $s7, operacaoaddi		
					
	jr $ra
	
						# Senao entao o OP/Funct só pode ser da instrucao addi
						
	operacaoaddi:				
		add $t0, $t1, $t2		# $t4 = RS	$t5 = IMM
		
		li  $v0, 4
                la  $a0, Executev #escreve Executev na tela
                syscall
        
                move $v0,$t0 
                move $a0, $v0 
                li $v0,1 #escreve valor do Executev na tela
                syscall
        
                li  $v0, 4
                la  $a0, Enter #escreve Executev na tela
                syscall
		
		move $v0, $t0			# $v0 = RS+IMM
		jr $ra
	operacaosub:
		sub $t0, $t1, $t2
		
		li  $v0, 4
                la  $a0, Executev #escreve Executev na tela
                syscall
        
                move $v0,$t0 
                move $a0, $v0 
                li $v0,1 #escreve valor do Executev na tela
                syscall
        
                li  $v0, 4
                la  $a0, Enter #escreve Executev na tela
                syscall
                
		move $v0, $t0
                jr $ra
	operacaoand:
		and $t0, $t1, $t2
		
		li  $v0, 4
                la  $a0, Executev #escreve Executev na tela
                syscall
        
                move $v0,$t0 
                move $a0, $v0 
                li $v0,1 #escreve valor do Executev na tela
                syscall
        
                li  $v0, 4
                la  $a0, Enter #escreve Executev na tela
                syscall
		
		move $v0, $t0
		jr $ra
	operacaoor:
		or $t0, $t1, $t2
		
		li  $v0, 4
                la  $a0, Executev #escreve Executev na tela
                syscall
        
                move $v0,$t0 
                move $a0, $v0 
                li $v0,1 #escreve valor do Executev na tela
                syscall
        
                li  $v0, 4
                la  $a0, Enter #escreve Executev na tela
                syscall
                
		move $v0, $t0
		jr $ra
	operacaoadd:
		add $t0, $t1, $t2
		
		li  $v0, 4
                la  $a0, Executev #escreve Executev na tela
                syscall
        
                move $v0,$t0 
                move $a0, $v0 
                li $v0,1 #escreve valor do Executev na tela
                syscall
        
                li  $v0, 4
                la  $a0, Enter #escreve Executev na tela
                syscall
                
		move $v0, $t0        
		jr $ra	
	
	
Writeback: 
	# $a0 = %v0 = resultado da ALU 	 $a2 = vetor da instrucao
	move $t2, $a0
	
	lw $t0, 0($a2) 
	addi $t1, $0, 100
	
	beq $t0, $t1, tipoi
	bne $t0, $t1, tipor
	
	jr $ra
	
	
	tipor:
		
		sw $t2, 12($a2)
		
		li  $v0, 4
                la  $a0, Writebackv #escreve Writebackv na tela
                syscall
        
                move $v0,$t2 
                move $a0, $v0 
                li $v0,1 #escreve valor do Writebackv na tela
                syscall
        
               li  $v0, 4
               la  $a0, Enter #escreve Writebackv na tela
               syscall
        
		jr $ra
	
	tipoi:
		sw $t2, 8($a2)
		li  $v0, 4
                la  $a0, Writebackv #escreve Writebackv na tela
                syscall
        
                move $v0,$t2 
                move $a0, $v0 
                li $v0,1 #escreve valor do Writebackv na tela
                syscall
        
                li  $v0, 4
                la  $a0, Enter #escreve Writebackv na tela
                syscall
		
		jr $ra
fim:		
		
	li $v0, 10 
        syscall
