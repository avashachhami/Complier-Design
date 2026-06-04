	.file	"areaCircle.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Enter the radius of the circle: \0"
LC1:
	.ascii "%f\0"
LC3:
	.ascii "Area of the circle = %.2f\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$LC0, (%esp)
	call	_printf
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	flds	24(%esp)
	fldl	LC2
	fmulp	%st, %st(1)
	flds	24(%esp)
	fmulp	%st, %st(1)
	fstps	28(%esp)
	flds	28(%esp)
	fstpl	4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	ret
	.section .rdata,"dr"
	.align 8
LC2:
	.long	-266631570
	.long	1074340345
	.ident	"GCC: (tdm-1) 10.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
