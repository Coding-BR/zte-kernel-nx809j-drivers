
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019c10 <point_is_in_limit_area>:
   19c10: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019c10:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   19c14: 12003c2a     	and	w10, w1, #0xffff
   19c18: f9400109     	ldr	x9, [x8]
		0000000000019c18:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   19c1c: b940112c     	ldr	w12, [x9, #0x10]
   19c20: 321f0188     	orr	w8, w12, #0x2
   19c24: 71000d1f     	cmp	w8, #0x3
   19c28: 12003c08     	and	w8, w0, #0xffff
   19c2c: 540000c1     	b.ne	0x19c44 <point_is_in_limit_area+0x34>
   19c30: 39409d2b     	ldrb	w11, [x9, #0x27]
   19c34: 6b08017f     	cmp	w11, w8
   19c38: 54000109     	b.ls	0x19c58 <point_is_in_limit_area+0x48>
   19c3c: 52800020     	mov	w0, #0x1                // =1
   19c40: d65f03c0     	ret
   19c44: 39409d2b     	ldrb	w11, [x9, #0x27]
   19c48: 6b08017f     	cmp	w11, w8
   19c4c: 54000149     	b.ls	0x19c74 <point_is_in_limit_area+0x64>
   19c50: 52800020     	mov	w0, #0x1                // =1
   19c54: d65f03c0     	ret
   19c58: 79488528     	ldrh	w8, [x9, #0x442]
   19c5c: 3940a12b     	ldrb	w11, [x9, #0x28]
   19c60: 4b0b0108     	sub	w8, w8, w11
   19c64: 6b20211f     	cmp	w8, w0, uxth
   19c68: 5400014a     	b.ge	0x19c90 <point_is_in_limit_area+0x80>
   19c6c: 52800020     	mov	w0, #0x1                // =1
   19c70: d65f03c0     	ret
   19c74: 7948852b     	ldrh	w11, [x9, #0x442]
   19c78: 3940a12d     	ldrb	w13, [x9, #0x28]
   19c7c: 4b0d016d     	sub	w13, w11, w13
   19c80: 6b0801bf     	cmp	w13, w8
   19c84: 5400010a     	b.ge	0x19ca4 <point_is_in_limit_area+0x94>
   19c88: 52800020     	mov	w0, #0x1                // =1
   19c8c: d65f03c0     	ret
   19c90: 3940a528     	ldrb	w8, [x9, #0x29]
   19c94: 6b0a011f     	cmp	w8, w10
   19c98: 54000229     	b.ls	0x19cdc <point_is_in_limit_area+0xcc>
   19c9c: 52800020     	mov	w0, #0x1                // =1
   19ca0: d65f03c0     	ret
   19ca4: 340002ec     	cbz	w12, 0x19d00 <point_is_in_limit_area+0xf0>
   19ca8: 3940e12c     	ldrb	w12, [x9, #0x38]
   19cac: 3400026c     	cbz	w12, 0x19cf8 <point_is_in_limit_area+0xe8>
   19cb0: 79405d2c     	ldrh	w12, [x9, #0x2e]
   19cb4: 6b0a019f     	cmp	w12, w10
   19cb8: 54000202     	b.hs	0x19cf8 <point_is_in_limit_area+0xe8>
   19cbc: 79405929     	ldrh	w9, [x9, #0x2c]
   19cc0: 52800020     	mov	w0, #0x1                // =1
   19cc4: 6b08013f     	cmp	w9, w8
   19cc8: 540001a8     	b.hi	0x19cfc <point_is_in_limit_area+0xec>
   19ccc: 4b090169     	sub	w9, w11, w9
   19cd0: 6b08013f     	cmp	w9, w8
   19cd4: 5400012a     	b.ge	0x19cf8 <point_is_in_limit_area+0xe8>
   19cd8: 14000009     	b	0x19cfc <point_is_in_limit_area+0xec>
   19cdc: 79488928     	ldrh	w8, [x9, #0x444]
   19ce0: 3940a929     	ldrb	w9, [x9, #0x2a]
   19ce4: 4b090108     	sub	w8, w8, w9
   19ce8: 6b21211f     	cmp	w8, w1, uxth
   19cec: 5400006a     	b.ge	0x19cf8 <point_is_in_limit_area+0xe8>
   19cf0: 52800020     	mov	w0, #0x1                // =1
   19cf4: d65f03c0     	ret
   19cf8: 2a1f03e0     	mov	w0, wzr
   19cfc: d65f03c0     	ret
   19d00: 3940d12c     	ldrb	w12, [x9, #0x34]
   19d04: 0b0c058c     	add	w12, w12, w12, lsl #1
   19d08: 6b4c051f     	cmp	w8, w12, lsr #1
   19d0c: 540000c3     	b.lo	0x19d24 <point_is_in_limit_area+0x114>
   19d10: 3940d52c     	ldrb	w12, [x9, #0x35]
   19d14: 0b0c058c     	add	w12, w12, w12, lsl #1
   19d18: 4b4c056c     	sub	w12, w11, w12, lsr #1
   19d1c: 6b08019f     	cmp	w12, w8
   19d20: 54fffc4a     	b.ge	0x19ca8 <point_is_in_limit_area+0x98>
   19d24: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d24:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   19d28: 3940018c     	ldrb	w12, [x12]
		0000000000019d28:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   19d2c: 370003ac     	tbnz	w12, #0x0, 0x19da0 <point_is_in_limit_area+0x190>
   19d30: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d30:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   19d34: 3940018c     	ldrb	w12, [x12]
		0000000000019d34:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   19d38: 3700034c     	tbnz	w12, #0x0, 0x19da0 <point_is_in_limit_area+0x190>
   19d3c: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d3c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   19d40: 3940018c     	ldrb	w12, [x12]
		0000000000019d40:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   19d44: 370002ec     	tbnz	w12, #0x0, 0x19da0 <point_is_in_limit_area+0x190>
   19d48: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d48:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   19d4c: 3940018c     	ldrb	w12, [x12]
		0000000000019d4c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   19d50: 3700028c     	tbnz	w12, #0x0, 0x19da0 <point_is_in_limit_area+0x190>
   19d54: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d54:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   19d58: 3940018c     	ldrb	w12, [x12]
		0000000000019d58:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   19d5c: 3700022c     	tbnz	w12, #0x0, 0x19da0 <point_is_in_limit_area+0x190>
   19d60: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d60:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   19d64: 3940018c     	ldrb	w12, [x12]
		0000000000019d64:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   19d68: 370001cc     	tbnz	w12, #0x0, 0x19da0 <point_is_in_limit_area+0x190>
   19d6c: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d6c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   19d70: 3940018c     	ldrb	w12, [x12]
		0000000000019d70:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   19d74: 3700016c     	tbnz	w12, #0x0, 0x19da0 <point_is_in_limit_area+0x190>
   19d78: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d78:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   19d7c: 3940018c     	ldrb	w12, [x12]
		0000000000019d7c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   19d80: 3700010c     	tbnz	w12, #0x0, 0x19da0 <point_is_in_limit_area+0x190>
   19d84: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d84:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   19d88: 3940018c     	ldrb	w12, [x12]
		0000000000019d88:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   19d8c: 370000ac     	tbnz	w12, #0x0, 0x19da0 <point_is_in_limit_area+0x190>
   19d90: 9000000c     	adrp	x12, 0x19000 <tp_ghost_check+0x32c>
		0000000000019d90:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   19d94: 3940018c     	ldrb	w12, [x12]
		0000000000019d94:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   19d98: 7100059f     	cmp	w12, #0x1
   19d9c: 54fff861     	b.ne	0x19ca8 <point_is_in_limit_area+0x98>
   19da0: d503233f     	paciasp
   19da4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   19da8: 910003fd     	mov	x29, sp
   19dac: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4008
   19db0: 91000000     	add	x0, x0, #0x0
		0000000000019db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4008
   19db4: 12003c22     	and	w2, w1, #0xffff
   19db8: 2a0803e1     	mov	w1, w8
   19dbc: 94000000     	bl	0x19dbc <point_is_in_limit_area+0x1ac>
		0000000000019dbc:  R_AARCH64_CALL26	_printk
   19dc0: 52800020     	mov	w0, #0x1                // =1
   19dc4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   19dc8: d50323bf     	autiasp
   19dcc: d65f03c0     	ret
