
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024df0 <point_is_in_limit_area>:
   24df0: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024df0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24df4: 12003c2a     	and	w10, w1, #0xffff
   24df8: f9400109     	ldr	x9, [x8]
		0000000000024df8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24dfc: b940112c     	ldr	w12, [x9, #0x10]
   24e00: 321f0188     	orr	w8, w12, #0x2
   24e04: 71000d1f     	cmp	w8, #0x3
   24e08: 12003c08     	and	w8, w0, #0xffff
   24e0c: 540000c1     	b.ne	0x24e24 <point_is_in_limit_area+0x34>
   24e10: 39409d2b     	ldrb	w11, [x9, #0x27]
   24e14: 6b08017f     	cmp	w11, w8
   24e18: 54000109     	b.ls	0x24e38 <point_is_in_limit_area+0x48>
   24e1c: 52800020     	mov	w0, #0x1                // =1
   24e20: d65f03c0     	ret
   24e24: 39409d2b     	ldrb	w11, [x9, #0x27]
   24e28: 6b08017f     	cmp	w11, w8
   24e2c: 54000149     	b.ls	0x24e54 <point_is_in_limit_area+0x64>
   24e30: 52800020     	mov	w0, #0x1                // =1
   24e34: d65f03c0     	ret
   24e38: 79488528     	ldrh	w8, [x9, #0x442]
   24e3c: 3940a12b     	ldrb	w11, [x9, #0x28]
   24e40: 4b0b0108     	sub	w8, w8, w11
   24e44: 6b20211f     	cmp	w8, w0, uxth
   24e48: 5400014a     	b.ge	0x24e70 <point_is_in_limit_area+0x80>
   24e4c: 52800020     	mov	w0, #0x1                // =1
   24e50: d65f03c0     	ret
   24e54: 7948852b     	ldrh	w11, [x9, #0x442]
   24e58: 3940a12d     	ldrb	w13, [x9, #0x28]
   24e5c: 4b0d016d     	sub	w13, w11, w13
   24e60: 6b0801bf     	cmp	w13, w8
   24e64: 5400010a     	b.ge	0x24e84 <point_is_in_limit_area+0x94>
   24e68: 52800020     	mov	w0, #0x1                // =1
   24e6c: d65f03c0     	ret
   24e70: 3940a528     	ldrb	w8, [x9, #0x29]
   24e74: 6b0a011f     	cmp	w8, w10
   24e78: 54000229     	b.ls	0x24ebc <point_is_in_limit_area+0xcc>
   24e7c: 52800020     	mov	w0, #0x1                // =1
   24e80: d65f03c0     	ret
   24e84: 340002ec     	cbz	w12, 0x24ee0 <point_is_in_limit_area+0xf0>
   24e88: 3940e12c     	ldrb	w12, [x9, #0x38]
   24e8c: 3400026c     	cbz	w12, 0x24ed8 <point_is_in_limit_area+0xe8>
   24e90: 79405d2c     	ldrh	w12, [x9, #0x2e]
   24e94: 6b0a019f     	cmp	w12, w10
   24e98: 54000202     	b.hs	0x24ed8 <point_is_in_limit_area+0xe8>
   24e9c: 79405929     	ldrh	w9, [x9, #0x2c]
   24ea0: 52800020     	mov	w0, #0x1                // =1
   24ea4: 6b08013f     	cmp	w9, w8
   24ea8: 540001a8     	b.hi	0x24edc <point_is_in_limit_area+0xec>
   24eac: 4b090169     	sub	w9, w11, w9
   24eb0: 6b08013f     	cmp	w9, w8
   24eb4: 5400012a     	b.ge	0x24ed8 <point_is_in_limit_area+0xe8>
   24eb8: 14000009     	b	0x24edc <point_is_in_limit_area+0xec>
   24ebc: 79488928     	ldrh	w8, [x9, #0x444]
   24ec0: 3940a929     	ldrb	w9, [x9, #0x2a]
   24ec4: 4b090108     	sub	w8, w8, w9
   24ec8: 6b21211f     	cmp	w8, w1, uxth
   24ecc: 5400006a     	b.ge	0x24ed8 <point_is_in_limit_area+0xe8>
   24ed0: 52800020     	mov	w0, #0x1                // =1
   24ed4: d65f03c0     	ret
   24ed8: 2a1f03e0     	mov	w0, wzr
   24edc: d65f03c0     	ret
   24ee0: 3940d12c     	ldrb	w12, [x9, #0x34]
   24ee4: 0b0c058c     	add	w12, w12, w12, lsl #1
   24ee8: 6b4c051f     	cmp	w8, w12, lsr #1
   24eec: 540000c3     	b.lo	0x24f04 <point_is_in_limit_area+0x114>
   24ef0: 3940d52c     	ldrb	w12, [x9, #0x35]
   24ef4: 0b0c058c     	add	w12, w12, w12, lsl #1
   24ef8: 4b4c056c     	sub	w12, w11, w12, lsr #1
   24efc: 6b08019f     	cmp	w12, w8
   24f00: 54fffc4a     	b.ge	0x24e88 <point_is_in_limit_area+0x98>
   24f04: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f04:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   24f08: 3940018c     	ldrb	w12, [x12]
		0000000000024f08:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   24f0c: 370003ac     	tbnz	w12, #0x0, 0x24f80 <point_is_in_limit_area+0x190>
   24f10: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f10:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   24f14: 3940018c     	ldrb	w12, [x12]
		0000000000024f14:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   24f18: 3700034c     	tbnz	w12, #0x0, 0x24f80 <point_is_in_limit_area+0x190>
   24f1c: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f1c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   24f20: 3940018c     	ldrb	w12, [x12]
		0000000000024f20:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   24f24: 370002ec     	tbnz	w12, #0x0, 0x24f80 <point_is_in_limit_area+0x190>
   24f28: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f28:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   24f2c: 3940018c     	ldrb	w12, [x12]
		0000000000024f2c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   24f30: 3700028c     	tbnz	w12, #0x0, 0x24f80 <point_is_in_limit_area+0x190>
   24f34: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f34:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   24f38: 3940018c     	ldrb	w12, [x12]
		0000000000024f38:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   24f3c: 3700022c     	tbnz	w12, #0x0, 0x24f80 <point_is_in_limit_area+0x190>
   24f40: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f40:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   24f44: 3940018c     	ldrb	w12, [x12]
		0000000000024f44:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   24f48: 370001cc     	tbnz	w12, #0x0, 0x24f80 <point_is_in_limit_area+0x190>
   24f4c: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f4c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   24f50: 3940018c     	ldrb	w12, [x12]
		0000000000024f50:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   24f54: 3700016c     	tbnz	w12, #0x0, 0x24f80 <point_is_in_limit_area+0x190>
   24f58: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f58:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   24f5c: 3940018c     	ldrb	w12, [x12]
		0000000000024f5c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   24f60: 3700010c     	tbnz	w12, #0x0, 0x24f80 <point_is_in_limit_area+0x190>
   24f64: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f64:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   24f68: 3940018c     	ldrb	w12, [x12]
		0000000000024f68:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   24f6c: 370000ac     	tbnz	w12, #0x0, 0x24f80 <point_is_in_limit_area+0x190>
   24f70: 9000000c     	adrp	x12, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f70:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   24f74: 3940018c     	ldrb	w12, [x12]
		0000000000024f74:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   24f78: 7100059f     	cmp	w12, #0x1
   24f7c: 54fff861     	b.ne	0x24e88 <point_is_in_limit_area+0x98>
   24f80: d503233f     	paciasp
   24f84: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   24f88: 910003fd     	mov	x29, sp
   24f8c: 90000000     	adrp	x0, 0x24000 <tpd_touch_release+0x48c>
		0000000000024f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15936
   24f90: 91000000     	add	x0, x0, #0x0
		0000000000024f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15936
   24f94: 12003c22     	and	w2, w1, #0xffff
   24f98: 2a0803e1     	mov	w1, w8
   24f9c: 94000000     	bl	0x24f9c <point_is_in_limit_area+0x1ac>
		0000000000024f9c:  R_AARCH64_CALL26	_printk
   24fa0: 52800020     	mov	w0, #0x1                // =1
   24fa4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   24fa8: d50323bf     	autiasp
   24fac: d65f03c0     	ret
