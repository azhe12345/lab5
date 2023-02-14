# minimum.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

.data

	# TODO: Complete these declarations / initializations

	enter:		.asciiz "Enter the next number:\n"
	min:		.asciiz "Minimum: "
    n:			.asciiz "\n"

#Text Area (i.e. instructions)
.text

main:
	li $v0,4
	la $a0,enter
	syscall

	li $v0,5
	syscall
	move $t0, $v0

	li $v0,4
	la $a0,enter
	syscall

	li $v0,5
	syscall
	move $t1, $v0

	li $v0,4
	la $a0,enter
	syscall

	li $v0,5
	syscall
	move $t2, $v0
	
	li $v0,4
	la $a0,min
	syscall

	slt $t3,$t0,$t1
	beq $t3,$zero,t1m
	bne $t3,$zero,t0m

exit:
	# TODO: Write code to properly exit a SPIM simulation
t1m: 
	slt $t3,$t1,$t2
	beq $t3,$zero,t2mi
	bne $t3,$zero,t1mi
	# TODO: Write your code here
    # You can have other labels expressed here, if you need to
t0m:
	slt $t3,$t0,$t2
	beq $t3,$zero,t2mi
	bne $t3,$zero,t0mi
t0mi:
	li $v0,1
	move $a0,$t0
	syscall
	li $v0,4
	la $a0,n
	syscall
	li $v0,10
	syscall
t1mi:
	li $v0,1
	move $a0,$t1
	syscall
	li $v0,4
	la $a0,n
	syscall
	li $v0,10
	syscall
t2mi:
	li $v0,1
	move $a0,$t2
	syscall
	li $v0,4
	la $a0,n
	syscall
	li $v0,10
	syscall


	