
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e71c <syna_cdev_read>:
    e71c: d503233f     	paciasp
    e720: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e724: f9000bf5     	str	x21, [sp, #0x10]
    e728: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e72c: 910003fd     	mov	x29, sp
    e730: b4000282     	cbz	x2, 0xe780 <syna_cdev_read+0x64>
    e734: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e734:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c0
    e738: 91000000     	add	x0, x0, #0x0
		000000000000e738:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c0
    e73c: aa0203f3     	mov	x19, x2
    e740: f8450408     	ldr	x8, [x0], #0x50
    e744: aa0103f4     	mov	x20, x1
    e748: f9405515     	ldr	x21, [x8, #0xa8]
    e74c: 94000000     	bl	0xe74c <syna_cdev_read+0x30>
		000000000000e74c:  R_AARCH64_CALL26	mutex_lock
    e750: aa1503e0     	mov	x0, x21
    e754: aa1403e1     	mov	x1, x20
    e758: 2a1303e2     	mov	w2, w19
    e75c: 2a1303e3     	mov	w3, w19
    e760: 9400095c     	bl	0x10cd0 <syna_cdev_ioctl_raw_read>
    e764: 93407c14     	sxtw	x20, w0
    e768: eb13029f     	cmp	x20, x19
    e76c: 54000181     	b.ne	0xe79c <syna_cdev_read+0x80>
    e770: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e770:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x810
    e774: 91000000     	add	x0, x0, #0x0
		000000000000e774:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x810
    e778: 94000000     	bl	0xe778 <syna_cdev_read+0x5c>
		000000000000e778:  R_AARCH64_CALL26	mutex_unlock
    e77c: 14000002     	b	0xe784 <syna_cdev_read+0x68>
    e780: aa1f03f4     	mov	x20, xzr
    e784: aa1403e0     	mov	x0, x20
    e788: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e78c: f9400bf5     	ldr	x21, [sp, #0x10]
    e790: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e794: d50323bf     	autiasp
    e798: d65f03c0     	ret
    e79c: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e79c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75a4
    e7a0: 91000000     	add	x0, x0, #0x0
		000000000000e7a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75a4
    e7a4: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e7a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc3
    e7a8: 91000021     	add	x1, x1, #0x0
		000000000000e7a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc3
    e7ac: 2a1303e2     	mov	w2, w19
    e7b0: 2a1403e3     	mov	w3, w20
    e7b4: 94000000     	bl	0xe7b4 <syna_cdev_read+0x98>
		000000000000e7b4:  R_AARCH64_CALL26	_printk
    e7b8: 17ffffee     	b	0xe770 <syna_cdev_read+0x54>
