# Factorial.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

# Assembly (NON-RECURSIVE) version of:
#   int n, fn=1;
#   cout << "Enter a number:\n";
#   cin >> n;
#   for (int x = 2; x <= n; x++) {
#       fn = fn * x;
#   }
#   cout << "Factorial of " << x << " is:\n" << fn << "\n";
#
.data

	# TODO: Write your initializations here
	enter:		.asciiz "Enter a number:\n"
	fa: 		.asciiz "Factorial of "
	is:			.asciiz " is:\n"
	n:			.asciiz "\n"
#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here
	li $v0, 4
	la $a0,enter
	
	
	syscall

	li $v0,5
	syscall

	move $t0,$v0;
	
	li $t1, 1
	move $t2, $t0
	slt $t4, $t0, 2
	bne $t4, $zero, print
	li $t2, 2
	
loop: 

	slt $t3,$t2,$t0
	
	
	mult $t1, $t2
	mflo $t1

	
	beq $t3, $zero, print
	addi $t2, $t2, 1

	
	
	
	j loop 


print:
	li $v0, 4
	la $a0, fa;
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall

	li $v0, 4
	la $a0, is;
	syscall

	li $v0, 1
	move $a0, $t1
	syscall

	li $v0, 4
	la $a0, n;
	syscall

	li $v0, 10;
	syscall

exit:
	# TODO: Write code to properly exit a SPIM simulation
