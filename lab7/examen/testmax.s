	.file	"testmax.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$5, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$2, -32(%rbp)
	movl	$5, -28(%rbp)
	movl	$7, -24(%rbp)
	movl	$2, -20(%rbp)
	movl	$9, -16(%rbp)
	leaq	-40(%rbp), %rdx
	movl	-36(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	max@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
