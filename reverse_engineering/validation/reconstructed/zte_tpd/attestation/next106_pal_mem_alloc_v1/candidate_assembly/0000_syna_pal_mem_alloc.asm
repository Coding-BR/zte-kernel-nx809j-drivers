
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b284 <syna_pal_mem_alloc>:
    b284: d503233f     	paciasp
    b288: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b28c: f9000bf3     	str	x19, [sp, #0x10]
    b290: 910003fd     	mov	x29, sp
    b294: 2a0003f3     	mov	w19, w0
    b298: 94000000     	bl	0xb298 <syna_pal_mem_alloc+0x14>
		000000000000b298:  R_AARCH64_CALL26	syna_request_managed_device
    b29c: b4000140     	cbz	x0, 0xb2c4 <syna_pal_mem_alloc+0x40>
    b2a0: 7100027f     	cmp	w19, #0x0
    b2a4: 5400016d     	b.le	0xb2d0 <syna_pal_mem_alloc+0x4c>
    b2a8: 2a1303e1     	mov	w1, w19
    b2ac: 5281b802     	mov	w2, #0xdc0              // =3520
    b2b0: 94000000     	bl	0xb2b0 <syna_pal_mem_alloc+0x2c>
		000000000000b2b0:  R_AARCH64_CALL26	devm_kmalloc
    b2b4: f9400bf3     	ldr	x19, [sp, #0x10]
    b2b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b2bc: d50323bf     	autiasp
    b2c0: d65f03c0     	ret
    b2c4: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0xc8>
		000000000000b2c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c53
    b2c8: 91000000     	add	x0, x0, #0x0
		000000000000b2c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c53
    b2cc: 14000003     	b	0xb2d8 <syna_pal_mem_alloc+0x54>
    b2d0: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0xc8>
		000000000000b2d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x306e
    b2d4: 91000000     	add	x0, x0, #0x0
		000000000000b2d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x306e
    b2d8: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0xc8>
		000000000000b2d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x230d
    b2dc: 91000021     	add	x1, x1, #0x0
		000000000000b2dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x230d
    b2e0: 94000000     	bl	0xb2e0 <syna_pal_mem_alloc+0x5c>
		000000000000b2e0:  R_AARCH64_CALL26	_printk
    b2e4: aa1f03e0     	mov	x0, xzr
    b2e8: 17fffff3     	b	0xb2b4 <syna_pal_mem_alloc+0x30>
