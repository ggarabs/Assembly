.data
	N1: .asciiz "Digite o primeiro numero: "
	N2: .asciiz "Digite o segundo numero: "
	Resp: .asciiz "A resposta eh: "
	
.text
	li $v0,4
	la $a0,N1
	syscall
	
	li $v0,5
	syscall
	
	move $t0,$v0
	
	li $v0,4
	la $a0,N2
	syscall
	
	li $v0,5
	syscall
	
	move $t1,$v0
	
	add $t2, $t0, $t1
	
	li $v0,4
	la $a0,Resp
	syscall
	
	li $v0,1
	move $a0,$t2
	syscall