
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c3c <boot_nvmem_show>:
     c3c: d503233f     	paciasp
     c40: d10183ff     	sub	sp, sp, #0x60
     c44: a9057bfd     	stp	x29, x30, [sp, #0x50]
     c48: 910143fd     	add	x29, sp, #0x50
     c4c: d5384108     	mrs	x8, SP_EL0
     c50: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000c50:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf
     c54: 9100014a     	add	x10, x10, #0x0
		0000000000000c54:  R_AARCH64_ADD_ABS_LO12_NC	read_nvmem_buf
     c58: f9438908     	ldr	x8, [x8, #0x710]
     c5c: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c5c:  R_AARCH64_ADR_PREL_PG_HI21	_ctype
     c60: 91000129     	add	x9, x9, #0x0
		0000000000000c60:  R_AARCH64_ADD_ABS_LO12_NC	_ctype
     c64: 5280054b     	mov	w11, #0x2a              // =42
     c68: aa0203e0     	mov	x0, x2
     c6c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x392
     c70: 91000042     	add	x2, x2, #0x0
		0000000000000c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x392
     c74: f81f83a8     	stur	x8, [x29, #-0x8]
     c78: 528012e8     	mov	w8, #0x97               // =151
     c7c: 3940014c     	ldrb	w12, [x10]
     c80: 3940054d     	ldrb	w13, [x10, #0x1]
     c84: 3940094f     	ldrb	w15, [x10, #0x2]
     c88: 39400d51     	ldrb	w17, [x10, #0x3]
     c8c: 910023e3     	add	x3, sp, #0x8
     c90: 52820001     	mov	w1, #0x1000             // =4096
     c94: 386c692e     	ldrb	w14, [x9, x12]
     c98: 386d6930     	ldrb	w16, [x9, x13]
     c9c: 79008fff     	strh	wzr, [sp, #0x46]
     ca0: f803e3ff     	stur	xzr, [sp, #0x3e]
     ca4: 6a0801df     	tst	w14, w8
     ca8: 3940114e     	ldrb	w14, [x10, #0x4]
     cac: f80363ff     	stur	xzr, [sp, #0x36]
     cb0: 1a8c016c     	csel	w12, w11, w12, eq
     cb4: 6a08021f     	tst	w16, w8
     cb8: 386f6930     	ldrb	w16, [x9, x15]
     cbc: 390023ec     	strb	w12, [sp, #0x8]
     cc0: 3871692c     	ldrb	w12, [x9, x17]
     cc4: 1a8d016d     	csel	w13, w11, w13, eq
     cc8: 6a08021f     	tst	w16, w8
     ccc: 390027ed     	strb	w13, [sp, #0x9]
     cd0: 3940154d     	ldrb	w13, [x10, #0x5]
     cd4: 1a8f016f     	csel	w15, w11, w15, eq
     cd8: 6a08019f     	tst	w12, w8
     cdc: 386e692c     	ldrb	w12, [x9, x14]
     ce0: 39002bef     	strb	w15, [sp, #0xa]
     ce4: 386d692f     	ldrb	w15, [x9, x13]
     ce8: 1a910170     	csel	w16, w11, w17, eq
     cec: 6a08019f     	tst	w12, w8
     cf0: 3940194c     	ldrb	w12, [x10, #0x6]
     cf4: 39002ff0     	strb	w16, [sp, #0xb]
     cf8: 39401d50     	ldrb	w16, [x10, #0x7]
     cfc: 1a8e016e     	csel	w14, w11, w14, eq
     d00: 6a0801ff     	tst	w15, w8
     d04: 386c692f     	ldrb	w15, [x9, x12]
     d08: 1a8d016d     	csel	w13, w11, w13, eq
     d0c: 390033ee     	strb	w14, [sp, #0xc]
     d10: 3940214e     	ldrb	w14, [x10, #0x8]
     d14: 390037ed     	strb	w13, [sp, #0xd]
     d18: 3870692d     	ldrb	w13, [x9, x16]
     d1c: 6a0801ff     	tst	w15, w8
     d20: 3940254f     	ldrb	w15, [x10, #0x9]
     d24: f802e3ff     	stur	xzr, [sp, #0x2e]
     d28: 1a8c016c     	csel	w12, w11, w12, eq
     d2c: 6a0801bf     	tst	w13, w8
     d30: 386e692d     	ldrb	w13, [x9, x14]
     d34: 39003bec     	strb	w12, [sp, #0xe]
     d38: 1a90016c     	csel	w12, w11, w16, eq
     d3c: 39003fec     	strb	w12, [sp, #0xf]
     d40: 6a0801bf     	tst	w13, w8
     d44: 3940294c     	ldrb	w12, [x10, #0xa]
     d48: 1a8e016d     	csel	w13, w11, w14, eq
     d4c: 386f692e     	ldrb	w14, [x9, x15]
     d50: 39402d4a     	ldrb	w10, [x10, #0xb]
     d54: 390043ed     	strb	w13, [sp, #0x10]
     d58: 386c692d     	ldrb	w13, [x9, x12]
     d5c: 6a0801df     	tst	w14, w8
     d60: 386a6929     	ldrb	w9, [x9, x10]
     d64: f80263ff     	stur	xzr, [sp, #0x26]
     d68: 1a8f016e     	csel	w14, w11, w15, eq
     d6c: 6a0801bf     	tst	w13, w8
     d70: f801e3ff     	stur	xzr, [sp, #0x1e]
     d74: 1a8c016c     	csel	w12, w11, w12, eq
     d78: 6a08013f     	tst	w9, w8
     d7c: f80163ff     	stur	xzr, [sp, #0x16]
     d80: 1a8a0168     	csel	w8, w11, w10, eq
     d84: 390047ee     	strb	w14, [sp, #0x11]
     d88: 39004fe8     	strb	w8, [sp, #0x13]
     d8c: 52800148     	mov	w8, #0xa                // =10
     d90: 39004bec     	strb	w12, [sp, #0x12]
     d94: 79002be8     	strh	w8, [sp, #0x14]
     d98: 94000000     	bl	0xd98 <boot_nvmem_show+0x15c>
		0000000000000d98:  R_AARCH64_CALL26	scnprintf
     d9c: d5384108     	mrs	x8, SP_EL0
     da0: f9438908     	ldr	x8, [x8, #0x710]
     da4: f85f83a9     	ldur	x9, [x29, #-0x8]
     da8: eb09011f     	cmp	x8, x9
     dac: 540000c1     	b.ne	0xdc4 <boot_nvmem_show+0x188>
     db0: 93407c00     	sxtw	x0, w0
     db4: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     db8: 910183ff     	add	sp, sp, #0x60
     dbc: d50323bf     	autiasp
     dc0: d65f03c0     	ret
     dc4: 94000000     	bl	0xdc4 <boot_nvmem_show+0x188>
		0000000000000dc4:  R_AARCH64_CALL26	__stack_chk_fail
