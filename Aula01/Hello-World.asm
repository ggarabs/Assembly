.data
	Msg: .asciiz "Boa noite!\n"
	msg: .asciiz "Oie!"
   
.text
	li $v0, 4
	la $a0, Msg
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall