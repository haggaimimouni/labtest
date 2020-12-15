	.file	"test.c"
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10, -52(%rbp)
	movl	$0, -60(%rbp)
	movl	$4, -48(%rbp)
	movl	$9, -44(%rbp)
	movl	$10, -40(%rbp)
	movl	$11, -36(%rbp)
	movl	$12, -32(%rbp)
	movl	$15, -28(%rbp)
	movl	$12, -24(%rbp)
	movl	$9, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$30, -12(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	leaq	-60(%rbp), %rdx
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	max@PLT
	leaq	-60(%rbp), %rdx
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	min@PLT
	leaq	-56(%rbp), %rdx
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	variance@PLT
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
