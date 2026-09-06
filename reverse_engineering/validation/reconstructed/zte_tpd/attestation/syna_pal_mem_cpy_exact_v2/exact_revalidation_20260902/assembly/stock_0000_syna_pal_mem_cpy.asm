
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016df4 <syna_pal_mem_cpy>:
   16df4: b40001e0     	cbz	x0, 0x16e30 <syna_pal_mem_cpy+0x3c>
   16df8: b40001c2     	cbz	x2, 0x16e30 <syna_pal_mem_cpy+0x3c>
   16dfc: d503233f     	paciasp
   16e00: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   16e04: 910003fd     	mov	x29, sp
   16e08: 6b01009f     	cmp	w4, w1
   16e0c: 54000148     	b.hi	0x16e34 <syna_pal_mem_cpy+0x40>
   16e10: 6b03009f     	cmp	w4, w3
   16e14: 54000108     	b.hi	0x16e34 <syna_pal_mem_cpy+0x40>
   16e18: 2a0403e8     	mov	w8, w4
   16e1c: aa0203e1     	mov	x1, x2
   16e20: aa0803e2     	mov	x2, x8
   16e24: 94000000     	bl	0x16e24 <syna_pal_mem_cpy+0x30>
		0000000000016e24:  R_AARCH64_CALL26	memcpy
   16e28: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   16e2c: d50323bf     	autiasp
   16e30: d65f03c0     	ret
   16e34: 90000008     	adrp	x8, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   16e38: 91000108     	add	x8, x8, #0x0
		0000000000016e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   16e3c: 2a0103e9     	mov	w9, w1
   16e40: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   16e44: 91000000     	add	x0, x0, #0x0
		0000000000016e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   16e48: aa0803e1     	mov	x1, x8
   16e4c: 2a0303e2     	mov	w2, w3
   16e50: 2a0903e3     	mov	w3, w9
   16e54: 94000000     	bl	0x16e54 <syna_pal_mem_cpy+0x60>
		0000000000016e54:  R_AARCH64_CALL26	_printk
   16e58: 17fffff4     	b	0x16e28 <syna_pal_mem_cpy+0x34>
