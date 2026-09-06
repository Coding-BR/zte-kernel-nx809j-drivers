
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002b00 <aw22xxx_para_store>:
    2b00: d503233f     	paciasp
    2b04: d10383ff     	sub	sp, sp, #0xe0
    2b08: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
    2b0c: f9005bf7     	str	x23, [sp, #0xb0]
    2b10: a90c57f6     	stp	x22, x21, [sp, #0xc0]
    2b14: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
    2b18: 910283fd     	add	x29, sp, #0xa0
    2b1c: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    2b20: 91000000     	add	x0, x0, #0x0
		0000000000002b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    2b24: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1081
    2b28: 91000021     	add	x1, x1, #0x0
		0000000000002b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1081
    2b2c: aa0303f3     	mov	x19, x3
    2b30: aa0203f5     	mov	x21, x2
    2b34: 94000000     	bl	0x2b34 <aw22xxx_para_store+0x34>
		0000000000002b34:  R_AARCH64_CALL26	_printk
    2b38: d503201f     	nop
    2b3c: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002b3c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x38
    2b40: 52819801     	mov	w1, #0xcc0              // =3264
    2b44: 52800c82     	mov	w2, #0x64               // =100
    2b48: f9400100     	ldr	x0, [x8]
		0000000000002b48:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x38
    2b4c: 94000000     	bl	0x2b4c <aw22xxx_para_store+0x4c>
		0000000000002b4c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    2b50: aa0003f4     	mov	x20, x0
    2b54: b50002b4     	cbnz	x20, 0x2ba8 <aw22xxx_para_store+0xa8>
    2b58: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ee
    2b5c: 91000000     	add	x0, x0, #0x0
		0000000000002b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ee
    2b60: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1081
    2b64: 91000021     	add	x1, x1, #0x0
		0000000000002b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1081
    2b68: 94000000     	bl	0x2b68 <aw22xxx_para_store+0x68>
		0000000000002b68:  R_AARCH64_CALL26	_printk
    2b6c: 928001b3     	mov	x19, #-0xe              // =-14
    2b70: 14000087     	b	0x2d8c <aw22xxx_para_store+0x28c>
    2b74: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002b74:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x38
    2b78: d5384116     	mrs	x22, SP_EL0
    2b7c: f9402ad7     	ldr	x23, [x22, #0x50]
    2b80: f9400100     	ldr	x0, [x8]
		0000000000002b80:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x38
    2b84: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002b84:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
    2b88: 91000108     	add	x8, x8, #0x0
		0000000000002b88:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
    2b8c: 52819801     	mov	w1, #0xcc0              // =3264
    2b90: 52800c82     	mov	w2, #0x64               // =100
    2b94: f9002ac8     	str	x8, [x22, #0x50]
    2b98: 94000000     	bl	0x2b98 <aw22xxx_para_store+0x98>
		0000000000002b98:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    2b9c: aa0003f4     	mov	x20, x0
    2ba0: f9002ad7     	str	x23, [x22, #0x50]
    2ba4: b4fffdb4     	cbz	x20, 0x2b58 <aw22xxx_para_store+0x58>
    2ba8: 9100f291     	add	x17, x20, #0x3c
    2bac: 91010280     	add	x0, x20, #0x40
    2bb0: 91011281     	add	x1, x20, #0x44
    2bb4: 91012282     	add	x2, x20, #0x48
    2bb8: 91013283     	add	x3, x20, #0x4c
    2bbc: 91014284     	add	x4, x20, #0x50
    2bc0: 91015285     	add	x5, x20, #0x54
    2bc4: 91016286     	add	x6, x20, #0x58
    2bc8: 91017287     	add	x7, x20, #0x5c
    2bcc: 91018296     	add	x22, x20, #0x60
    2bd0: 91006288     	add	x8, x20, #0x18
    2bd4: 91007289     	add	x9, x20, #0x1c
    2bd8: 9100828a     	add	x10, x20, #0x20
    2bdc: 9100928b     	add	x11, x20, #0x24
    2be0: 9100a28c     	add	x12, x20, #0x28
    2be4: 9100b28d     	add	x13, x20, #0x2c
    2be8: 9100c28e     	add	x14, x20, #0x30
    2bec: 9100d28f     	add	x15, x20, #0x34
    2bf0: 9100e290     	add	x16, x20, #0x38
    2bf4: a908dbe7     	stp	x7, x22, [sp, #0x88]
    2bf8: 91005287     	add	x7, x20, #0x14
    2bfc: a9079be5     	stp	x5, x6, [sp, #0x78]
    2c00: 91003285     	add	x5, x20, #0xc
    2c04: 91004286     	add	x6, x20, #0x10
    2c08: a90693e3     	stp	x3, x4, [sp, #0x68]
    2c0c: 91001283     	add	x3, x20, #0x4
    2c10: 91002284     	add	x4, x20, #0x8
    2c14: a9058be1     	stp	x1, x2, [sp, #0x58]
    2c18: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    2c1c: 91000021     	add	x1, x1, #0x0
		0000000000002c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    2c20: a90483f1     	stp	x17, x0, [sp, #0x48]
    2c24: aa1503e0     	mov	x0, x21
    2c28: aa1403e2     	mov	x2, x20
    2c2c: a903c3ef     	stp	x15, x16, [sp, #0x38]
    2c30: a902bbed     	stp	x13, x14, [sp, #0x28]
    2c34: a901b3eb     	stp	x11, x12, [sp, #0x18]
    2c38: a900abe9     	stp	x9, x10, [sp, #0x8]
    2c3c: f90003e8     	str	x8, [sp]
    2c40: 94000000     	bl	0x2c40 <aw22xxx_para_store+0x140>
		0000000000002c40:  R_AARCH64_CALL26	sscanf
    2c44: 7100641f     	cmp	w0, #0x19
    2c48: 54000181     	b.ne	0x2c78 <aw22xxx_para_store+0x178>
    2c4c: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002c4c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x80
    2c50: b9400109     	ldr	w9, [x8]
		0000000000002c50:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x80
    2c54: 710f9d3f     	cmp	w9, #0x3e7
    2c58: 540001ed     	b.le	0x2c94 <aw22xxx_para_store+0x194>
    2c5c: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa69
    2c60: 91000000     	add	x0, x0, #0x0
		0000000000002c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa69
    2c64: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1081
    2c68: 91000021     	add	x1, x1, #0x0
		0000000000002c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1081
    2c6c: 94000000     	bl	0x2c6c <aw22xxx_para_store+0x16c>
		0000000000002c6c:  R_AARCH64_CALL26	_printk
    2c70: 92800373     	mov	x19, #-0x1c             // =-28
    2c74: 14000044     	b	0x2d84 <aw22xxx_para_store+0x284>
    2c78: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21a
    2c7c: 91000000     	add	x0, x0, #0x0
		0000000000002c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21a
    2c80: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1081
    2c84: 91000021     	add	x1, x1, #0x0
		0000000000002c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1081
    2c88: 94000000     	bl	0x2c88 <aw22xxx_para_store+0x188>
		0000000000002c88:  R_AARCH64_CALL26	_printk
    2c8c: 928002b3     	mov	x19, #-0x16             // =-22
    2c90: 1400003d     	b	0x2d84 <aw22xxx_para_store+0x284>
    2c94: 5280032a     	mov	w10, #0x19              // =25
    2c98: 5290d40f     	mov	w15, #0x86a0            // =34464
    2c9c: aa1f03ed     	mov	x13, xzr
    2ca0: 1b0a7d2b     	mul	w11, w9, w10
    2ca4: 528c350a     	mov	w10, #0x61a8            // =25000
    2ca8: 72a0002f     	movk	w15, #0x1, lsl #16
    2cac: d37e7d6e     	ubfiz	x14, x11, #2, #32
    2cb0: 6b0b014a     	subs	w10, w10, w11
    2cb4: 1a8a33ec     	csel	w12, wzr, w10, lo
    2cb8: eb0e01ea     	subs	x10, x15, x14
    2cbc: 9a8a33ea     	csel	x10, xzr, x10, lo
    2cc0: d342fd4a     	lsr	x10, x10, #2
    2cc4: eb0c015f     	cmp	x10, x12
    2cc8: 9a8c314f     	csel	x15, x10, x12, lo
    2ccc: 9000000a     	adrp	x10, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002ccc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x84
    2cd0: 9100014a     	add	x10, x10, #0x0
		0000000000002cd0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x84
    2cd4: f10005ff     	cmp	x15, #0x1
    2cd8: 54000289     	b.ls	0x2d28 <aw22xxx_para_store+0x228>
    2cdc: f10061ff     	cmp	x15, #0x18
    2ce0: 5280030d     	mov	w13, #0x18              // =24
    2ce4: 52800050     	mov	w16, #0x2               // =2
    2ce8: 9a8d31ed     	csel	x13, x15, x13, lo
    2cec: 8b0a01ce     	add	x14, x14, x10
    2cf0: 910005af     	add	x15, x13, #0x1
    2cf4: 910011ce     	add	x14, x14, #0x4
    2cf8: f24001f1     	ands	x17, x15, #0x1
    2cfc: 9a910210     	csel	x16, x16, x17, eq
    2d00: aa2d03f1     	mvn	x17, x13
    2d04: cb1001ed     	sub	x13, x15, x16
    2d08: 9100128f     	add	x15, x20, #0x4
    2d0c: 8b100230     	add	x16, x17, x16
    2d10: 297f81f1     	ldp	w17, w0, [x15, #-0x4]
    2d14: b1000a10     	adds	x16, x16, #0x2
    2d18: 910021ef     	add	x15, x15, #0x8
    2d1c: 293f81d1     	stp	w17, w0, [x14, #-0x4]
    2d20: 910021ce     	add	x14, x14, #0x8
    2d24: 54ffff61     	b.ne	0x2d10 <aw22xxx_para_store+0x210>
    2d28: 8b0b01ab     	add	x11, x13, x11
    2d2c: 8b0d0a8e     	add	x14, x20, x13, lsl #2
    2d30: cb0c03ec     	neg	x12, x12
    2d34: d37ef56b     	lsl	x11, x11, #2
    2d38: cb0d03ed     	neg	x13, x13
    2d3c: eb0d019f     	cmp	x12, x13
    2d40: 54000360     	b.eq	0x2dac <aw22xxx_para_store+0x2ac>
    2d44: d345fd6f     	lsr	x15, x11, #5
    2d48: f130d1ff     	cmp	x15, #0xc34
    2d4c: 54000328     	b.hi	0x2db0 <aw22xxx_para_store+0x2b0>
    2d50: d10005ad     	sub	x13, x13, #0x1
    2d54: b84045cf     	ldr	w15, [x14], #0x4
    2d58: b10065bf     	cmn	x13, #0x19
    2d5c: b82b694f     	str	w15, [x10, x11]
    2d60: 9100116b     	add	x11, x11, #0x4
    2d64: 54fffec1     	b.ne	0x2d3c <aw22xxx_para_store+0x23c>
    2d68: 11000522     	add	w2, w9, #0x1
    2d6c: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x829
    2d70: 91000000     	add	x0, x0, #0x0
		0000000000002d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x829
    2d74: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1081
    2d78: 91000021     	add	x1, x1, #0x0
		0000000000002d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1081
    2d7c: b9000102     	str	w2, [x8]
		0000000000002d7c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x80
    2d80: 94000000     	bl	0x2d80 <aw22xxx_para_store+0x280>
		0000000000002d80:  R_AARCH64_CALL26	_printk
    2d84: aa1403e0     	mov	x0, x20
    2d88: 94000000     	bl	0x2d88 <aw22xxx_para_store+0x288>
		0000000000002d88:  R_AARCH64_CALL26	kfree
    2d8c: aa1303e0     	mov	x0, x19
    2d90: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
    2d94: f9405bf7     	ldr	x23, [sp, #0xb0]
    2d98: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
    2d9c: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
    2da0: 910383ff     	add	sp, sp, #0xe0
    2da4: d50323bf     	autiasp
    2da8: d65f03c0     	ret
    2dac: d42aa240     	brk	#0x5512
    2db0: d4200020     	brk	#0x1
