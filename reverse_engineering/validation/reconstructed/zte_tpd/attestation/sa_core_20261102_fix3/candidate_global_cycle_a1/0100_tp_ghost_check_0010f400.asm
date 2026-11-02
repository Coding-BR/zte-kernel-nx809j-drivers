
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018cd4 <tp_ghost_check>:
   18cd4: d503233f     	paciasp
   18cd8: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   18cdc: a9016ffc     	stp	x28, x27, [sp, #0x10]
   18ce0: a90267fa     	stp	x26, x25, [sp, #0x20]
   18ce4: a9035ff8     	stp	x24, x23, [sp, #0x30]
   18ce8: a90457f6     	stp	x22, x21, [sp, #0x40]
   18cec: a9054ff4     	stp	x20, x19, [sp, #0x50]
   18cf0: 910003fd     	mov	x29, sp
   18cf4: 90000017     	adrp	x23, 0x18000 <tpd_touch_press+0x304>
		0000000000018cf4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   18cf8: f94002f5     	ldr	x21, [x23]
		0000000000018cf8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   18cfc: d503201f     	nop
   18d00: 52810000     	mov	w0, #0x800              // =2048
   18d04: 94000000     	bl	0x18d04 <tp_ghost_check+0x30>
		0000000000018d04:  R_AARCH64_CALL26	vmalloc_noprof
   18d08: aa0003f3     	mov	x19, x0
   18d0c: b40026d3     	cbz	x19, 0x191e4 <tp_ghost_check+0x510>
   18d10: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018d10:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5e
   18d14: 91000108     	add	x8, x8, #0x0
		0000000000018d14:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x5e
   18d18: b9448eaa     	ldr	w10, [x21, #0x48c]
   18d1c: 79411102     	ldrh	w2, [x8, #0x88]
   18d20: 79400103     	ldrh	w3, [x8]
   18d24: 79422101     	ldrh	w1, [x8, #0x110]
   18d28: 79433100     	ldrh	w0, [x8, #0x198]
   18d2c: 79444111     	ldrh	w17, [x8, #0x220]
   18d30: 79455110     	ldrh	w16, [x8, #0x2a8]
   18d34: 7100005f     	cmp	w2, #0x0
   18d38: 7946610f     	ldrh	w15, [x8, #0x330]
   18d3c: 7947710e     	ldrh	w14, [x8, #0x3b8]
   18d40: 1a9f07e9     	cset	w9, ne
   18d44: 7100007f     	cmp	w3, #0x0
   18d48: 7948810c     	ldrh	w12, [x8, #0x440]
   18d4c: 1a890529     	cinc	w9, w9, ne
   18d50: 7100003f     	cmp	w1, #0x0
   18d54: 79499108     	ldrh	w8, [x8, #0x4c8]
   18d58: 1a890529     	cinc	w9, w9, ne
   18d5c: 7100001f     	cmp	w0, #0x0
   18d60: b9449aad     	ldr	w13, [x21, #0x498]
   18d64: 1a890529     	cinc	w9, w9, ne
   18d68: 7100023f     	cmp	w17, #0x0
   18d6c: 1a890529     	cinc	w9, w9, ne
   18d70: 7100021f     	cmp	w16, #0x0
   18d74: 1a890529     	cinc	w9, w9, ne
   18d78: 710001ff     	cmp	w15, #0x0
   18d7c: 1a890529     	cinc	w9, w9, ne
   18d80: 710001df     	cmp	w14, #0x0
   18d84: 1a890529     	cinc	w9, w9, ne
   18d88: 7100019f     	cmp	w12, #0x0
   18d8c: 1a890529     	cinc	w9, w9, ne
   18d90: 7100011f     	cmp	w8, #0x0
   18d94: 1a890529     	cinc	w9, w9, ne
   18d98: 12001d24     	and	w4, w9, #0xff
   18d9c: 6b04015f     	cmp	w10, w4
   18da0: 1a84c154     	csel	w20, w10, w4, gt
   18da4: 5280926a     	mov	w10, #0x493             // =1171
   18da8: 71000a9f     	cmp	w20, #0x2
   18dac: 9a8a954a     	cinc	x10, x10, hi
   18db0: 386a6aab     	ldrb	w11, [x21, x10]
   18db4: 1b047d6a     	mul	w10, w11, w4
   18db8: 340001cd     	cbz	w13, 0x18df0 <tp_ghost_check+0x11c>
   18dbc: 90000004     	adrp	x4, 0x18000 <tpd_touch_press+0x304>
		0000000000018dbc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5c
   18dc0: 79400084     	ldrh	w4, [x4]
		0000000000018dc0:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x5c
   18dc4: 6b0b009f     	cmp	w4, w11
   18dc8: 540011a2     	b.hs	0x18ffc <tp_ghost_check+0x328>
   18dcc: 340000c3     	cbz	w3, 0x18de4 <tp_ghost_check+0x110>
   18dd0: 12001d24     	and	w4, w9, #0xff
   18dd4: 7100189f     	cmp	w4, #0x6
   18dd8: 54000063     	b.lo	0x18de4 <tp_ghost_check+0x110>
   18ddc: 6b03015f     	cmp	w10, w3
   18de0: 540015a3     	b.lo	0x19094 <tp_ghost_check+0x3c0>
   18de4: 710005bf     	cmp	w13, #0x1
   18de8: 54000061     	b.ne	0x18df4 <tp_ghost_check+0x120>
   18dec: 14000010     	b	0x18e2c <tp_ghost_check+0x158>
   18df0: 2a1f03e3     	mov	w3, wzr
   18df4: 90000004     	adrp	x4, 0x18000 <tpd_touch_press+0x304>
		0000000000018df4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xe4
   18df8: 79400084     	ldrh	w4, [x4]
		0000000000018df8:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0xe4
   18dfc: 6b0b009f     	cmp	w4, w11
   18e00: 54000fa2     	b.hs	0x18ff4 <tp_ghost_check+0x320>
   18e04: 34000102     	cbz	w2, 0x18e24 <tp_ghost_check+0x150>
   18e08: 12001d24     	and	w4, w9, #0xff
   18e0c: 0b030043     	add	w3, w2, w3
   18e10: 7100189f     	cmp	w4, #0x6
   18e14: 54000083     	b.lo	0x18e24 <tp_ghost_check+0x150>
   18e18: 12003c62     	and	w2, w3, #0xffff
   18e1c: 6b02015f     	cmp	w10, w2
   18e20: 540010e3     	b.lo	0x1903c <tp_ghost_check+0x368>
   18e24: 710009bf     	cmp	w13, #0x2
   18e28: 540001e0     	b.eq	0x18e64 <tp_ghost_check+0x190>
   18e2c: 90000002     	adrp	x2, 0x18000 <tpd_touch_press+0x304>
		0000000000018e2c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x16c
   18e30: 79400044     	ldrh	w4, [x2]
		0000000000018e30:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x16c
   18e34: 6b0b009f     	cmp	w4, w11
   18e38: 54000e62     	b.hs	0x19004 <tp_ghost_check+0x330>
   18e3c: 34000101     	cbz	w1, 0x18e5c <tp_ghost_check+0x188>
   18e40: 12001d22     	and	w2, w9, #0xff
   18e44: 0b030023     	add	w3, w1, w3
   18e48: 7100185f     	cmp	w2, #0x6
   18e4c: 54000083     	b.lo	0x18e5c <tp_ghost_check+0x188>
   18e50: 12003c61     	and	w1, w3, #0xffff
   18e54: 6b01015f     	cmp	w10, w1
   18e58: 54001043     	b.lo	0x19060 <tp_ghost_check+0x38c>
   18e5c: 71000dbf     	cmp	w13, #0x3
   18e60: 540001e0     	b.eq	0x18e9c <tp_ghost_check+0x1c8>
   18e64: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x304>
		0000000000018e64:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1f4
   18e68: 79400024     	ldrh	w4, [x1]
		0000000000018e68:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x1f4
   18e6c: 6b0b009f     	cmp	w4, w11
   18e70: 54000ce2     	b.hs	0x1900c <tp_ghost_check+0x338>
   18e74: 34000100     	cbz	w0, 0x18e94 <tp_ghost_check+0x1c0>
   18e78: 12001d21     	and	w1, w9, #0xff
   18e7c: 0b030003     	add	w3, w0, w3
   18e80: 7100183f     	cmp	w1, #0x6
   18e84: 54000083     	b.lo	0x18e94 <tp_ghost_check+0x1c0>
   18e88: 12003c60     	and	w0, w3, #0xffff
   18e8c: 6b00015f     	cmp	w10, w0
   18e90: 54000ec3     	b.lo	0x19068 <tp_ghost_check+0x394>
   18e94: 710011bf     	cmp	w13, #0x4
   18e98: 540001e0     	b.eq	0x18ed4 <tp_ghost_check+0x200>
   18e9c: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018e9c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x27c
   18ea0: 79400004     	ldrh	w4, [x0]
		0000000000018ea0:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x27c
   18ea4: 6b0b009f     	cmp	w4, w11
   18ea8: 54000b62     	b.hs	0x19014 <tp_ghost_check+0x340>
   18eac: 34000111     	cbz	w17, 0x18ecc <tp_ghost_check+0x1f8>
   18eb0: 12001d20     	and	w0, w9, #0xff
   18eb4: 0b030223     	add	w3, w17, w3
   18eb8: 7100181f     	cmp	w0, #0x6
   18ebc: 54000083     	b.lo	0x18ecc <tp_ghost_check+0x1f8>
   18ec0: 12003c71     	and	w17, w3, #0xffff
   18ec4: 6b11015f     	cmp	w10, w17
   18ec8: 54000d43     	b.lo	0x19070 <tp_ghost_check+0x39c>
   18ecc: 710015bf     	cmp	w13, #0x5
   18ed0: 540001e0     	b.eq	0x18f0c <tp_ghost_check+0x238>
   18ed4: 90000011     	adrp	x17, 0x18000 <tpd_touch_press+0x304>
		0000000000018ed4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x304
   18ed8: 79400224     	ldrh	w4, [x17]
		0000000000018ed8:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x304
   18edc: 6b0b009f     	cmp	w4, w11
   18ee0: 540009e2     	b.hs	0x1901c <tp_ghost_check+0x348>
   18ee4: 34000110     	cbz	w16, 0x18f04 <tp_ghost_check+0x230>
   18ee8: 12001d31     	and	w17, w9, #0xff
   18eec: 0b030203     	add	w3, w16, w3
   18ef0: 71001a3f     	cmp	w17, #0x6
   18ef4: 54000083     	b.lo	0x18f04 <tp_ghost_check+0x230>
   18ef8: 12003c70     	and	w16, w3, #0xffff
   18efc: 6b10015f     	cmp	w10, w16
   18f00: 54000bc3     	b.lo	0x19078 <tp_ghost_check+0x3a4>
   18f04: 710019bf     	cmp	w13, #0x6
   18f08: 540001e0     	b.eq	0x18f44 <tp_ghost_check+0x270>
   18f0c: 90000010     	adrp	x16, 0x18000 <tpd_touch_press+0x304>
		0000000000018f0c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x38c
   18f10: 79400204     	ldrh	w4, [x16]
		0000000000018f10:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x38c
   18f14: 6b0b009f     	cmp	w4, w11
   18f18: 54000862     	b.hs	0x19024 <tp_ghost_check+0x350>
   18f1c: 3400010f     	cbz	w15, 0x18f3c <tp_ghost_check+0x268>
   18f20: 12001d30     	and	w16, w9, #0xff
   18f24: 0b0301e3     	add	w3, w15, w3
   18f28: 71001a1f     	cmp	w16, #0x6
   18f2c: 54000083     	b.lo	0x18f3c <tp_ghost_check+0x268>
   18f30: 12003c6f     	and	w15, w3, #0xffff
   18f34: 6b0f015f     	cmp	w10, w15
   18f38: 54000a43     	b.lo	0x19080 <tp_ghost_check+0x3ac>
   18f3c: 71001dbf     	cmp	w13, #0x7
   18f40: 540001e0     	b.eq	0x18f7c <tp_ghost_check+0x2a8>
   18f44: 9000000f     	adrp	x15, 0x18000 <tpd_touch_press+0x304>
		0000000000018f44:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x414
   18f48: 794001e4     	ldrh	w4, [x15]
		0000000000018f48:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x414
   18f4c: 6b0b009f     	cmp	w4, w11
   18f50: 540006e2     	b.hs	0x1902c <tp_ghost_check+0x358>
   18f54: 3400010e     	cbz	w14, 0x18f74 <tp_ghost_check+0x2a0>
   18f58: 12001d2f     	and	w15, w9, #0xff
   18f5c: 0b0301c3     	add	w3, w14, w3
   18f60: 710019ff     	cmp	w15, #0x6
   18f64: 54000083     	b.lo	0x18f74 <tp_ghost_check+0x2a0>
   18f68: 12003c6e     	and	w14, w3, #0xffff
   18f6c: 6b0e015f     	cmp	w10, w14
   18f70: 540008c3     	b.lo	0x19088 <tp_ghost_check+0x3b4>
   18f74: 710021bf     	cmp	w13, #0x8
   18f78: 540001e0     	b.eq	0x18fb4 <tp_ghost_check+0x2e0>
   18f7c: 9000000e     	adrp	x14, 0x18000 <tpd_touch_press+0x304>
		0000000000018f7c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x49c
   18f80: 794001c4     	ldrh	w4, [x14]
		0000000000018f80:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x49c
   18f84: 6b0b009f     	cmp	w4, w11
   18f88: 54000562     	b.hs	0x19034 <tp_ghost_check+0x360>
   18f8c: 3400010c     	cbz	w12, 0x18fac <tp_ghost_check+0x2d8>
   18f90: 12001d2e     	and	w14, w9, #0xff
   18f94: 0b030183     	add	w3, w12, w3
   18f98: 710019df     	cmp	w14, #0x6
   18f9c: 54000083     	b.lo	0x18fac <tp_ghost_check+0x2d8>
   18fa0: 12003c6c     	and	w12, w3, #0xffff
   18fa4: 6b0c015f     	cmp	w10, w12
   18fa8: 54000743     	b.lo	0x19090 <tp_ghost_check+0x3bc>
   18fac: 710025bf     	cmp	w13, #0x9
   18fb0: 540001a0     	b.eq	0x18fe4 <tp_ghost_check+0x310>
   18fb4: 9000000c     	adrp	x12, 0x18000 <tpd_touch_press+0x304>
		0000000000018fb4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x524
   18fb8: 79400184     	ldrh	w4, [x12]
		0000000000018fb8:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x524
   18fbc: 6b0b009f     	cmp	w4, w11
   18fc0: 54000422     	b.hs	0x19044 <tp_ghost_check+0x370>
   18fc4: 34000108     	cbz	w8, 0x18fe4 <tp_ghost_check+0x310>
   18fc8: 12001d29     	and	w9, w9, #0xff
   18fcc: 7100193f     	cmp	w9, #0x6
   18fd0: 540000a3     	b.lo	0x18fe4 <tp_ghost_check+0x310>
   18fd4: 0b030108     	add	w8, w8, w3
   18fd8: 12003d03     	and	w3, w8, #0xffff
   18fdc: 6b03015f     	cmp	w10, w3
   18fe0: 540005a3     	b.lo	0x19094 <tp_ghost_check+0x3c0>
   18fe4: aa1303e0     	mov	x0, x19
   18fe8: 94000000     	bl	0x18fe8 <tp_ghost_check+0x314>
		0000000000018fe8:  R_AARCH64_CALL26	vfree
   18fec: 2a1f03e0     	mov	w0, wzr
   18ff0: 1400006b     	b	0x1919c <tp_ghost_check+0x4c8>
   18ff4: 52800023     	mov	w3, #0x1                // =1
   18ff8: 14000014     	b	0x19048 <tp_ghost_check+0x374>
   18ffc: 2a1f03e3     	mov	w3, wzr
   19000: 14000012     	b	0x19048 <tp_ghost_check+0x374>
   19004: 52800043     	mov	w3, #0x2                // =2
   19008: 14000010     	b	0x19048 <tp_ghost_check+0x374>
   1900c: 52800063     	mov	w3, #0x3                // =3
   19010: 1400000e     	b	0x19048 <tp_ghost_check+0x374>
   19014: 52800083     	mov	w3, #0x4                // =4
   19018: 1400000c     	b	0x19048 <tp_ghost_check+0x374>
   1901c: 528000a3     	mov	w3, #0x5                // =5
   19020: 1400000a     	b	0x19048 <tp_ghost_check+0x374>
   19024: 528000c3     	mov	w3, #0x6                // =6
   19028: 14000008     	b	0x19048 <tp_ghost_check+0x374>
   1902c: 528000e3     	mov	w3, #0x7                // =7
   19030: 14000006     	b	0x19048 <tp_ghost_check+0x374>
   19034: 52800103     	mov	w3, #0x8                // =8
   19038: 14000004     	b	0x19048 <tp_ghost_check+0x374>
   1903c: 2a0203e3     	mov	w3, w2
   19040: 14000015     	b	0x19094 <tp_ghost_check+0x3c0>
   19044: 52800123     	mov	w3, #0x9                // =9
   19048: 90000002     	adrp	x2, 0x19000 <tp_ghost_check+0x32c>
		0000000000019048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c46
   1904c: 91000042     	add	x2, x2, #0x0
		000000000001904c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c46
   19050: aa1303e0     	mov	x0, x19
   19054: 52810001     	mov	w1, #0x800              // =2048
   19058: 94000000     	bl	0x19058 <tp_ghost_check+0x384>
		0000000000019058:  R_AARCH64_CALL26	snprintf
   1905c: 14000013     	b	0x190a8 <tp_ghost_check+0x3d4>
   19060: 2a0103e3     	mov	w3, w1
   19064: 1400000c     	b	0x19094 <tp_ghost_check+0x3c0>
   19068: 2a0003e3     	mov	w3, w0
   1906c: 1400000a     	b	0x19094 <tp_ghost_check+0x3c0>
   19070: 2a1103e3     	mov	w3, w17
   19074: 14000008     	b	0x19094 <tp_ghost_check+0x3c0>
   19078: 2a1003e3     	mov	w3, w16
   1907c: 14000006     	b	0x19094 <tp_ghost_check+0x3c0>
   19080: 2a0f03e3     	mov	w3, w15
   19084: 14000004     	b	0x19094 <tp_ghost_check+0x3c0>
   19088: 2a0e03e3     	mov	w3, w14
   1908c: 14000002     	b	0x19094 <tp_ghost_check+0x3c0>
   19090: 2a0c03e3     	mov	w3, w12
   19094: 90000002     	adrp	x2, 0x19000 <tp_ghost_check+0x32c>
		0000000000019094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8772
   19098: 91000042     	add	x2, x2, #0x0
		0000000000019098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8772
   1909c: aa1303e0     	mov	x0, x19
   190a0: 52810001     	mov	w1, #0x800              // =2048
   190a4: 94000000     	bl	0x190a4 <tp_ghost_check+0x3d0>
		00000000000190a4:  R_AARCH64_CALL26	snprintf
   190a8: 52810018     	mov	w24, #0x800             // =2048
   190ac: 2a0003f6     	mov	w22, w0
   190b0: 90000002     	adrp	x2, 0x19000 <tp_ghost_check+0x32c>
		00000000000190b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c72
   190b4: 91000042     	add	x2, x2, #0x0
		00000000000190b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c72
   190b8: 4b000308     	sub	w8, w24, w0
   190bc: 8b20c260     	add	x0, x19, w0, sxtw
   190c0: 93407d01     	sxtw	x1, w8
   190c4: 2a1403e3     	mov	w3, w20
   190c8: 94000000     	bl	0x190c8 <tp_ghost_check+0x3f4>
		00000000000190c8:  R_AARCH64_CALL26	snprintf
   190cc: 2a1f03f4     	mov	w20, wzr
   190d0: 9280a9f9     	mov	x25, #-0x550            // =-1360
   190d4: 9000001a     	adrp	x26, 0x19000 <tp_ghost_check+0x32c>
		00000000000190d4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   190d8: 9100035a     	add	x26, x26, #0x0
		00000000000190d8:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   190dc: 90000015     	adrp	x21, 0x19000 <tp_ghost_check+0x32c>
		00000000000190dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd8
   190e0: 910002b5     	add	x21, x21, #0x0
		00000000000190e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd8
   190e4: 0b16001b     	add	w27, w0, w22
   190e8: 90000016     	adrp	x22, 0x19000 <tp_ghost_check+0x32c>
		00000000000190e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2c2
   190ec: 910002d6     	add	x22, x22, #0x0
		00000000000190ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2c2
   190f0: 14000004     	b	0x19100 <tp_ghost_check+0x42c>
   190f4: b1022339     	adds	x25, x25, #0x88
   190f8: 11000694     	add	w20, w20, #0x1
   190fc: 540002e0     	b.eq	0x19158 <tp_ghost_check+0x484>
   19100: 8b19035c     	add	x28, x26, x25
   19104: 794b5f88     	ldrh	w8, [x28, #0x5ae]
   19108: 34ffff68     	cbz	w8, 0x190f4 <tp_ghost_check+0x420>
   1910c: 4b1b0308     	sub	w8, w24, w27
   19110: 8b3bc260     	add	x0, x19, w27, sxtw
   19114: b9456b84     	ldr	w4, [x28, #0x568]
   19118: 93407d01     	sxtw	x1, w8
   1911c: b9456f85     	ldr	w5, [x28, #0x56c]
   19120: aa1503e2     	mov	x2, x21
   19124: 2a1403e3     	mov	w3, w20
   19128: 94000000     	bl	0x19128 <tp_ghost_check+0x454>
		0000000000019128:  R_AARCH64_CALL26	snprintf
   1912c: 0b1b001b     	add	w27, w0, w27
   19130: b9457784     	ldr	w4, [x28, #0x574]
   19134: b9457b85     	ldr	w5, [x28, #0x578]
   19138: 4b1b0308     	sub	w8, w24, w27
   1913c: 8b3bc260     	add	x0, x19, w27, sxtw
   19140: aa1603e2     	mov	x2, x22
   19144: 93407d01     	sxtw	x1, w8
   19148: 2a1403e3     	mov	w3, w20
   1914c: 94000000     	bl	0x1914c <tp_ghost_check+0x478>
		000000000001914c:  R_AARCH64_CALL26	snprintf
   19150: 0b1b001b     	add	w27, w0, w27
   19154: 17ffffe8     	b	0x190f4 <tp_ghost_check+0x420>
   19158: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c66
   1915c: 91000000     	add	x0, x0, #0x0
		000000000001915c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c66
   19160: 90000001     	adrp	x1, 0x19000 <tp_ghost_check+0x32c>
		0000000000019160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1880
   19164: 91000021     	add	x1, x1, #0x0
		0000000000019164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1880
   19168: aa1303e2     	mov	x2, x19
   1916c: 94000000     	bl	0x1916c <tp_ghost_check+0x498>
		000000000001916c:  R_AARCH64_CALL26	_printk
   19170: f94002e8     	ldr	x8, [x23]
		0000000000019170:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   19174: f945f500     	ldr	x0, [x8, #0xbe8]
   19178: b4000080     	cbz	x0, 0x19188 <tp_ghost_check+0x4b4>
   1917c: 52810001     	mov	w1, #0x800              // =2048
   19180: aa1303e2     	mov	x2, x19
   19184: 94000000     	bl	0x19184 <tp_ghost_check+0x4b0>
		0000000000019184:  R_AARCH64_CALL26	snprintf
   19188: 52800200     	mov	w0, #0x10               // =16
   1918c: 94000000     	bl	0x1918c <tp_ghost_check+0x4b8>
		000000000001918c:  R_AARCH64_CALL26	tpd_zlog_record_notify
   19190: aa1303e0     	mov	x0, x19
   19194: 94000000     	bl	0x19194 <tp_ghost_check+0x4c0>
		0000000000019194:  R_AARCH64_CALL26	vfree
   19198: 52800020     	mov	w0, #0x1                // =1
   1919c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   191a0: a94457f6     	ldp	x22, x21, [sp, #0x40]
   191a4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   191a8: a94267fa     	ldp	x26, x25, [sp, #0x20]
   191ac: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   191b0: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   191b4: d50323bf     	autiasp
   191b8: d65f03c0     	ret
   191bc: d5384114     	mrs	x20, SP_EL0
   191c0: f9402a96     	ldr	x22, [x20, #0x50]
   191c4: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000191c4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x6b0
   191c8: 91000108     	add	x8, x8, #0x0
		00000000000191c8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x6b0
   191cc: 52810000     	mov	w0, #0x800              // =2048
   191d0: f9002a88     	str	x8, [x20, #0x50]
   191d4: 94000000     	bl	0x191d4 <tp_ghost_check+0x500>
		00000000000191d4:  R_AARCH64_CALL26	vmalloc_noprof
   191d8: aa0003f3     	mov	x19, x0
   191dc: f9002a96     	str	x22, [x20, #0x50]
   191e0: b5ffd993     	cbnz	x19, 0x18d10 <tp_ghost_check+0x3c>
   191e4: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		00000000000191e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76a6
   191e8: 91000000     	add	x0, x0, #0x0
		00000000000191e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76a6
   191ec: 94000000     	bl	0x191ec <tp_ghost_check+0x518>
		00000000000191ec:  R_AARCH64_CALL26	_printk
   191f0: 17ffff7f     	b	0x18fec <tp_ghost_check+0x318>
