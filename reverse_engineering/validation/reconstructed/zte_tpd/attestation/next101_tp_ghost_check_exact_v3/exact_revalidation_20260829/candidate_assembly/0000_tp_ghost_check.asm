
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018c78 <tp_ghost_check>:
   18c78: d503233f     	paciasp
   18c7c: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   18c80: a9016ffc     	stp	x28, x27, [sp, #0x10]
   18c84: a90267fa     	stp	x26, x25, [sp, #0x20]
   18c88: a9035ff8     	stp	x24, x23, [sp, #0x30]
   18c8c: a90457f6     	stp	x22, x21, [sp, #0x40]
   18c90: a9054ff4     	stp	x20, x19, [sp, #0x50]
   18c94: 910003fd     	mov	x29, sp
   18c98: 90000017     	adrp	x23, 0x18000 <tpd_touch_press+0x360>
		0000000000018c98:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   18c9c: f94002f5     	ldr	x21, [x23]
		0000000000018c9c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   18ca0: d503201f     	nop
   18ca4: 52810000     	mov	w0, #0x800              // =2048
   18ca8: 94000000     	bl	0x18ca8 <tp_ghost_check+0x30>
		0000000000018ca8:  R_AARCH64_CALL26	vmalloc_noprof
   18cac: aa0003f3     	mov	x19, x0
   18cb0: b40026d3     	cbz	x19, 0x19188 <tp_ghost_check+0x510>
   18cb4: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018cb4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5e
   18cb8: 91000108     	add	x8, x8, #0x0
		0000000000018cb8:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x5e
   18cbc: b9448eaa     	ldr	w10, [x21, #0x48c]
   18cc0: 79411102     	ldrh	w2, [x8, #0x88]
   18cc4: 79400103     	ldrh	w3, [x8]
   18cc8: 79422101     	ldrh	w1, [x8, #0x110]
   18ccc: 79433100     	ldrh	w0, [x8, #0x198]
   18cd0: 79444111     	ldrh	w17, [x8, #0x220]
   18cd4: 79455110     	ldrh	w16, [x8, #0x2a8]
   18cd8: 7100005f     	cmp	w2, #0x0
   18cdc: 7946610f     	ldrh	w15, [x8, #0x330]
   18ce0: 7947710e     	ldrh	w14, [x8, #0x3b8]
   18ce4: 1a9f07e9     	cset	w9, ne
   18ce8: 7100007f     	cmp	w3, #0x0
   18cec: 7948810c     	ldrh	w12, [x8, #0x440]
   18cf0: 1a890529     	cinc	w9, w9, ne
   18cf4: 7100003f     	cmp	w1, #0x0
   18cf8: 79499108     	ldrh	w8, [x8, #0x4c8]
   18cfc: 1a890529     	cinc	w9, w9, ne
   18d00: 7100001f     	cmp	w0, #0x0
   18d04: b9449aad     	ldr	w13, [x21, #0x498]
   18d08: 1a890529     	cinc	w9, w9, ne
   18d0c: 7100023f     	cmp	w17, #0x0
   18d10: 1a890529     	cinc	w9, w9, ne
   18d14: 7100021f     	cmp	w16, #0x0
   18d18: 1a890529     	cinc	w9, w9, ne
   18d1c: 710001ff     	cmp	w15, #0x0
   18d20: 1a890529     	cinc	w9, w9, ne
   18d24: 710001df     	cmp	w14, #0x0
   18d28: 1a890529     	cinc	w9, w9, ne
   18d2c: 7100019f     	cmp	w12, #0x0
   18d30: 1a890529     	cinc	w9, w9, ne
   18d34: 7100011f     	cmp	w8, #0x0
   18d38: 1a890529     	cinc	w9, w9, ne
   18d3c: 12001d24     	and	w4, w9, #0xff
   18d40: 6b04015f     	cmp	w10, w4
   18d44: 1a84c154     	csel	w20, w10, w4, gt
   18d48: 5280926a     	mov	w10, #0x493             // =1171
   18d4c: 71000a9f     	cmp	w20, #0x2
   18d50: 9a8a954a     	cinc	x10, x10, hi
   18d54: 386a6aab     	ldrb	w11, [x21, x10]
   18d58: 1b047d6a     	mul	w10, w11, w4
   18d5c: 340001cd     	cbz	w13, 0x18d94 <tp_ghost_check+0x11c>
   18d60: 90000004     	adrp	x4, 0x18000 <tpd_touch_press+0x360>
		0000000000018d60:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5c
   18d64: 79400084     	ldrh	w4, [x4]
		0000000000018d64:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x5c
   18d68: 6b0b009f     	cmp	w4, w11
   18d6c: 540011a2     	b.hs	0x18fa0 <tp_ghost_check+0x328>
   18d70: 340000c3     	cbz	w3, 0x18d88 <tp_ghost_check+0x110>
   18d74: 12001d24     	and	w4, w9, #0xff
   18d78: 7100189f     	cmp	w4, #0x6
   18d7c: 54000063     	b.lo	0x18d88 <tp_ghost_check+0x110>
   18d80: 6b03015f     	cmp	w10, w3
   18d84: 540015a3     	b.lo	0x19038 <tp_ghost_check+0x3c0>
   18d88: 710005bf     	cmp	w13, #0x1
   18d8c: 54000061     	b.ne	0x18d98 <tp_ghost_check+0x120>
   18d90: 14000010     	b	0x18dd0 <tp_ghost_check+0x158>
   18d94: 2a1f03e3     	mov	w3, wzr
   18d98: 90000004     	adrp	x4, 0x18000 <tpd_touch_press+0x360>
		0000000000018d98:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xe4
   18d9c: 79400084     	ldrh	w4, [x4]
		0000000000018d9c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0xe4
   18da0: 6b0b009f     	cmp	w4, w11
   18da4: 54000fa2     	b.hs	0x18f98 <tp_ghost_check+0x320>
   18da8: 34000102     	cbz	w2, 0x18dc8 <tp_ghost_check+0x150>
   18dac: 12001d24     	and	w4, w9, #0xff
   18db0: 0b030043     	add	w3, w2, w3
   18db4: 7100189f     	cmp	w4, #0x6
   18db8: 54000083     	b.lo	0x18dc8 <tp_ghost_check+0x150>
   18dbc: 12003c62     	and	w2, w3, #0xffff
   18dc0: 6b02015f     	cmp	w10, w2
   18dc4: 540010e3     	b.lo	0x18fe0 <tp_ghost_check+0x368>
   18dc8: 710009bf     	cmp	w13, #0x2
   18dcc: 540001e0     	b.eq	0x18e08 <tp_ghost_check+0x190>
   18dd0: 90000002     	adrp	x2, 0x18000 <tpd_touch_press+0x360>
		0000000000018dd0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x16c
   18dd4: 79400044     	ldrh	w4, [x2]
		0000000000018dd4:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x16c
   18dd8: 6b0b009f     	cmp	w4, w11
   18ddc: 54000e62     	b.hs	0x18fa8 <tp_ghost_check+0x330>
   18de0: 34000101     	cbz	w1, 0x18e00 <tp_ghost_check+0x188>
   18de4: 12001d22     	and	w2, w9, #0xff
   18de8: 0b030023     	add	w3, w1, w3
   18dec: 7100185f     	cmp	w2, #0x6
   18df0: 54000083     	b.lo	0x18e00 <tp_ghost_check+0x188>
   18df4: 12003c61     	and	w1, w3, #0xffff
   18df8: 6b01015f     	cmp	w10, w1
   18dfc: 54001043     	b.lo	0x19004 <tp_ghost_check+0x38c>
   18e00: 71000dbf     	cmp	w13, #0x3
   18e04: 540001e0     	b.eq	0x18e40 <tp_ghost_check+0x1c8>
   18e08: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x360>
		0000000000018e08:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1f4
   18e0c: 79400024     	ldrh	w4, [x1]
		0000000000018e0c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x1f4
   18e10: 6b0b009f     	cmp	w4, w11
   18e14: 54000ce2     	b.hs	0x18fb0 <tp_ghost_check+0x338>
   18e18: 34000100     	cbz	w0, 0x18e38 <tp_ghost_check+0x1c0>
   18e1c: 12001d21     	and	w1, w9, #0xff
   18e20: 0b030003     	add	w3, w0, w3
   18e24: 7100183f     	cmp	w1, #0x6
   18e28: 54000083     	b.lo	0x18e38 <tp_ghost_check+0x1c0>
   18e2c: 12003c60     	and	w0, w3, #0xffff
   18e30: 6b00015f     	cmp	w10, w0
   18e34: 54000ec3     	b.lo	0x1900c <tp_ghost_check+0x394>
   18e38: 710011bf     	cmp	w13, #0x4
   18e3c: 540001e0     	b.eq	0x18e78 <tp_ghost_check+0x200>
   18e40: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018e40:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x27c
   18e44: 79400004     	ldrh	w4, [x0]
		0000000000018e44:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x27c
   18e48: 6b0b009f     	cmp	w4, w11
   18e4c: 54000b62     	b.hs	0x18fb8 <tp_ghost_check+0x340>
   18e50: 34000111     	cbz	w17, 0x18e70 <tp_ghost_check+0x1f8>
   18e54: 12001d20     	and	w0, w9, #0xff
   18e58: 0b030223     	add	w3, w17, w3
   18e5c: 7100181f     	cmp	w0, #0x6
   18e60: 54000083     	b.lo	0x18e70 <tp_ghost_check+0x1f8>
   18e64: 12003c71     	and	w17, w3, #0xffff
   18e68: 6b11015f     	cmp	w10, w17
   18e6c: 54000d43     	b.lo	0x19014 <tp_ghost_check+0x39c>
   18e70: 710015bf     	cmp	w13, #0x5
   18e74: 540001e0     	b.eq	0x18eb0 <tp_ghost_check+0x238>
   18e78: 90000011     	adrp	x17, 0x18000 <tpd_touch_press+0x360>
		0000000000018e78:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x304
   18e7c: 79400224     	ldrh	w4, [x17]
		0000000000018e7c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x304
   18e80: 6b0b009f     	cmp	w4, w11
   18e84: 540009e2     	b.hs	0x18fc0 <tp_ghost_check+0x348>
   18e88: 34000110     	cbz	w16, 0x18ea8 <tp_ghost_check+0x230>
   18e8c: 12001d31     	and	w17, w9, #0xff
   18e90: 0b030203     	add	w3, w16, w3
   18e94: 71001a3f     	cmp	w17, #0x6
   18e98: 54000083     	b.lo	0x18ea8 <tp_ghost_check+0x230>
   18e9c: 12003c70     	and	w16, w3, #0xffff
   18ea0: 6b10015f     	cmp	w10, w16
   18ea4: 54000bc3     	b.lo	0x1901c <tp_ghost_check+0x3a4>
   18ea8: 710019bf     	cmp	w13, #0x6
   18eac: 540001e0     	b.eq	0x18ee8 <tp_ghost_check+0x270>
   18eb0: 90000010     	adrp	x16, 0x18000 <tpd_touch_press+0x360>
		0000000000018eb0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x38c
   18eb4: 79400204     	ldrh	w4, [x16]
		0000000000018eb4:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x38c
   18eb8: 6b0b009f     	cmp	w4, w11
   18ebc: 54000862     	b.hs	0x18fc8 <tp_ghost_check+0x350>
   18ec0: 3400010f     	cbz	w15, 0x18ee0 <tp_ghost_check+0x268>
   18ec4: 12001d30     	and	w16, w9, #0xff
   18ec8: 0b0301e3     	add	w3, w15, w3
   18ecc: 71001a1f     	cmp	w16, #0x6
   18ed0: 54000083     	b.lo	0x18ee0 <tp_ghost_check+0x268>
   18ed4: 12003c6f     	and	w15, w3, #0xffff
   18ed8: 6b0f015f     	cmp	w10, w15
   18edc: 54000a43     	b.lo	0x19024 <tp_ghost_check+0x3ac>
   18ee0: 71001dbf     	cmp	w13, #0x7
   18ee4: 540001e0     	b.eq	0x18f20 <tp_ghost_check+0x2a8>
   18ee8: 9000000f     	adrp	x15, 0x18000 <tpd_touch_press+0x360>
		0000000000018ee8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x414
   18eec: 794001e4     	ldrh	w4, [x15]
		0000000000018eec:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x414
   18ef0: 6b0b009f     	cmp	w4, w11
   18ef4: 540006e2     	b.hs	0x18fd0 <tp_ghost_check+0x358>
   18ef8: 3400010e     	cbz	w14, 0x18f18 <tp_ghost_check+0x2a0>
   18efc: 12001d2f     	and	w15, w9, #0xff
   18f00: 0b0301c3     	add	w3, w14, w3
   18f04: 710019ff     	cmp	w15, #0x6
   18f08: 54000083     	b.lo	0x18f18 <tp_ghost_check+0x2a0>
   18f0c: 12003c6e     	and	w14, w3, #0xffff
   18f10: 6b0e015f     	cmp	w10, w14
   18f14: 540008c3     	b.lo	0x1902c <tp_ghost_check+0x3b4>
   18f18: 710021bf     	cmp	w13, #0x8
   18f1c: 540001e0     	b.eq	0x18f58 <tp_ghost_check+0x2e0>
   18f20: 9000000e     	adrp	x14, 0x18000 <tpd_touch_press+0x360>
		0000000000018f20:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x49c
   18f24: 794001c4     	ldrh	w4, [x14]
		0000000000018f24:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x49c
   18f28: 6b0b009f     	cmp	w4, w11
   18f2c: 54000562     	b.hs	0x18fd8 <tp_ghost_check+0x360>
   18f30: 3400010c     	cbz	w12, 0x18f50 <tp_ghost_check+0x2d8>
   18f34: 12001d2e     	and	w14, w9, #0xff
   18f38: 0b030183     	add	w3, w12, w3
   18f3c: 710019df     	cmp	w14, #0x6
   18f40: 54000083     	b.lo	0x18f50 <tp_ghost_check+0x2d8>
   18f44: 12003c6c     	and	w12, w3, #0xffff
   18f48: 6b0c015f     	cmp	w10, w12
   18f4c: 54000743     	b.lo	0x19034 <tp_ghost_check+0x3bc>
   18f50: 710025bf     	cmp	w13, #0x9
   18f54: 540001a0     	b.eq	0x18f88 <tp_ghost_check+0x310>
   18f58: 9000000c     	adrp	x12, 0x18000 <tpd_touch_press+0x360>
		0000000000018f58:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x524
   18f5c: 79400184     	ldrh	w4, [x12]
		0000000000018f5c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x524
   18f60: 6b0b009f     	cmp	w4, w11
   18f64: 54000422     	b.hs	0x18fe8 <tp_ghost_check+0x370>
   18f68: 34000108     	cbz	w8, 0x18f88 <tp_ghost_check+0x310>
   18f6c: 12001d29     	and	w9, w9, #0xff
   18f70: 7100193f     	cmp	w9, #0x6
   18f74: 540000a3     	b.lo	0x18f88 <tp_ghost_check+0x310>
   18f78: 0b030108     	add	w8, w8, w3
   18f7c: 12003d03     	and	w3, w8, #0xffff
   18f80: 6b03015f     	cmp	w10, w3
   18f84: 540005a3     	b.lo	0x19038 <tp_ghost_check+0x3c0>
   18f88: aa1303e0     	mov	x0, x19
   18f8c: 94000000     	bl	0x18f8c <tp_ghost_check+0x314>
		0000000000018f8c:  R_AARCH64_CALL26	vfree
   18f90: 2a1f03e0     	mov	w0, wzr
   18f94: 1400006b     	b	0x19140 <tp_ghost_check+0x4c8>
   18f98: 52800023     	mov	w3, #0x1                // =1
   18f9c: 14000014     	b	0x18fec <tp_ghost_check+0x374>
   18fa0: 2a1f03e3     	mov	w3, wzr
   18fa4: 14000012     	b	0x18fec <tp_ghost_check+0x374>
   18fa8: 52800043     	mov	w3, #0x2                // =2
   18fac: 14000010     	b	0x18fec <tp_ghost_check+0x374>
   18fb0: 52800063     	mov	w3, #0x3                // =3
   18fb4: 1400000e     	b	0x18fec <tp_ghost_check+0x374>
   18fb8: 52800083     	mov	w3, #0x4                // =4
   18fbc: 1400000c     	b	0x18fec <tp_ghost_check+0x374>
   18fc0: 528000a3     	mov	w3, #0x5                // =5
   18fc4: 1400000a     	b	0x18fec <tp_ghost_check+0x374>
   18fc8: 528000c3     	mov	w3, #0x6                // =6
   18fcc: 14000008     	b	0x18fec <tp_ghost_check+0x374>
   18fd0: 528000e3     	mov	w3, #0x7                // =7
   18fd4: 14000006     	b	0x18fec <tp_ghost_check+0x374>
   18fd8: 52800103     	mov	w3, #0x8                // =8
   18fdc: 14000004     	b	0x18fec <tp_ghost_check+0x374>
   18fe0: 2a0203e3     	mov	w3, w2
   18fe4: 14000015     	b	0x19038 <tp_ghost_check+0x3c0>
   18fe8: 52800123     	mov	w3, #0x9                // =9
   18fec: 90000002     	adrp	x2, 0x18000 <tpd_touch_press+0x360>
		0000000000018fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c46
   18ff0: 91000042     	add	x2, x2, #0x0
		0000000000018ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c46
   18ff4: aa1303e0     	mov	x0, x19
   18ff8: 52810001     	mov	w1, #0x800              // =2048
   18ffc: 94000000     	bl	0x18ffc <tp_ghost_check+0x384>
		0000000000018ffc:  R_AARCH64_CALL26	snprintf
   19000: 14000013     	b	0x1904c <tp_ghost_check+0x3d4>
   19004: 2a0103e3     	mov	w3, w1
   19008: 1400000c     	b	0x19038 <tp_ghost_check+0x3c0>
   1900c: 2a0003e3     	mov	w3, w0
   19010: 1400000a     	b	0x19038 <tp_ghost_check+0x3c0>
   19014: 2a1103e3     	mov	w3, w17
   19018: 14000008     	b	0x19038 <tp_ghost_check+0x3c0>
   1901c: 2a1003e3     	mov	w3, w16
   19020: 14000006     	b	0x19038 <tp_ghost_check+0x3c0>
   19024: 2a0f03e3     	mov	w3, w15
   19028: 14000004     	b	0x19038 <tp_ghost_check+0x3c0>
   1902c: 2a0e03e3     	mov	w3, w14
   19030: 14000002     	b	0x19038 <tp_ghost_check+0x3c0>
   19034: 2a0c03e3     	mov	w3, w12
   19038: 90000002     	adrp	x2, 0x19000 <tp_ghost_check+0x388>
		0000000000019038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8772
   1903c: 91000042     	add	x2, x2, #0x0
		000000000001903c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8772
   19040: aa1303e0     	mov	x0, x19
   19044: 52810001     	mov	w1, #0x800              // =2048
   19048: 94000000     	bl	0x19048 <tp_ghost_check+0x3d0>
		0000000000019048:  R_AARCH64_CALL26	snprintf
   1904c: 52810018     	mov	w24, #0x800             // =2048
   19050: 2a0003f6     	mov	w22, w0
   19054: 90000002     	adrp	x2, 0x19000 <tp_ghost_check+0x388>
		0000000000019054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c72
   19058: 91000042     	add	x2, x2, #0x0
		0000000000019058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c72
   1905c: 4b000308     	sub	w8, w24, w0
   19060: 8b20c260     	add	x0, x19, w0, sxtw
   19064: 93407d01     	sxtw	x1, w8
   19068: 2a1403e3     	mov	w3, w20
   1906c: 94000000     	bl	0x1906c <tp_ghost_check+0x3f4>
		000000000001906c:  R_AARCH64_CALL26	snprintf
   19070: 2a1f03f4     	mov	w20, wzr
   19074: 9280a9f9     	mov	x25, #-0x550            // =-1360
   19078: 9000001a     	adrp	x26, 0x19000 <tp_ghost_check+0x388>
		0000000000019078:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   1907c: 9100035a     	add	x26, x26, #0x0
		000000000001907c:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   19080: 90000015     	adrp	x21, 0x19000 <tp_ghost_check+0x388>
		0000000000019080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd8
   19084: 910002b5     	add	x21, x21, #0x0
		0000000000019084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd8
   19088: 0b16001b     	add	w27, w0, w22
   1908c: 90000016     	adrp	x22, 0x19000 <tp_ghost_check+0x388>
		000000000001908c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2c2
   19090: 910002d6     	add	x22, x22, #0x0
		0000000000019090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2c2
   19094: 14000004     	b	0x190a4 <tp_ghost_check+0x42c>
   19098: b1022339     	adds	x25, x25, #0x88
   1909c: 11000694     	add	w20, w20, #0x1
   190a0: 540002e0     	b.eq	0x190fc <tp_ghost_check+0x484>
   190a4: 8b19035c     	add	x28, x26, x25
   190a8: 794b5f88     	ldrh	w8, [x28, #0x5ae]
   190ac: 34ffff68     	cbz	w8, 0x19098 <tp_ghost_check+0x420>
   190b0: 4b1b0308     	sub	w8, w24, w27
   190b4: 8b3bc260     	add	x0, x19, w27, sxtw
   190b8: b9456b84     	ldr	w4, [x28, #0x568]
   190bc: 93407d01     	sxtw	x1, w8
   190c0: b9456f85     	ldr	w5, [x28, #0x56c]
   190c4: aa1503e2     	mov	x2, x21
   190c8: 2a1403e3     	mov	w3, w20
   190cc: 94000000     	bl	0x190cc <tp_ghost_check+0x454>
		00000000000190cc:  R_AARCH64_CALL26	snprintf
   190d0: 0b1b001b     	add	w27, w0, w27
   190d4: b9457784     	ldr	w4, [x28, #0x574]
   190d8: b9457b85     	ldr	w5, [x28, #0x578]
   190dc: 4b1b0308     	sub	w8, w24, w27
   190e0: 8b3bc260     	add	x0, x19, w27, sxtw
   190e4: aa1603e2     	mov	x2, x22
   190e8: 93407d01     	sxtw	x1, w8
   190ec: 2a1403e3     	mov	w3, w20
   190f0: 94000000     	bl	0x190f0 <tp_ghost_check+0x478>
		00000000000190f0:  R_AARCH64_CALL26	snprintf
   190f4: 0b1b001b     	add	w27, w0, w27
   190f8: 17ffffe8     	b	0x19098 <tp_ghost_check+0x420>
   190fc: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x388>
		00000000000190fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c66
   19100: 91000000     	add	x0, x0, #0x0
		0000000000019100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c66
   19104: 90000001     	adrp	x1, 0x19000 <tp_ghost_check+0x388>
		0000000000019104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1880
   19108: 91000021     	add	x1, x1, #0x0
		0000000000019108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1880
   1910c: aa1303e2     	mov	x2, x19
   19110: 94000000     	bl	0x19110 <tp_ghost_check+0x498>
		0000000000019110:  R_AARCH64_CALL26	_printk
   19114: f94002e8     	ldr	x8, [x23]
		0000000000019114:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   19118: f945f500     	ldr	x0, [x8, #0xbe8]
   1911c: b4000080     	cbz	x0, 0x1912c <tp_ghost_check+0x4b4>
   19120: 52810001     	mov	w1, #0x800              // =2048
   19124: aa1303e2     	mov	x2, x19
   19128: 94000000     	bl	0x19128 <tp_ghost_check+0x4b0>
		0000000000019128:  R_AARCH64_CALL26	snprintf
   1912c: 52800200     	mov	w0, #0x10               // =16
   19130: 94000000     	bl	0x19130 <tp_ghost_check+0x4b8>
		0000000000019130:  R_AARCH64_CALL26	tpd_zlog_record_notify
   19134: aa1303e0     	mov	x0, x19
   19138: 94000000     	bl	0x19138 <tp_ghost_check+0x4c0>
		0000000000019138:  R_AARCH64_CALL26	vfree
   1913c: 52800020     	mov	w0, #0x1                // =1
   19140: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   19144: a94457f6     	ldp	x22, x21, [sp, #0x40]
   19148: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   1914c: a94267fa     	ldp	x26, x25, [sp, #0x20]
   19150: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   19154: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   19158: d50323bf     	autiasp
   1915c: d65f03c0     	ret
   19160: d5384114     	mrs	x20, SP_EL0
   19164: f9402a96     	ldr	x22, [x20, #0x50]
   19168: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x388>
		0000000000019168:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x6b0
   1916c: 91000108     	add	x8, x8, #0x0
		000000000001916c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x6b0
   19170: 52810000     	mov	w0, #0x800              // =2048
   19174: f9002a88     	str	x8, [x20, #0x50]
   19178: 94000000     	bl	0x19178 <tp_ghost_check+0x500>
		0000000000019178:  R_AARCH64_CALL26	vmalloc_noprof
   1917c: aa0003f3     	mov	x19, x0
   19180: f9002a96     	str	x22, [x20, #0x50]
   19184: b5ffd993     	cbnz	x19, 0x18cb4 <tp_ghost_check+0x3c>
   19188: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x388>
		0000000000019188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76a6
   1918c: 91000000     	add	x0, x0, #0x0
		000000000001918c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76a6
   19190: 94000000     	bl	0x19190 <tp_ghost_check+0x518>
		0000000000019190:  R_AARCH64_CALL26	_printk
   19194: 17ffff7f     	b	0x18f90 <tp_ghost_check+0x318>
