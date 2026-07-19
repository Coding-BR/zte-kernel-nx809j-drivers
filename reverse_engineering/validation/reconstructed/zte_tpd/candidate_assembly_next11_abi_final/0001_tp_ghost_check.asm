
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001eb08 <tp_ghost_check>:
   1eb08: d503233f     	paciasp
   1eb0c: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   1eb10: a9016ffc     	stp	x28, x27, [sp, #0x10]
   1eb14: a90267fa     	stp	x26, x25, [sp, #0x20]
   1eb18: a9035ff8     	stp	x24, x23, [sp, #0x30]
   1eb1c: a90457f6     	stp	x22, x21, [sp, #0x40]
   1eb20: a9054ff4     	stp	x20, x19, [sp, #0x50]
   1eb24: 910003fd     	mov	x29, sp
   1eb28: 90000017     	adrp	x23, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001eb28:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1eb2c: f94002f5     	ldr	x21, [x23]
		000000000001eb2c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1eb30: d503201f     	nop
   1eb34: 52810000     	mov	w0, #0x800              // =2048
   1eb38: 94000000     	bl	0x1eb38 <tp_ghost_check+0x30>
		000000000001eb38:  R_AARCH64_CALL26	vmalloc_noprof
   1eb3c: aa0003f3     	mov	x19, x0
   1eb40: b40026d3     	cbz	x19, 0x1f018 <tp_ghost_check+0x510>
   1eb44: 90000008     	adrp	x8, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001eb44:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5e
   1eb48: 91000108     	add	x8, x8, #0x0
		000000000001eb48:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x5e
   1eb4c: b9448eaa     	ldr	w10, [x21, #0x48c]
   1eb50: 79400103     	ldrh	w3, [x8]
   1eb54: 79411102     	ldrh	w2, [x8, #0x88]
   1eb58: 79422101     	ldrh	w1, [x8, #0x110]
   1eb5c: 79433100     	ldrh	w0, [x8, #0x198]
   1eb60: 79444111     	ldrh	w17, [x8, #0x220]
   1eb64: 79455110     	ldrh	w16, [x8, #0x2a8]
   1eb68: 7100007f     	cmp	w3, #0x0
   1eb6c: 7946610f     	ldrh	w15, [x8, #0x330]
   1eb70: 7947710e     	ldrh	w14, [x8, #0x3b8]
   1eb74: 1a9f07e9     	cset	w9, ne
   1eb78: 7100005f     	cmp	w2, #0x0
   1eb7c: 7948810c     	ldrh	w12, [x8, #0x440]
   1eb80: 1a890529     	cinc	w9, w9, ne
   1eb84: 7100003f     	cmp	w1, #0x0
   1eb88: 79499108     	ldrh	w8, [x8, #0x4c8]
   1eb8c: 1a890529     	cinc	w9, w9, ne
   1eb90: 7100001f     	cmp	w0, #0x0
   1eb94: b9449aad     	ldr	w13, [x21, #0x498]
   1eb98: 1a890529     	cinc	w9, w9, ne
   1eb9c: 7100023f     	cmp	w17, #0x0
   1eba0: 1a890529     	cinc	w9, w9, ne
   1eba4: 7100021f     	cmp	w16, #0x0
   1eba8: 1a890529     	cinc	w9, w9, ne
   1ebac: 710001ff     	cmp	w15, #0x0
   1ebb0: 1a890529     	cinc	w9, w9, ne
   1ebb4: 710001df     	cmp	w14, #0x0
   1ebb8: 1a890529     	cinc	w9, w9, ne
   1ebbc: 7100019f     	cmp	w12, #0x0
   1ebc0: 1a890529     	cinc	w9, w9, ne
   1ebc4: 7100011f     	cmp	w8, #0x0
   1ebc8: 1a890529     	cinc	w9, w9, ne
   1ebcc: 12001d24     	and	w4, w9, #0xff
   1ebd0: 6b04015f     	cmp	w10, w4
   1ebd4: 1a84c154     	csel	w20, w10, w4, gt
   1ebd8: 5280926a     	mov	w10, #0x493             // =1171
   1ebdc: 71000a9f     	cmp	w20, #0x2
   1ebe0: 9a8a954a     	cinc	x10, x10, hi
   1ebe4: 386a6aab     	ldrb	w11, [x21, x10]
   1ebe8: 1b0b7c8a     	mul	w10, w4, w11
   1ebec: 340001cd     	cbz	w13, 0x1ec24 <tp_ghost_check+0x11c>
   1ebf0: 90000004     	adrp	x4, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ebf0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5c
   1ebf4: 79400084     	ldrh	w4, [x4]
		000000000001ebf4:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x5c
   1ebf8: 6b0b009f     	cmp	w4, w11
   1ebfc: 540011a2     	b.hs	0x1ee30 <tp_ghost_check+0x328>
   1ec00: 340000c3     	cbz	w3, 0x1ec18 <tp_ghost_check+0x110>
   1ec04: 12001d24     	and	w4, w9, #0xff
   1ec08: 7100189f     	cmp	w4, #0x6
   1ec0c: 54000063     	b.lo	0x1ec18 <tp_ghost_check+0x110>
   1ec10: 6b03015f     	cmp	w10, w3
   1ec14: 540015a3     	b.lo	0x1eec8 <tp_ghost_check+0x3c0>
   1ec18: 710005bf     	cmp	w13, #0x1
   1ec1c: 54000061     	b.ne	0x1ec28 <tp_ghost_check+0x120>
   1ec20: 14000010     	b	0x1ec60 <tp_ghost_check+0x158>
   1ec24: 2a1f03e3     	mov	w3, wzr
   1ec28: 90000004     	adrp	x4, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ec28:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xe4
   1ec2c: 79400084     	ldrh	w4, [x4]
		000000000001ec2c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0xe4
   1ec30: 6b0b009f     	cmp	w4, w11
   1ec34: 54000fa2     	b.hs	0x1ee28 <tp_ghost_check+0x320>
   1ec38: 34000102     	cbz	w2, 0x1ec58 <tp_ghost_check+0x150>
   1ec3c: 12001d24     	and	w4, w9, #0xff
   1ec40: 0b020063     	add	w3, w3, w2
   1ec44: 7100189f     	cmp	w4, #0x6
   1ec48: 54000083     	b.lo	0x1ec58 <tp_ghost_check+0x150>
   1ec4c: 12003c62     	and	w2, w3, #0xffff
   1ec50: 6b02015f     	cmp	w10, w2
   1ec54: 540010e3     	b.lo	0x1ee70 <tp_ghost_check+0x368>
   1ec58: 710009bf     	cmp	w13, #0x2
   1ec5c: 540001e0     	b.eq	0x1ec98 <tp_ghost_check+0x190>
   1ec60: 90000002     	adrp	x2, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ec60:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x16c
   1ec64: 79400044     	ldrh	w4, [x2]
		000000000001ec64:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x16c
   1ec68: 6b0b009f     	cmp	w4, w11
   1ec6c: 54000e62     	b.hs	0x1ee38 <tp_ghost_check+0x330>
   1ec70: 34000101     	cbz	w1, 0x1ec90 <tp_ghost_check+0x188>
   1ec74: 12001d22     	and	w2, w9, #0xff
   1ec78: 0b010063     	add	w3, w3, w1
   1ec7c: 7100185f     	cmp	w2, #0x6
   1ec80: 54000083     	b.lo	0x1ec90 <tp_ghost_check+0x188>
   1ec84: 12003c61     	and	w1, w3, #0xffff
   1ec88: 6b01015f     	cmp	w10, w1
   1ec8c: 54001043     	b.lo	0x1ee94 <tp_ghost_check+0x38c>
   1ec90: 71000dbf     	cmp	w13, #0x3
   1ec94: 540001e0     	b.eq	0x1ecd0 <tp_ghost_check+0x1c8>
   1ec98: 90000001     	adrp	x1, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ec98:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1f4
   1ec9c: 79400024     	ldrh	w4, [x1]
		000000000001ec9c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x1f4
   1eca0: 6b0b009f     	cmp	w4, w11
   1eca4: 54000ce2     	b.hs	0x1ee40 <tp_ghost_check+0x338>
   1eca8: 34000100     	cbz	w0, 0x1ecc8 <tp_ghost_check+0x1c0>
   1ecac: 12001d21     	and	w1, w9, #0xff
   1ecb0: 0b000063     	add	w3, w3, w0
   1ecb4: 7100183f     	cmp	w1, #0x6
   1ecb8: 54000083     	b.lo	0x1ecc8 <tp_ghost_check+0x1c0>
   1ecbc: 12003c60     	and	w0, w3, #0xffff
   1ecc0: 6b00015f     	cmp	w10, w0
   1ecc4: 54000ec3     	b.lo	0x1ee9c <tp_ghost_check+0x394>
   1ecc8: 710011bf     	cmp	w13, #0x4
   1eccc: 540001e0     	b.eq	0x1ed08 <tp_ghost_check+0x200>
   1ecd0: 90000000     	adrp	x0, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ecd0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x27c
   1ecd4: 79400004     	ldrh	w4, [x0]
		000000000001ecd4:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x27c
   1ecd8: 6b0b009f     	cmp	w4, w11
   1ecdc: 54000b62     	b.hs	0x1ee48 <tp_ghost_check+0x340>
   1ece0: 34000111     	cbz	w17, 0x1ed00 <tp_ghost_check+0x1f8>
   1ece4: 12001d20     	and	w0, w9, #0xff
   1ece8: 0b110063     	add	w3, w3, w17
   1ecec: 7100181f     	cmp	w0, #0x6
   1ecf0: 54000083     	b.lo	0x1ed00 <tp_ghost_check+0x1f8>
   1ecf4: 12003c71     	and	w17, w3, #0xffff
   1ecf8: 6b11015f     	cmp	w10, w17
   1ecfc: 54000d43     	b.lo	0x1eea4 <tp_ghost_check+0x39c>
   1ed00: 710015bf     	cmp	w13, #0x5
   1ed04: 540001e0     	b.eq	0x1ed40 <tp_ghost_check+0x238>
   1ed08: 90000011     	adrp	x17, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ed08:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x304
   1ed0c: 79400224     	ldrh	w4, [x17]
		000000000001ed0c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x304
   1ed10: 6b0b009f     	cmp	w4, w11
   1ed14: 540009e2     	b.hs	0x1ee50 <tp_ghost_check+0x348>
   1ed18: 34000110     	cbz	w16, 0x1ed38 <tp_ghost_check+0x230>
   1ed1c: 12001d31     	and	w17, w9, #0xff
   1ed20: 0b100063     	add	w3, w3, w16
   1ed24: 71001a3f     	cmp	w17, #0x6
   1ed28: 54000083     	b.lo	0x1ed38 <tp_ghost_check+0x230>
   1ed2c: 12003c70     	and	w16, w3, #0xffff
   1ed30: 6b10015f     	cmp	w10, w16
   1ed34: 54000bc3     	b.lo	0x1eeac <tp_ghost_check+0x3a4>
   1ed38: 710019bf     	cmp	w13, #0x6
   1ed3c: 540001e0     	b.eq	0x1ed78 <tp_ghost_check+0x270>
   1ed40: 90000010     	adrp	x16, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ed40:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x38c
   1ed44: 79400204     	ldrh	w4, [x16]
		000000000001ed44:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x38c
   1ed48: 6b0b009f     	cmp	w4, w11
   1ed4c: 54000862     	b.hs	0x1ee58 <tp_ghost_check+0x350>
   1ed50: 3400010f     	cbz	w15, 0x1ed70 <tp_ghost_check+0x268>
   1ed54: 12001d30     	and	w16, w9, #0xff
   1ed58: 0b0f0063     	add	w3, w3, w15
   1ed5c: 71001a1f     	cmp	w16, #0x6
   1ed60: 54000083     	b.lo	0x1ed70 <tp_ghost_check+0x268>
   1ed64: 12003c6f     	and	w15, w3, #0xffff
   1ed68: 6b0f015f     	cmp	w10, w15
   1ed6c: 54000a43     	b.lo	0x1eeb4 <tp_ghost_check+0x3ac>
   1ed70: 71001dbf     	cmp	w13, #0x7
   1ed74: 540001e0     	b.eq	0x1edb0 <tp_ghost_check+0x2a8>
   1ed78: 9000000f     	adrp	x15, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ed78:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x414
   1ed7c: 794001e4     	ldrh	w4, [x15]
		000000000001ed7c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x414
   1ed80: 6b0b009f     	cmp	w4, w11
   1ed84: 540006e2     	b.hs	0x1ee60 <tp_ghost_check+0x358>
   1ed88: 3400010e     	cbz	w14, 0x1eda8 <tp_ghost_check+0x2a0>
   1ed8c: 12001d2f     	and	w15, w9, #0xff
   1ed90: 0b0e0063     	add	w3, w3, w14
   1ed94: 710019ff     	cmp	w15, #0x6
   1ed98: 54000083     	b.lo	0x1eda8 <tp_ghost_check+0x2a0>
   1ed9c: 12003c6e     	and	w14, w3, #0xffff
   1eda0: 6b0e015f     	cmp	w10, w14
   1eda4: 540008c3     	b.lo	0x1eebc <tp_ghost_check+0x3b4>
   1eda8: 710021bf     	cmp	w13, #0x8
   1edac: 540001e0     	b.eq	0x1ede8 <tp_ghost_check+0x2e0>
   1edb0: 9000000e     	adrp	x14, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001edb0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x49c
   1edb4: 794001c4     	ldrh	w4, [x14]
		000000000001edb4:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x49c
   1edb8: 6b0b009f     	cmp	w4, w11
   1edbc: 54000562     	b.hs	0x1ee68 <tp_ghost_check+0x360>
   1edc0: 3400010c     	cbz	w12, 0x1ede0 <tp_ghost_check+0x2d8>
   1edc4: 12001d2e     	and	w14, w9, #0xff
   1edc8: 0b0c0063     	add	w3, w3, w12
   1edcc: 710019df     	cmp	w14, #0x6
   1edd0: 54000083     	b.lo	0x1ede0 <tp_ghost_check+0x2d8>
   1edd4: 12003c6c     	and	w12, w3, #0xffff
   1edd8: 6b0c015f     	cmp	w10, w12
   1eddc: 54000743     	b.lo	0x1eec4 <tp_ghost_check+0x3bc>
   1ede0: 710025bf     	cmp	w13, #0x9
   1ede4: 540001a0     	b.eq	0x1ee18 <tp_ghost_check+0x310>
   1ede8: 9000000c     	adrp	x12, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ede8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x524
   1edec: 79400184     	ldrh	w4, [x12]
		000000000001edec:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x524
   1edf0: 6b0b009f     	cmp	w4, w11
   1edf4: 54000422     	b.hs	0x1ee78 <tp_ghost_check+0x370>
   1edf8: 34000108     	cbz	w8, 0x1ee18 <tp_ghost_check+0x310>
   1edfc: 12001d29     	and	w9, w9, #0xff
   1ee00: 7100193f     	cmp	w9, #0x6
   1ee04: 540000a3     	b.lo	0x1ee18 <tp_ghost_check+0x310>
   1ee08: 0b080068     	add	w8, w3, w8
   1ee0c: 12003d03     	and	w3, w8, #0xffff
   1ee10: 6b03015f     	cmp	w10, w3
   1ee14: 540005a3     	b.lo	0x1eec8 <tp_ghost_check+0x3c0>
   1ee18: aa1303e0     	mov	x0, x19
   1ee1c: 94000000     	bl	0x1ee1c <tp_ghost_check+0x314>
		000000000001ee1c:  R_AARCH64_CALL26	vfree
   1ee20: 2a1f03e0     	mov	w0, wzr
   1ee24: 1400006b     	b	0x1efd0 <tp_ghost_check+0x4c8>
   1ee28: 52800023     	mov	w3, #0x1                // =1
   1ee2c: 14000014     	b	0x1ee7c <tp_ghost_check+0x374>
   1ee30: 2a1f03e3     	mov	w3, wzr
   1ee34: 14000012     	b	0x1ee7c <tp_ghost_check+0x374>
   1ee38: 52800043     	mov	w3, #0x2                // =2
   1ee3c: 14000010     	b	0x1ee7c <tp_ghost_check+0x374>
   1ee40: 52800063     	mov	w3, #0x3                // =3
   1ee44: 1400000e     	b	0x1ee7c <tp_ghost_check+0x374>
   1ee48: 52800083     	mov	w3, #0x4                // =4
   1ee4c: 1400000c     	b	0x1ee7c <tp_ghost_check+0x374>
   1ee50: 528000a3     	mov	w3, #0x5                // =5
   1ee54: 1400000a     	b	0x1ee7c <tp_ghost_check+0x374>
   1ee58: 528000c3     	mov	w3, #0x6                // =6
   1ee5c: 14000008     	b	0x1ee7c <tp_ghost_check+0x374>
   1ee60: 528000e3     	mov	w3, #0x7                // =7
   1ee64: 14000006     	b	0x1ee7c <tp_ghost_check+0x374>
   1ee68: 52800103     	mov	w3, #0x8                // =8
   1ee6c: 14000004     	b	0x1ee7c <tp_ghost_check+0x374>
   1ee70: 2a0203e3     	mov	w3, w2
   1ee74: 14000015     	b	0x1eec8 <tp_ghost_check+0x3c0>
   1ee78: 52800123     	mov	w3, #0x9                // =9
   1ee7c: 90000002     	adrp	x2, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ee7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3848
   1ee80: 91000042     	add	x2, x2, #0x0
		000000000001ee80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3848
   1ee84: aa1303e0     	mov	x0, x19
   1ee88: 52810001     	mov	w1, #0x800              // =2048
   1ee8c: 94000000     	bl	0x1ee8c <tp_ghost_check+0x384>
		000000000001ee8c:  R_AARCH64_CALL26	snprintf
   1ee90: 14000013     	b	0x1eedc <tp_ghost_check+0x3d4>
   1ee94: 2a0103e3     	mov	w3, w1
   1ee98: 1400000c     	b	0x1eec8 <tp_ghost_check+0x3c0>
   1ee9c: 2a0003e3     	mov	w3, w0
   1eea0: 1400000a     	b	0x1eec8 <tp_ghost_check+0x3c0>
   1eea4: 2a1103e3     	mov	w3, w17
   1eea8: 14000008     	b	0x1eec8 <tp_ghost_check+0x3c0>
   1eeac: 2a1003e3     	mov	w3, w16
   1eeb0: 14000006     	b	0x1eec8 <tp_ghost_check+0x3c0>
   1eeb4: 2a0f03e3     	mov	w3, w15
   1eeb8: 14000004     	b	0x1eec8 <tp_ghost_check+0x3c0>
   1eebc: 2a0e03e3     	mov	w3, w14
   1eec0: 14000002     	b	0x1eec8 <tp_ghost_check+0x3c0>
   1eec4: 2a0c03e3     	mov	w3, w12
   1eec8: 90000002     	adrp	x2, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001eec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f1d
   1eecc: 91000042     	add	x2, x2, #0x0
		000000000001eecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f1d
   1eed0: aa1303e0     	mov	x0, x19
   1eed4: 52810001     	mov	w1, #0x800              // =2048
   1eed8: 94000000     	bl	0x1eed8 <tp_ghost_check+0x3d0>
		000000000001eed8:  R_AARCH64_CALL26	snprintf
   1eedc: 52810018     	mov	w24, #0x800             // =2048
   1eee0: 2a0003f6     	mov	w22, w0
   1eee4: 90000002     	adrp	x2, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001eee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3873
   1eee8: 91000042     	add	x2, x2, #0x0
		000000000001eee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3873
   1eeec: 4b000308     	sub	w8, w24, w0
   1eef0: 8b20c260     	add	x0, x19, w0, sxtw
   1eef4: 93407d01     	sxtw	x1, w8
   1eef8: 2a1403e3     	mov	w3, w20
   1eefc: 94000000     	bl	0x1eefc <tp_ghost_check+0x3f4>
		000000000001eefc:  R_AARCH64_CALL26	snprintf
   1ef00: 2a1f03f4     	mov	w20, wzr
   1ef04: 9280a9f9     	mov	x25, #-0x550            // =-1360
   1ef08: 9000001a     	adrp	x26, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ef08:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   1ef0c: 9100035a     	add	x26, x26, #0x0
		000000000001ef0c:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   1ef10: 90000015     	adrp	x21, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ef10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d3
   1ef14: 910002b5     	add	x21, x21, #0x0
		000000000001ef14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d3
   1ef18: 0b16001b     	add	w27, w0, w22
   1ef1c: 90000016     	adrp	x22, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ef1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56d3
   1ef20: 910002d6     	add	x22, x22, #0x0
		000000000001ef20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56d3
   1ef24: 14000004     	b	0x1ef34 <tp_ghost_check+0x42c>
   1ef28: b1022339     	adds	x25, x25, #0x88
   1ef2c: 11000694     	add	w20, w20, #0x1
   1ef30: 540002e0     	b.eq	0x1ef8c <tp_ghost_check+0x484>
   1ef34: 8b19035c     	add	x28, x26, x25
   1ef38: 794b5f88     	ldrh	w8, [x28, #0x5ae]
   1ef3c: 34ffff68     	cbz	w8, 0x1ef28 <tp_ghost_check+0x420>
   1ef40: 4b1b0308     	sub	w8, w24, w27
   1ef44: 8b3bc260     	add	x0, x19, w27, sxtw
   1ef48: b9456b84     	ldr	w4, [x28, #0x568]
   1ef4c: 93407d01     	sxtw	x1, w8
   1ef50: b9456f85     	ldr	w5, [x28, #0x56c]
   1ef54: aa1503e2     	mov	x2, x21
   1ef58: 2a1403e3     	mov	w3, w20
   1ef5c: 94000000     	bl	0x1ef5c <tp_ghost_check+0x454>
		000000000001ef5c:  R_AARCH64_CALL26	snprintf
   1ef60: 0b1b001b     	add	w27, w0, w27
   1ef64: b9457784     	ldr	w4, [x28, #0x574]
   1ef68: b9457b85     	ldr	w5, [x28, #0x578]
   1ef6c: 4b1b0308     	sub	w8, w24, w27
   1ef70: 8b3bc260     	add	x0, x19, w27, sxtw
   1ef74: aa1603e2     	mov	x2, x22
   1ef78: 93407d01     	sxtw	x1, w8
   1ef7c: 2a1403e3     	mov	w3, w20
   1ef80: 94000000     	bl	0x1ef80 <tp_ghost_check+0x478>
		000000000001ef80:  R_AARCH64_CALL26	snprintf
   1ef84: 0b1b001b     	add	w27, w0, w27
   1ef88: 17ffffe8     	b	0x1ef28 <tp_ghost_check+0x420>
   1ef8c: 90000000     	adrp	x0, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ef8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bef
   1ef90: 91000000     	add	x0, x0, #0x0
		000000000001ef90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bef
   1ef94: 90000001     	adrp	x1, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001ef94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe97
   1ef98: 91000021     	add	x1, x1, #0x0
		000000000001ef98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe97
   1ef9c: aa1303e2     	mov	x2, x19
   1efa0: 94000000     	bl	0x1efa0 <tp_ghost_check+0x498>
		000000000001efa0:  R_AARCH64_CALL26	_printk
   1efa4: f94002e8     	ldr	x8, [x23]
		000000000001efa4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1efa8: f945f500     	ldr	x0, [x8, #0xbe8]
   1efac: b4000080     	cbz	x0, 0x1efbc <tp_ghost_check+0x4b4>
   1efb0: 52810001     	mov	w1, #0x800              // =2048
   1efb4: aa1303e2     	mov	x2, x19
   1efb8: 94000000     	bl	0x1efb8 <tp_ghost_check+0x4b0>
		000000000001efb8:  R_AARCH64_CALL26	snprintf
   1efbc: 52800200     	mov	w0, #0x10               // =16
   1efc0: 94000000     	bl	0x1efc0 <tp_ghost_check+0x4b8>
		000000000001efc0:  R_AARCH64_CALL26	tpd_zlog_record_notify
   1efc4: aa1303e0     	mov	x0, x19
   1efc8: 94000000     	bl	0x1efc8 <tp_ghost_check+0x4c0>
		000000000001efc8:  R_AARCH64_CALL26	vfree
   1efcc: 52800020     	mov	w0, #0x1                // =1
   1efd0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   1efd4: a94457f6     	ldp	x22, x21, [sp, #0x40]
   1efd8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   1efdc: a94267fa     	ldp	x26, x25, [sp, #0x20]
   1efe0: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   1efe4: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   1efe8: d50323bf     	autiasp
   1efec: d65f03c0     	ret
   1eff0: d5384114     	mrs	x20, SP_EL0
   1eff4: f9402a96     	ldr	x22, [x20, #0x50]
   1eff8: 90000008     	adrp	x8, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001eff8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x230
   1effc: 91000108     	add	x8, x8, #0x0
		000000000001effc:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x230
   1f000: 52810000     	mov	w0, #0x800              // =2048
   1f004: f9002a88     	str	x8, [x20, #0x50]
   1f008: 94000000     	bl	0x1f008 <tp_ghost_check+0x500>
		000000000001f008:  R_AARCH64_CALL26	vmalloc_noprof
   1f00c: aa0003f3     	mov	x19, x0
   1f010: f9002a96     	str	x22, [x20, #0x50]
   1f014: b5ffd993     	cbnz	x19, 0x1eb44 <tp_ghost_check+0x3c>
   1f018: 90000000     	adrp	x0, 0x1f000 <tp_ghost_check+0x4f8>
		000000000001f018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3633
   1f01c: 91000000     	add	x0, x0, #0x0
		000000000001f01c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3633
   1f020: 94000000     	bl	0x1f020 <tp_ghost_check+0x518>
		000000000001f020:  R_AARCH64_CALL26	_printk
   1f024: 17ffff7f     	b	0x1ee20 <tp_ghost_check+0x318>
