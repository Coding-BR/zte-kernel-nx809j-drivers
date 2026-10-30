
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003c14 <syna_pal_mem_alloc>:
    3c14: d503233f     	paciasp
    3c18: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3c1c: f9000bf3     	str	x19, [sp, #0x10]
    3c20: 910003fd     	mov	x29, sp
    3c24: 2a0003f3     	mov	w19, w0
    3c28: 94000000     	bl	0x3c28 <syna_pal_mem_alloc+0x14>
		0000000000003c28:  R_AARCH64_CALL26	syna_request_managed_device
    3c2c: b4000140     	cbz	x0, 0x3c54 <syna_pal_mem_alloc+0x40>
    3c30: 7100027f     	cmp	w19, #0x0
    3c34: 5400016d     	b.le	0x3c60 <syna_pal_mem_alloc+0x4c>
    3c38: 2a1303e1     	mov	w1, w19
    3c3c: 5281b802     	mov	w2, #0xdc0              // =3520
    3c40: 94000000     	bl	0x3c40 <syna_pal_mem_alloc+0x2c>
		0000000000003c40:  R_AARCH64_CALL26	devm_kmalloc
    3c44: f9400bf3     	ldr	x19, [sp, #0x10]
    3c48: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3c4c: d50323bf     	autiasp
    3c50: d65f03c0     	ret
    3c54: 90000000     	adrp	x0, 0x3000 <syna_tcm_read_flash_mtp_config+0x17ec>
		0000000000003c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    3c58: 91000000     	add	x0, x0, #0x0
		0000000000003c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    3c5c: 14000003     	b	0x3c68 <syna_pal_mem_alloc+0x54>
    3c60: 90000000     	adrp	x0, 0x3000 <syna_tcm_read_flash_mtp_config+0x17ec>
		0000000000003c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70ae
    3c64: 91000000     	add	x0, x0, #0x0
		0000000000003c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70ae
    3c68: 90000001     	adrp	x1, 0x3000 <syna_tcm_read_flash_mtp_config+0x17ec>
		0000000000003c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf8
    3c6c: 91000021     	add	x1, x1, #0x0
		0000000000003c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf8
    3c70: 94000000     	bl	0x3c70 <syna_pal_mem_alloc+0x5c>
		0000000000003c70:  R_AARCH64_CALL26	_printk
    3c74: aa1f03e0     	mov	x0, xzr
    3c78: 17fffff3     	b	0x3c44 <syna_pal_mem_alloc+0x30>
