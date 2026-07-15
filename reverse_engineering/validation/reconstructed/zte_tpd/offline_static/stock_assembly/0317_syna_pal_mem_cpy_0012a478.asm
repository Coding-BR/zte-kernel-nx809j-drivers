
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023bf0 <syna_pal_mem_cpy>:
   23bf0: b4000200     	cbz	x0, 0x23c30 <syna_pal_mem_cpy+0x40>
   23bf4: d503233f     	paciasp
   23bf8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   23bfc: 910003fd     	mov	x29, sp
   23c00: 6b01009f     	cmp	w4, w1
   23c04: 540001a8     	b.hi	0x23c38 <syna_pal_mem_cpy+0x48>
   23c08: 6b03009f     	cmp	w4, w3
   23c0c: 54000168     	b.hi	0x23c38 <syna_pal_mem_cpy+0x48>
   23c10: 2a0403e8     	mov	w8, w4
   23c14: aa0203e1     	mov	x1, x2
   23c18: aa0803e2     	mov	x2, x8
   23c1c: 94000000     	bl	0x23c1c <syna_pal_mem_cpy+0x2c>
		0000000000023c1c:  R_AARCH64_CALL26	memcpy
   23c20: 2a1f03e0     	mov	w0, wzr
   23c24: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   23c28: d50323bf     	autiasp
   23c2c: d65f03c0     	ret
   23c30: 128002a0     	mov	w0, #-0x16              // =-22
   23c34: d65f03c0     	ret
   23c38: 90000008     	adrp	x8, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   23c3c: 91000108     	add	x8, x8, #0x0
		0000000000023c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   23c40: 2a0103e9     	mov	w9, w1
   23c44: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   23c48: 91000000     	add	x0, x0, #0x0
		0000000000023c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   23c4c: aa0803e1     	mov	x1, x8
   23c50: 2a0303e2     	mov	w2, w3
   23c54: 2a0903e3     	mov	w3, w9
   23c58: 94000000     	bl	0x23c58 <syna_pal_mem_cpy+0x68>
		0000000000023c58:  R_AARCH64_CALL26	_printk
   23c5c: 128002a0     	mov	w0, #-0x16              // =-22
   23c60: 17fffff1     	b	0x23c24 <syna_pal_mem_cpy+0x34>
