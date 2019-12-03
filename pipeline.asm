.data 
   Lixo1: .asciiz "Execute value: "
   #Lixo2: .asciiz "Execute value: "
  # Lixo3: .asciiz "Execute value: "
   Executev: .asciiz "Execute value: "
   Decodev: .asciiz "Decode value: "
   Writebackv: .asciiz "Writeback value: "
   Enter: .asciiz "\n"
   Space: .asciiz " "
   Fetchv: .asciiz "Fetch value: "

.text
lui $s1, 0x1000
ori $s1, $s1, 0x0000	# $s1 = array iniciando em 0x10000000. Essse array tem 14 posições (0 a 13)

#registradores para comparar funct e opcode
add $s0, $0, 100
add $s7, $0, 000
add $t7, $0, 001
add $t8, $0, 010
add $t9, $0, 011


add $t0, $0, 14		# como a ultima posição é 13, a condição para parar de preencher o vetor é estar na posiçao 14
add $t1, $0, 0		# contator i que vai ir de 0 a 15
FOR:
	sll $t2, $t1, 2		# $t2 = i*4
	add $t3, $t2, $s1	# $t3 = i*4 + endereco de base do array $s1
	sw $t1, 0($t3)		# colocando i dentro da posição do $t3 do array


	add $t1, $t1, 1		# i = i+1
	beq $t1, $t0, fimloop 	# se i == 15 saia do loop
	j FOR

fimloop:

# instrucao Add
lui $s2, 0x1001
ori $s2, $s2, 0x0000 	# $s2 = array iniciando em 0x10010000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, RD) 


addi $t0, $0, 000	# 000 é a nossa representação do OP/Funct para add (Só usaremos 3 bits para esse campo pois só criamos 5 instruções distintas)
sw $t0, 0($s2)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s2

addi $t0, $s1, 0 	# $t0 representa o endereço do primeiro registrador (rs1)
sw $t0, 4($s2)		# colocamos o endereco do primeiro registrador (rs1) dentro da posicao 1 do vetor $s2

addi $t0, $s1, 4	# $t0 representa o endereço do segundo registrador (rt1)
sw  $t0, 8($s2)		# colocamos o endereco do segundo registrador (rt1) dentro da posicao 2 do vetor $s2

add $t0, $s1, 8		# $t0 representa o endereço do terceiro registrador (rd1)
sw $t0, 12($s2)		# colocamos o endereço do terceiro registrador (rd1) dentro da posicao 3 do vetor $s2


#Sub
lui $s3, 0x1002
ori $s3, $s3, 0x0000 	# $s2 = array iniciando em 0x10020000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, RD) 

addi $t0, $0, 001	# 001 é a nossa representação do OP/Funct para sub
sw $t0, 0($s3)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s3

addi $t0, $s1, 12	# $t0 representa o endereço do primeiro registrador de sub (rs2)
sw $t0, 4($s3)		# colocamos o endereco do primeiro registrador (rs2) dentro da posicao 1 do vetor $s3

addi $t0, $s1, 16	# $t0 representa o endereco do segundo registrador de sub (rt2)
sw $t0, 8($s3)		# colocamos o endereco do segundo registrador (rt2) dentro da posicao 2 do vetor $s3

addi $t0, $s1, 20	# $t0 representa o endereco do terceiro registrador de sub (rd2)
sw $t0, 12($s3)		# colocamos o endereco do terceiro registrador (rd2) dentro da posicao 3 do vetor $s3


#And
lui $s4, 0x1003
ori $s4, $s4, 0x0000 	# $s4 = array iniciando em 0x10030000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, RD) 

addi $t0, $0, 010	# 010 é a nossa representação do OP/Funct para and
sw $t0, 0($s4)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s4

addi $t0, $s1, 24	# $t0 representa o endereço do primeiro registrador de and (rs3)
sw $t0, 4($s4)		# colocamos o endereco do primeiro registrador (rs3) dentro da posicao 1 do vetor $s4

addi $t0, $s1, 28	# $t0 representa o endereco do segundo registrador de and (rt3)
sw $t0, 8($s4)		# colocamos o endereco do segundo registrador (rt3) dentro da posicao 2 do vetor $s4

addi $t0, $s1, 32	# $t0 representa o endereco do terceiro registrador de and (rd3)
sw $t0, 12($s4)		# colocamos o endereco do terceiro registrador (rd3) dentro da posicao 3 do vetor $s4

#Or
lui $s5, 0x1004
ori $s5, $s5, 0x0000 	# $s5 = array iniciando em 0x10040000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, RD) 

addi $t0, $0, 011	# 011 é a nossa representação do OP/Funct para or
sw $t0, 0($s5)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s5

addi $t0, $s1, 36	# $t0 representa o endereço do primeiro registrador de or (rs4)
sw $t0, 4($s5)		# colocamos o endereco do primeiro registrador (rs4) dentro da posicao 1 do vetor $s5

addi $t0, $s1, 40	# $t0 representa o endereco do segundo registrador de or (rt4)
sw $t0, 8($s5)		# colocamos o endereco do segundo registrador (rt4) dentro da posicao 2 do vetor $s5

addi $t0, $s1, 44	# $t0 representa o endereco do terceiro registrador de or (rd4)
sw $t0, 12($s5)		# colocamos o endereco do terceiro registrador (rd4) dentro da posicao 3 do vetor $s5

#Addi
lui $s6, 0x1005
ori $s6, $s6, 0x0000 	# $s6 = array iniciando em 0x10050000. Esse array tem 4 posiçoes (OP/FUNCT, RS, RT, IMM) 

addi $t0, $0, 100	# 100 é a nossa representação do OP/Funct para addi
sw $t0, 0($s6)		# colocamos o OP/Funct dentro da posicao 0 do vetor $s6

addi $t0, $s1, 48	# $t0 representa o endereço do primeiro registrador de addi (rs5)
sw $t0, 4($s6)		# colocamos o endereco do primeiro registrador (rs5) dentro da posicao 1 do vetor $s6

addi $t0, $s1, 52	# $t0 representa o endereco do segundo registrador de addi (rt5)
sw $t0, 8($s6)		# colocamos o endereco do segundo registrador (rt5) dentro da posicao 2 do vetor $s6

addi $t0, $0, 14	# $t0 representa o imediato de addi (imm) (coloquei 14 mas pode ser qualquer numero)
sw $t0, 12($s6)		# colocamos o imediato (imm) dentro da posicao 3 do vetor $s6


#pipeline

add $a0, $0, $s6	# recebendo o vetor da instrução addi
jal Fetch

add $a0, $0, $v0        # vetor addi vai para Decode
jal Decode
	
add $a0, $0, $s2       # recebendo o vetor add no Fetch
jal Fetch 

add $a0, $0, $v0        # vetor addi vai para Execute
add $a1, $0, $v1
jal Execute

add $a0, $0, $v0        # vetor add vai para Decode
jal Decode

add $a0, $0, $s5        # vetor or vai para Fetch
jal Fetch

add $a0, $0, $v0        # vetor addi vai para Writeback
jal Writeback

add $a0, $0, $v0
add $a1, $0, $v1        # vetor add vai para Execute
jal Execute

add $a0, $0, $v0        # vetor or vai para Decode
jal Decode

add $a0, $0, $s4        # vetor and vai para Fetch
jal Fetch

add $a0, $0, $v0        # vetor add vai para Writeback
jal Writeback

add $a0, $0, $v0        # vetor or vai para Execute
add $a1, $0, $v1
jal Execute

add $a0, $0, $v0        # vetor and vai para Decode
jal Decode

add $a0, $0, $s3        # vetor sub vai para Fetch
jal Fetch

add $a0, $0, $v0        # vetor or vai para Writeback
jal Writeback

add $a0, $0, $v0        # vetor and vai para Execute
add $a1, $0, $v1
jal Execute

add $a0, $0, $v0        # vetor sub vai para Decode
jal Decode

add $a0, $0, $v0        # vetor and vai para Writeback
jal Writeback

add $a0, $0, $v0        # vetor sub vai para Decode
add $a1, $0, $v1
jal Execute

add $a0, $0, $v0        # vetor sub vai para Writeback
jal Writeback

#encerra programa
li $v0, 10 
syscall 
Fetch:
	move $t0, $a0
	
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
        
        move $v0, $t0
	jr $ra
Decode:
	#ADDI DECODE
	lw $t3, 0($s6)
	beq $s0, $t3,addifunct
	bne $s0, $t3, else

	addifunct:
	lw $t4, 4($s6)
	lw $t5, 12($s6)
	
	li  $v0, 4
        la  $a0, Decodev #escreve Decode na tela
        syscall
        
        move $v0,$t4 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Space #escreve Space na tela
        syscall
        
        move $v0,$t5 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Enter na tela
        syscall
        
	move $v0, $t4
	move $v1, $t5
        
        jr $ra
        
	else:
	
	lw $t3, 0($s2)
	beq $s7, $t3,addfunct
	
	lw $t3, 0($s3)
	beq $t7, $t3,subfunct
	
	lw $t3, 0($s4)
	beq $t8, $t3,andfunct
	
	lw $t3, 0($s5)
	beq $t9, $t3,orfunct

	addfunct:
	lw $t4, 4($s2)
	lw $t5, 8($s2)
	
	li  $v0, 4
        la  $a0, Decodev #escreve Decode na tela
        syscall
        
        move $v0,$t4 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Space #escreve Space na tela
        syscall
        
        move $v0,$t5 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Enter na tela
        syscall
	
	move $v0, $t4
	move $v1, $t5
	jr $ra
	
	subfunct:
	lw $t4, 4($s3)
	lw $t5, 8($s3)
	
	li  $v0, 4
        la  $a0, Decodev #escreve Decode na tela
        syscall
        
        move $v0,$t4 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Space #escreve Space na tela
        syscall
        
        move $v0,$t5 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Enter na tela
        syscall
	
	move $v0, $t4
	move $v1, $t5
	jr $ra
	
	
	andfunct:
	lw $t4, 4($s4)
	lw $t5, 8($s4)
	
	li  $v0, 4
        la  $a0, Decodev #escreve Decode na tela
        syscall
        
        move $v0,$t4 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Space #escreve Space na tela
        syscall
        
        move $v0,$t5 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Enter na tela
        syscall
	
	move $v0, $t4
	move $v1, $t5
	jr $ra
	
	orfunct:
	lw $t4, 4($s5)
	lw $t5, 8($s5)
	
	li  $v0, 4
        la  $a0, Decodev #escreve Decode na tela
        syscall
        
        move $v0,$t4 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Space #escreve Space na tela
        syscall
        
        move $v0,$t5 
        move $a0, $v0 
        li $v0,1 #escreve valor do Decode na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Enter na tela
        syscall
	
	move $v0, $t4
	move $v1, $t5
	jr $ra
	
Execute:	
	
	lw $t3, 0($s6)
	beq $s0, $t3,addifunct2
	bne $s0, $t3, else2

	addifunct2:
	lw $t4, 4($s6)
	lw $t5, 12($s6)
	add $t6, $t5, $t4
	
	li  $v0, 4
        la  $a0, Executev #escreve Executev na tela
        syscall
        
        move $v0,$t6 
        move $a0, $v0 
        li $v0,1 #escreve valor do Executev na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Executev na tela
        syscall
	
	move $v0, $t6
        jr $ra
        
	else2:
	
	lw $t3, 0($s2)
	beq $s7, $t3,addfunct2
	
	lw $t3, 0($s3)
	beq $t7, $t3,subfunct2
	
	lw $t3, 0($s4)
	beq $t8, $t3,andfunct2
	
	lw $t3, 0($s5)
	beq $t9, $t3,orfunct2

	addfunct2:
	lw $t4, 4($s2)
	lw $t5, 8($s2)
	add $t6,$t4,$t5
	
	li  $v0, 4
        la  $a0, Executev #escreve Executev na tela
        syscall
        
        move $v0,$t6 
        move $a0, $v0 
        li $v0,1 #escreve valor do Executev na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Executev na tela
        syscall
        
	move $v0, $t6
	jr $ra
	
	subfunct2:
	lw $t4, 4($s3)
	lw $t5, 8($s3)
	sub $t6,$t4,$t5
	
	li  $v0, 4
        la  $a0, Executev #escreve Executev na tela
        syscall
        
        move $v0,$t6 
        move $a0, $v0 
        li $v0,1 #escreve valor do Executev na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Executev na tela
        syscall
        
	move $v0, $t6
	jr $ra
	
	andfunct2:
	lw $t4, 4($s4)
	lw $t5, 8($s4)
	and $t6, $t4, $t5
	
	li  $v0, 4
        la  $a0, Executev #escreve Executev na tela
        syscall
        
        move $v0,$t6 
        move $a0, $v0 
        li $v0,1 #escreve valor do Executev na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Executev na tela
        syscall
        
	move $v0, $t6
	jr $ra
	
	orfunct2:
	lw $t4, 4($s5)
	lw $t5, 8($s5)
	or $t6, $t4, $t5
	
	li  $v0, 4
        la  $a0, Executev #escreve Executev na tela
        syscall
        
        move $v0,$t6 
        move $a0, $v0 
        li $v0,1 #escreve valor do Executev na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Executev na tela
        syscall
        
	move $v0, $t6
	jr $ra
	
Writeback: 
        move $t1, $a0 #talvez esse registrador dÊ merda 
        lw $t3, 0($s6)
	beq $s0, $t3,addifunct3
	bne $s0, $t3, else3
        
	addifunct3:
	sw $t1, 8($s6)
	
	li  $v0, 4
        la  $a0, Writebackv #escreve Writebackv na tela
        syscall
        
        move $v0,$t1 
        move $a0, $v0 
        li $v0,1 #escreve valor do Writebackv na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Writebackv na tela
        syscall
        
	move $v0, $t1
        jr $ra
        
	else3:
	
	lw $t3, 0($s2)
	beq $s7, $t3,addfunct3
	
	lw $t3, 0($s3)
	beq $t7, $t3,subfunct3
	
	lw $t3, 0($s4)
	beq $t8, $t3,andfunct3
	
	lw $t3, 0($s5)
	beq $t9, $t3,orfunct3

	addfunct3:
	sw $t1, 12($s2)
	
	li  $v0, 4
        la  $a0, Writebackv #escreve Writebackv na tela
        syscall
        
        move $v0,$t1 
        move $a0, $v0 
        li $v0,1 #escreve valor do Writebackv na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Writebackv na tela
        syscall
        
	move $v0, $t1
	jr $ra
	
	subfunct3:
	sw $t1, 12($s3)
	
	li  $v0, 4
        la  $a0, Writebackv #escreve Writebackv na tela
        syscall
        
        move $v0,$t1 
        move $a0, $v0 
        li $v0,1 #escreve valor do Writebackv na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Writebackv na tela
        syscall
        
	move $v0, $t1
	jr $ra
	
	andfunct3:
	sw $t1, 12($s4)
	
	li  $v0, 4
        la  $a0, Writebackv #escreve Writebackv na tela
        syscall
        
        move $v0,$t1 
        move $a0, $v0 
        li $v0,1 #escreve valor do Writebackv na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Writebackv na tela
        syscall
        
	move $v0, $t1
	jr $ra
	
	orfunct3:
	sw $t1, 4($s5)
	
	li  $v0, 4
        la  $a0, Writebackv #escreve Writebackv na tela
        syscall
        
        move $v0,$t1 
        move $a0, $v0 
        li $v0,1 #escreve valor do Writebackv na tela
        syscall
        
        li  $v0, 4
        la  $a0, Enter #escreve Writebackv na tela
        syscall
        
	move $v0, $t1
        jr $ra
        
	
