
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005e1c <syna_pal_mem_alloc>:
    5e1c: d503233f     	paciasp
    5e20: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    5e24: f9000bf3     	str	x19, [sp, #0x10]
    5e28: 910003fd     	mov	x29, sp
    5e2c: 2a0003f3     	mov	w19, w0
    5e30: 94000000     	bl	0x5e30 <syna_pal_mem_alloc+0x14>
		0000000000005e30:  R_AARCH64_CALL26	syna_request_managed_device
    5e34: b4000140     	cbz	x0, 0x5e5c <syna_pal_mem_alloc+0x40>
    5e38: 7100027f     	cmp	w19, #0x0
    5e3c: 5400016d     	b.le	0x5e68 <syna_pal_mem_alloc+0x4c>
    5e40: 2a1303e1     	mov	w1, w19
    5e44: 5281b802     	mov	w2, #0xdc0              // =3520
    5e48: 94000000     	bl	0x5e48 <syna_pal_mem_alloc+0x2c>
		0000000000005e48:  R_AARCH64_CALL26	devm_kmalloc
    5e4c: f9400bf3     	ldr	x19, [sp, #0x10]
    5e50: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    5e54: d50323bf     	autiasp
    5e58: d65f03c0     	ret
    5e5c: 90000000     	adrp	x0, 0x5000 <syna_tcm_read_cs_data+0x1700>
		0000000000005e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    5e60: 91000000     	add	x0, x0, #0x0
		0000000000005e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    5e64: 14000003     	b	0x5e70 <syna_pal_mem_alloc+0x54>
    5e68: 90000000     	adrp	x0, 0x5000 <syna_tcm_read_cs_data+0x1700>
		0000000000005e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
    5e6c: 91000000     	add	x0, x0, #0x0
		0000000000005e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
    5e70: 90000001     	adrp	x1, 0x5000 <syna_tcm_read_cs_data+0x1700>
		0000000000005e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
    5e74: 91000021     	add	x1, x1, #0x0
		0000000000005e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
    5e78: 94000000     	bl	0x5e78 <syna_pal_mem_alloc+0x5c>
		0000000000005e78:  R_AARCH64_CALL26	_printk
    5e7c: aa1f03e0     	mov	x0, xzr
    5e80: 17fffff3     	b	0x5e4c <syna_pal_mem_alloc+0x30>
