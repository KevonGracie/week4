	.file	"week4.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "The total is %d\12\0"
	.align 8
.LC1:
	.ascii "Multiplier applied makes the total %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$10, -4(%rbp)
	movl	$25, -8(%rbp)
	movl	$35, -12(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	leaq	.LC0(%rip), %rcx
	movl	%eax, %edx
	call	printf
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
