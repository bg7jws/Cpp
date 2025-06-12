 # Assembler directives to allocate storage for static array
 .section .rodata
 printf_line:
 .string "The sum of the array is %i\n"
 printf_line2:
 .string "Element %d has value %d\n"
 .data
 .align 8
array:
     .quad 10
     .quad 12
     .quad 15
     .quad 19
.globl main
.type main, @function
.text
main:
	 pushq %rbp
	 movq %rsp, %rbp
	 movq $array, %rdi
	 movq $4, %rsi
	 call sum_array
	 pushq %rax

	 movq %rax, %rdi
	 movq $printf_line, %rsi
	 movq $0, %rax
	 call printf
	 movq $0, %rax
	 popq %rbp
	 ret
	 sum_array:
	 pushq %rbp