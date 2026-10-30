
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024ed4 <tp_ghost_check>:
   24ed4: d503233f     	paciasp
   24ed8: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   24edc: a9016ffc     	stp	x28, x27, [sp, #0x10]
   24ee0: a90267fa     	stp	x26, x25, [sp, #0x20]
   24ee4: a9035ff8     	stp	x24, x23, [sp, #0x30]
   24ee8: a90457f6     	stp	x22, x21, [sp, #0x40]
   24eec: a9054ff4     	stp	x20, x19, [sp, #0x50]
   24ef0: 910003fd     	mov	x29, sp
   24ef4: 90000017     	adrp	x23, 0x24000 <tpd_touch_press+0x104>
		0000000000024ef4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24ef8: f94002f5     	ldr	x21, [x23]
		0000000000024ef8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24efc: d503201f     	nop
   24f00: 52810000     	mov	w0, #0x800              // =2048
   24f04: 94000000     	bl	0x24f04 <tp_ghost_check+0x30>
		0000000000024f04:  R_AARCH64_CALL26	vmalloc_noprof
   24f08: aa0003f3     	mov	x19, x0
   24f0c: b40026d3     	cbz	x19, 0x253e4 <tp_ghost_check+0x510>
   24f10: 90000008     	adrp	x8, 0x24000 <tpd_touch_press+0x104>
		0000000000024f10:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5e
   24f14: 91000108     	add	x8, x8, #0x0
		0000000000024f14:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x5e
   24f18: b9448eaa     	ldr	w10, [x21, #0x48c]
   24f1c: 79411102     	ldrh	w2, [x8, #0x88]
   24f20: 79400103     	ldrh	w3, [x8]
   24f24: 79422101     	ldrh	w1, [x8, #0x110]
   24f28: 79433100     	ldrh	w0, [x8, #0x198]
   24f2c: 79444111     	ldrh	w17, [x8, #0x220]
   24f30: 79455110     	ldrh	w16, [x8, #0x2a8]
   24f34: 7100005f     	cmp	w2, #0x0
   24f38: 7946610f     	ldrh	w15, [x8, #0x330]
   24f3c: 7947710e     	ldrh	w14, [x8, #0x3b8]
   24f40: 1a9f07e9     	cset	w9, ne
   24f44: 7100007f     	cmp	w3, #0x0
   24f48: 7948810c     	ldrh	w12, [x8, #0x440]
   24f4c: 1a890529     	cinc	w9, w9, ne
   24f50: 7100003f     	cmp	w1, #0x0
   24f54: 79499108     	ldrh	w8, [x8, #0x4c8]
   24f58: 1a890529     	cinc	w9, w9, ne
   24f5c: 7100001f     	cmp	w0, #0x0
   24f60: b9449aad     	ldr	w13, [x21, #0x498]
   24f64: 1a890529     	cinc	w9, w9, ne
   24f68: 7100023f     	cmp	w17, #0x0
   24f6c: 1a890529     	cinc	w9, w9, ne
   24f70: 7100021f     	cmp	w16, #0x0
   24f74: 1a890529     	cinc	w9, w9, ne
   24f78: 710001ff     	cmp	w15, #0x0
   24f7c: 1a890529     	cinc	w9, w9, ne
   24f80: 710001df     	cmp	w14, #0x0
   24f84: 1a890529     	cinc	w9, w9, ne
   24f88: 7100019f     	cmp	w12, #0x0
   24f8c: 1a890529     	cinc	w9, w9, ne
   24f90: 7100011f     	cmp	w8, #0x0
   24f94: 1a890529     	cinc	w9, w9, ne
   24f98: 12001d24     	and	w4, w9, #0xff
   24f9c: 6b04015f     	cmp	w10, w4
   24fa0: 1a84c154     	csel	w20, w10, w4, gt
   24fa4: 5280926a     	mov	w10, #0x493             // =1171
   24fa8: 71000a9f     	cmp	w20, #0x2
   24fac: 9a8a954a     	cinc	x10, x10, hi
   24fb0: 386a6aab     	ldrb	w11, [x21, x10]
   24fb4: 1b047d6a     	mul	w10, w11, w4
   24fb8: 340001cd     	cbz	w13, 0x24ff0 <tp_ghost_check+0x11c>
   24fbc: 90000004     	adrp	x4, 0x24000 <tpd_touch_press+0x104>
		0000000000024fbc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5c
   24fc0: 79400084     	ldrh	w4, [x4]
		0000000000024fc0:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x5c
   24fc4: 6b0b009f     	cmp	w4, w11
   24fc8: 540011a2     	b.hs	0x251fc <tp_ghost_check+0x328>
   24fcc: 340000c3     	cbz	w3, 0x24fe4 <tp_ghost_check+0x110>
   24fd0: 12001d24     	and	w4, w9, #0xff
   24fd4: 7100189f     	cmp	w4, #0x6
   24fd8: 54000063     	b.lo	0x24fe4 <tp_ghost_check+0x110>
   24fdc: 6b03015f     	cmp	w10, w3
   24fe0: 540015a3     	b.lo	0x25294 <tp_ghost_check+0x3c0>
   24fe4: 710005bf     	cmp	w13, #0x1
   24fe8: 54000061     	b.ne	0x24ff4 <tp_ghost_check+0x120>
   24fec: 14000010     	b	0x2502c <tp_ghost_check+0x158>
   24ff0: 2a1f03e3     	mov	w3, wzr
   24ff4: 90000004     	adrp	x4, 0x24000 <tpd_touch_press+0x104>
		0000000000024ff4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xe4
   24ff8: 79400084     	ldrh	w4, [x4]
		0000000000024ff8:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0xe4
   24ffc: 6b0b009f     	cmp	w4, w11
   25000: 54000fa2     	b.hs	0x251f4 <tp_ghost_check+0x320>
   25004: 34000102     	cbz	w2, 0x25024 <tp_ghost_check+0x150>
   25008: 12001d24     	and	w4, w9, #0xff
   2500c: 0b030043     	add	w3, w2, w3
   25010: 7100189f     	cmp	w4, #0x6
   25014: 54000083     	b.lo	0x25024 <tp_ghost_check+0x150>
   25018: 12003c62     	and	w2, w3, #0xffff
   2501c: 6b02015f     	cmp	w10, w2
   25020: 540010e3     	b.lo	0x2523c <tp_ghost_check+0x368>
   25024: 710009bf     	cmp	w13, #0x2
   25028: 540001e0     	b.eq	0x25064 <tp_ghost_check+0x190>
   2502c: 90000002     	adrp	x2, 0x25000 <tp_ghost_check+0x12c>
		000000000002502c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x16c
   25030: 79400044     	ldrh	w4, [x2]
		0000000000025030:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x16c
   25034: 6b0b009f     	cmp	w4, w11
   25038: 54000e62     	b.hs	0x25204 <tp_ghost_check+0x330>
   2503c: 34000101     	cbz	w1, 0x2505c <tp_ghost_check+0x188>
   25040: 12001d22     	and	w2, w9, #0xff
   25044: 0b030023     	add	w3, w1, w3
   25048: 7100185f     	cmp	w2, #0x6
   2504c: 54000083     	b.lo	0x2505c <tp_ghost_check+0x188>
   25050: 12003c61     	and	w1, w3, #0xffff
   25054: 6b01015f     	cmp	w10, w1
   25058: 54001043     	b.lo	0x25260 <tp_ghost_check+0x38c>
   2505c: 71000dbf     	cmp	w13, #0x3
   25060: 540001e0     	b.eq	0x2509c <tp_ghost_check+0x1c8>
   25064: 90000001     	adrp	x1, 0x25000 <tp_ghost_check+0x12c>
		0000000000025064:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1f4
   25068: 79400024     	ldrh	w4, [x1]
		0000000000025068:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x1f4
   2506c: 6b0b009f     	cmp	w4, w11
   25070: 54000ce2     	b.hs	0x2520c <tp_ghost_check+0x338>
   25074: 34000100     	cbz	w0, 0x25094 <tp_ghost_check+0x1c0>
   25078: 12001d21     	and	w1, w9, #0xff
   2507c: 0b030003     	add	w3, w0, w3
   25080: 7100183f     	cmp	w1, #0x6
   25084: 54000083     	b.lo	0x25094 <tp_ghost_check+0x1c0>
   25088: 12003c60     	and	w0, w3, #0xffff
   2508c: 6b00015f     	cmp	w10, w0
   25090: 54000ec3     	b.lo	0x25268 <tp_ghost_check+0x394>
   25094: 710011bf     	cmp	w13, #0x4
   25098: 540001e0     	b.eq	0x250d4 <tp_ghost_check+0x200>
   2509c: 90000000     	adrp	x0, 0x25000 <tp_ghost_check+0x12c>
		000000000002509c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x27c
   250a0: 79400004     	ldrh	w4, [x0]
		00000000000250a0:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x27c
   250a4: 6b0b009f     	cmp	w4, w11
   250a8: 54000b62     	b.hs	0x25214 <tp_ghost_check+0x340>
   250ac: 34000111     	cbz	w17, 0x250cc <tp_ghost_check+0x1f8>
   250b0: 12001d20     	and	w0, w9, #0xff
   250b4: 0b030223     	add	w3, w17, w3
   250b8: 7100181f     	cmp	w0, #0x6
   250bc: 54000083     	b.lo	0x250cc <tp_ghost_check+0x1f8>
   250c0: 12003c71     	and	w17, w3, #0xffff
   250c4: 6b11015f     	cmp	w10, w17
   250c8: 54000d43     	b.lo	0x25270 <tp_ghost_check+0x39c>
   250cc: 710015bf     	cmp	w13, #0x5
   250d0: 540001e0     	b.eq	0x2510c <tp_ghost_check+0x238>
   250d4: 90000011     	adrp	x17, 0x25000 <tp_ghost_check+0x12c>
		00000000000250d4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x304
   250d8: 79400224     	ldrh	w4, [x17]
		00000000000250d8:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x304
   250dc: 6b0b009f     	cmp	w4, w11
   250e0: 540009e2     	b.hs	0x2521c <tp_ghost_check+0x348>
   250e4: 34000110     	cbz	w16, 0x25104 <tp_ghost_check+0x230>
   250e8: 12001d31     	and	w17, w9, #0xff
   250ec: 0b030203     	add	w3, w16, w3
   250f0: 71001a3f     	cmp	w17, #0x6
   250f4: 54000083     	b.lo	0x25104 <tp_ghost_check+0x230>
   250f8: 12003c70     	and	w16, w3, #0xffff
   250fc: 6b10015f     	cmp	w10, w16
   25100: 54000bc3     	b.lo	0x25278 <tp_ghost_check+0x3a4>
   25104: 710019bf     	cmp	w13, #0x6
   25108: 540001e0     	b.eq	0x25144 <tp_ghost_check+0x270>
   2510c: 90000010     	adrp	x16, 0x25000 <tp_ghost_check+0x12c>
		000000000002510c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x38c
   25110: 79400204     	ldrh	w4, [x16]
		0000000000025110:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x38c
   25114: 6b0b009f     	cmp	w4, w11
   25118: 54000862     	b.hs	0x25224 <tp_ghost_check+0x350>
   2511c: 3400010f     	cbz	w15, 0x2513c <tp_ghost_check+0x268>
   25120: 12001d30     	and	w16, w9, #0xff
   25124: 0b0301e3     	add	w3, w15, w3
   25128: 71001a1f     	cmp	w16, #0x6
   2512c: 54000083     	b.lo	0x2513c <tp_ghost_check+0x268>
   25130: 12003c6f     	and	w15, w3, #0xffff
   25134: 6b0f015f     	cmp	w10, w15
   25138: 54000a43     	b.lo	0x25280 <tp_ghost_check+0x3ac>
   2513c: 71001dbf     	cmp	w13, #0x7
   25140: 540001e0     	b.eq	0x2517c <tp_ghost_check+0x2a8>
   25144: 9000000f     	adrp	x15, 0x25000 <tp_ghost_check+0x12c>
		0000000000025144:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x414
   25148: 794001e4     	ldrh	w4, [x15]
		0000000000025148:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x414
   2514c: 6b0b009f     	cmp	w4, w11
   25150: 540006e2     	b.hs	0x2522c <tp_ghost_check+0x358>
   25154: 3400010e     	cbz	w14, 0x25174 <tp_ghost_check+0x2a0>
   25158: 12001d2f     	and	w15, w9, #0xff
   2515c: 0b0301c3     	add	w3, w14, w3
   25160: 710019ff     	cmp	w15, #0x6
   25164: 54000083     	b.lo	0x25174 <tp_ghost_check+0x2a0>
   25168: 12003c6e     	and	w14, w3, #0xffff
   2516c: 6b0e015f     	cmp	w10, w14
   25170: 540008c3     	b.lo	0x25288 <tp_ghost_check+0x3b4>
   25174: 710021bf     	cmp	w13, #0x8
   25178: 540001e0     	b.eq	0x251b4 <tp_ghost_check+0x2e0>
   2517c: 9000000e     	adrp	x14, 0x25000 <tp_ghost_check+0x12c>
		000000000002517c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x49c
   25180: 794001c4     	ldrh	w4, [x14]
		0000000000025180:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x49c
   25184: 6b0b009f     	cmp	w4, w11
   25188: 54000562     	b.hs	0x25234 <tp_ghost_check+0x360>
   2518c: 3400010c     	cbz	w12, 0x251ac <tp_ghost_check+0x2d8>
   25190: 12001d2e     	and	w14, w9, #0xff
   25194: 0b030183     	add	w3, w12, w3
   25198: 710019df     	cmp	w14, #0x6
   2519c: 54000083     	b.lo	0x251ac <tp_ghost_check+0x2d8>
   251a0: 12003c6c     	and	w12, w3, #0xffff
   251a4: 6b0c015f     	cmp	w10, w12
   251a8: 54000743     	b.lo	0x25290 <tp_ghost_check+0x3bc>
   251ac: 710025bf     	cmp	w13, #0x9
   251b0: 540001a0     	b.eq	0x251e4 <tp_ghost_check+0x310>
   251b4: 9000000c     	adrp	x12, 0x25000 <tp_ghost_check+0x12c>
		00000000000251b4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x524
   251b8: 79400184     	ldrh	w4, [x12]
		00000000000251b8:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x524
   251bc: 6b0b009f     	cmp	w4, w11
   251c0: 54000422     	b.hs	0x25244 <tp_ghost_check+0x370>
   251c4: 34000108     	cbz	w8, 0x251e4 <tp_ghost_check+0x310>
   251c8: 12001d29     	and	w9, w9, #0xff
   251cc: 7100193f     	cmp	w9, #0x6
   251d0: 540000a3     	b.lo	0x251e4 <tp_ghost_check+0x310>
   251d4: 0b030108     	add	w8, w8, w3
   251d8: 12003d03     	and	w3, w8, #0xffff
   251dc: 6b03015f     	cmp	w10, w3
   251e0: 540005a3     	b.lo	0x25294 <tp_ghost_check+0x3c0>
   251e4: aa1303e0     	mov	x0, x19
   251e8: 94000000     	bl	0x251e8 <tp_ghost_check+0x314>
		00000000000251e8:  R_AARCH64_CALL26	vfree
   251ec: 2a1f03e0     	mov	w0, wzr
   251f0: 1400006b     	b	0x2539c <tp_ghost_check+0x4c8>
   251f4: 52800023     	mov	w3, #0x1                // =1
   251f8: 14000014     	b	0x25248 <tp_ghost_check+0x374>
   251fc: 2a1f03e3     	mov	w3, wzr
   25200: 14000012     	b	0x25248 <tp_ghost_check+0x374>
   25204: 52800043     	mov	w3, #0x2                // =2
   25208: 14000010     	b	0x25248 <tp_ghost_check+0x374>
   2520c: 52800063     	mov	w3, #0x3                // =3
   25210: 1400000e     	b	0x25248 <tp_ghost_check+0x374>
   25214: 52800083     	mov	w3, #0x4                // =4
   25218: 1400000c     	b	0x25248 <tp_ghost_check+0x374>
   2521c: 528000a3     	mov	w3, #0x5                // =5
   25220: 1400000a     	b	0x25248 <tp_ghost_check+0x374>
   25224: 528000c3     	mov	w3, #0x6                // =6
   25228: 14000008     	b	0x25248 <tp_ghost_check+0x374>
   2522c: 528000e3     	mov	w3, #0x7                // =7
   25230: 14000006     	b	0x25248 <tp_ghost_check+0x374>
   25234: 52800103     	mov	w3, #0x8                // =8
   25238: 14000004     	b	0x25248 <tp_ghost_check+0x374>
   2523c: 2a0203e3     	mov	w3, w2
   25240: 14000015     	b	0x25294 <tp_ghost_check+0x3c0>
   25244: 52800123     	mov	w3, #0x9                // =9
   25248: 90000002     	adrp	x2, 0x25000 <tp_ghost_check+0x12c>
		0000000000025248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19672
   2524c: 91000042     	add	x2, x2, #0x0
		000000000002524c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19672
   25250: aa1303e0     	mov	x0, x19
   25254: 52810001     	mov	w1, #0x800              // =2048
   25258: 94000000     	bl	0x25258 <tp_ghost_check+0x384>
		0000000000025258:  R_AARCH64_CALL26	snprintf
   2525c: 14000013     	b	0x252a8 <tp_ghost_check+0x3d4>
   25260: 2a0103e3     	mov	w3, w1
   25264: 1400000c     	b	0x25294 <tp_ghost_check+0x3c0>
   25268: 2a0003e3     	mov	w3, w0
   2526c: 1400000a     	b	0x25294 <tp_ghost_check+0x3c0>
   25270: 2a1103e3     	mov	w3, w17
   25274: 14000008     	b	0x25294 <tp_ghost_check+0x3c0>
   25278: 2a1003e3     	mov	w3, w16
   2527c: 14000006     	b	0x25294 <tp_ghost_check+0x3c0>
   25280: 2a0f03e3     	mov	w3, w15
   25284: 14000004     	b	0x25294 <tp_ghost_check+0x3c0>
   25288: 2a0e03e3     	mov	w3, w14
   2528c: 14000002     	b	0x25294 <tp_ghost_check+0x3c0>
   25290: 2a0c03e3     	mov	w3, w12
   25294: 90000002     	adrp	x2, 0x25000 <tp_ghost_check+0x12c>
		0000000000025294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1fc
   25298: 91000042     	add	x2, x2, #0x0
		0000000000025298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1fc
   2529c: aa1303e0     	mov	x0, x19
   252a0: 52810001     	mov	w1, #0x800              // =2048
   252a4: 94000000     	bl	0x252a4 <tp_ghost_check+0x3d0>
		00000000000252a4:  R_AARCH64_CALL26	snprintf
   252a8: 52810018     	mov	w24, #0x800             // =2048
   252ac: 2a0003f6     	mov	w22, w0
   252b0: 90000002     	adrp	x2, 0x25000 <tp_ghost_check+0x12c>
		00000000000252b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1969e
   252b4: 91000042     	add	x2, x2, #0x0
		00000000000252b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1969e
   252b8: 4b000308     	sub	w8, w24, w0
   252bc: 8b20c260     	add	x0, x19, w0, sxtw
   252c0: 93407d01     	sxtw	x1, w8
   252c4: 2a1403e3     	mov	w3, w20
   252c8: 94000000     	bl	0x252c8 <tp_ghost_check+0x3f4>
		00000000000252c8:  R_AARCH64_CALL26	snprintf
   252cc: 2a1f03f4     	mov	w20, wzr
   252d0: 9280a9f9     	mov	x25, #-0x550            // =-1360
   252d4: 9000001a     	adrp	x26, 0x25000 <tp_ghost_check+0x12c>
		00000000000252d4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   252d8: 9100035a     	add	x26, x26, #0x0
		00000000000252d8:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   252dc: 90000015     	adrp	x21, 0x25000 <tp_ghost_check+0x12c>
		00000000000252dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1272c
   252e0: 910002b5     	add	x21, x21, #0x0
		00000000000252e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1272c
   252e4: 0b16001b     	add	w27, w0, w22
   252e8: 90000016     	adrp	x22, 0x25000 <tp_ghost_check+0x12c>
		00000000000252e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dcee
   252ec: 910002d6     	add	x22, x22, #0x0
		00000000000252ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dcee
   252f0: 14000004     	b	0x25300 <tp_ghost_check+0x42c>
   252f4: b1022339     	adds	x25, x25, #0x88
   252f8: 11000694     	add	w20, w20, #0x1
   252fc: 540002e0     	b.eq	0x25358 <tp_ghost_check+0x484>
   25300: 8b19035c     	add	x28, x26, x25
   25304: 794b5f88     	ldrh	w8, [x28, #0x5ae]
   25308: 34ffff68     	cbz	w8, 0x252f4 <tp_ghost_check+0x420>
   2530c: 4b1b0308     	sub	w8, w24, w27
   25310: 8b3bc260     	add	x0, x19, w27, sxtw
   25314: b9456b84     	ldr	w4, [x28, #0x568]
   25318: 93407d01     	sxtw	x1, w8
   2531c: b9456f85     	ldr	w5, [x28, #0x56c]
   25320: aa1503e2     	mov	x2, x21
   25324: 2a1403e3     	mov	w3, w20
   25328: 94000000     	bl	0x25328 <tp_ghost_check+0x454>
		0000000000025328:  R_AARCH64_CALL26	snprintf
   2532c: 0b1b001b     	add	w27, w0, w27
   25330: b9457784     	ldr	w4, [x28, #0x574]
   25334: b9457b85     	ldr	w5, [x28, #0x578]
   25338: 4b1b0308     	sub	w8, w24, w27
   2533c: 8b3bc260     	add	x0, x19, w27, sxtw
   25340: aa1603e2     	mov	x2, x22
   25344: 93407d01     	sxtw	x1, w8
   25348: 2a1403e3     	mov	w3, w20
   2534c: 94000000     	bl	0x2534c <tp_ghost_check+0x478>
		000000000002534c:  R_AARCH64_CALL26	snprintf
   25350: 0b1b001b     	add	w27, w0, w27
   25354: 17ffffe8     	b	0x252f4 <tp_ghost_check+0x420>
   25358: 90000000     	adrp	x0, 0x25000 <tp_ghost_check+0x12c>
		0000000000025358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x176e6
   2535c: 91000000     	add	x0, x0, #0x0
		000000000002535c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x176e6
   25360: 90000001     	adrp	x1, 0x25000 <tp_ghost_check+0x12c>
		0000000000025360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132d4
   25364: 91000021     	add	x1, x1, #0x0
		0000000000025364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132d4
   25368: aa1303e2     	mov	x2, x19
   2536c: 94000000     	bl	0x2536c <tp_ghost_check+0x498>
		000000000002536c:  R_AARCH64_CALL26	_printk
   25370: f94002e8     	ldr	x8, [x23]
		0000000000025370:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25374: f945f500     	ldr	x0, [x8, #0xbe8]
   25378: b4000080     	cbz	x0, 0x25388 <tp_ghost_check+0x4b4>
   2537c: 52810001     	mov	w1, #0x800              // =2048
   25380: aa1303e2     	mov	x2, x19
   25384: 94000000     	bl	0x25384 <tp_ghost_check+0x4b0>
		0000000000025384:  R_AARCH64_CALL26	snprintf
   25388: 52800200     	mov	w0, #0x10               // =16
   2538c: 94000000     	bl	0x2538c <tp_ghost_check+0x4b8>
		000000000002538c:  R_AARCH64_CALL26	tpd_zlog_record_notify
   25390: aa1303e0     	mov	x0, x19
   25394: 94000000     	bl	0x25394 <tp_ghost_check+0x4c0>
		0000000000025394:  R_AARCH64_CALL26	vfree
   25398: 52800020     	mov	w0, #0x1                // =1
   2539c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   253a0: a94457f6     	ldp	x22, x21, [sp, #0x40]
   253a4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   253a8: a94267fa     	ldp	x26, x25, [sp, #0x20]
   253ac: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   253b0: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   253b4: d50323bf     	autiasp
   253b8: d65f03c0     	ret
   253bc: d5384114     	mrs	x20, SP_EL0
   253c0: f9402a96     	ldr	x22, [x20, #0x50]
   253c4: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x12c>
		00000000000253c4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x5e0
   253c8: 91000108     	add	x8, x8, #0x0
		00000000000253c8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x5e0
   253cc: 52810000     	mov	w0, #0x800              // =2048
   253d0: f9002a88     	str	x8, [x20, #0x50]
   253d4: 94000000     	bl	0x253d4 <tp_ghost_check+0x500>
		00000000000253d4:  R_AARCH64_CALL26	vmalloc_noprof
   253d8: aa0003f3     	mov	x19, x0
   253dc: f9002a96     	str	x22, [x20, #0x50]
   253e0: b5ffd993     	cbnz	x19, 0x24f10 <tp_ghost_check+0x3c>
   253e4: 90000000     	adrp	x0, 0x25000 <tp_ghost_check+0x12c>
		00000000000253e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19140
   253e8: 91000000     	add	x0, x0, #0x0
		00000000000253e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19140
   253ec: 94000000     	bl	0x253ec <tp_ghost_check+0x518>
		00000000000253ec:  R_AARCH64_CALL26	_printk
   253f0: 17ffff7f     	b	0x251ec <tp_ghost_check+0x318>
