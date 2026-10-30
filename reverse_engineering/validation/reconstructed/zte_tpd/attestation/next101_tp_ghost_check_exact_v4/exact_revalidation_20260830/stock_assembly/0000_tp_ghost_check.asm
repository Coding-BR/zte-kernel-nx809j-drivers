
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008b78 <tp_ghost_check>:
    8b78: d503233f     	paciasp
    8b7c: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    8b80: a9016ffc     	stp	x28, x27, [sp, #0x10]
    8b84: a90267fa     	stp	x26, x25, [sp, #0x20]
    8b88: a9035ff8     	stp	x24, x23, [sp, #0x30]
    8b8c: a90457f6     	stp	x22, x21, [sp, #0x40]
    8b90: a9054ff4     	stp	x20, x19, [sp, #0x50]
    8b94: 910003fd     	mov	x29, sp
    8b98: 90000017     	adrp	x23, 0x8000 <tpd_touch_press+0x634>
		0000000000008b98:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    8b9c: f94002f5     	ldr	x21, [x23]
		0000000000008b9c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    8ba0: d503201f     	nop
    8ba4: 52810000     	mov	w0, #0x800              // =2048
    8ba8: 94000000     	bl	0x8ba8 <tp_ghost_check+0x30>
		0000000000008ba8:  R_AARCH64_CALL26	vmalloc_noprof
    8bac: aa0003f3     	mov	x19, x0
    8bb0: b40026d3     	cbz	x19, 0x9088 <tp_ghost_check+0x510>
    8bb4: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008bb4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5e
    8bb8: 91000108     	add	x8, x8, #0x0
		0000000000008bb8:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x5e
    8bbc: b9448eaa     	ldr	w10, [x21, #0x48c]
    8bc0: 79411102     	ldrh	w2, [x8, #0x88]
    8bc4: 79400103     	ldrh	w3, [x8]
    8bc8: 79422101     	ldrh	w1, [x8, #0x110]
    8bcc: 79433100     	ldrh	w0, [x8, #0x198]
    8bd0: 79444111     	ldrh	w17, [x8, #0x220]
    8bd4: 79455110     	ldrh	w16, [x8, #0x2a8]
    8bd8: 7100005f     	cmp	w2, #0x0
    8bdc: 7946610f     	ldrh	w15, [x8, #0x330]
    8be0: 7947710e     	ldrh	w14, [x8, #0x3b8]
    8be4: 1a9f07e9     	cset	w9, ne
    8be8: 7100007f     	cmp	w3, #0x0
    8bec: 7948810c     	ldrh	w12, [x8, #0x440]
    8bf0: 1a890529     	cinc	w9, w9, ne
    8bf4: 7100003f     	cmp	w1, #0x0
    8bf8: 79499108     	ldrh	w8, [x8, #0x4c8]
    8bfc: 1a890529     	cinc	w9, w9, ne
    8c00: 7100001f     	cmp	w0, #0x0
    8c04: b9449aad     	ldr	w13, [x21, #0x498]
    8c08: 1a890529     	cinc	w9, w9, ne
    8c0c: 7100023f     	cmp	w17, #0x0
    8c10: 1a890529     	cinc	w9, w9, ne
    8c14: 7100021f     	cmp	w16, #0x0
    8c18: 1a890529     	cinc	w9, w9, ne
    8c1c: 710001ff     	cmp	w15, #0x0
    8c20: 1a890529     	cinc	w9, w9, ne
    8c24: 710001df     	cmp	w14, #0x0
    8c28: 1a890529     	cinc	w9, w9, ne
    8c2c: 7100019f     	cmp	w12, #0x0
    8c30: 1a890529     	cinc	w9, w9, ne
    8c34: 7100011f     	cmp	w8, #0x0
    8c38: 1a890529     	cinc	w9, w9, ne
    8c3c: 12001d24     	and	w4, w9, #0xff
    8c40: 6b04015f     	cmp	w10, w4
    8c44: 1a84c154     	csel	w20, w10, w4, gt
    8c48: 5280926a     	mov	w10, #0x493             // =1171
    8c4c: 71000a9f     	cmp	w20, #0x2
    8c50: 9a8a954a     	cinc	x10, x10, hi
    8c54: 386a6aab     	ldrb	w11, [x21, x10]
    8c58: 1b047d6a     	mul	w10, w11, w4
    8c5c: 340001cd     	cbz	w13, 0x8c94 <tp_ghost_check+0x11c>
    8c60: 90000004     	adrp	x4, 0x8000 <tpd_touch_press+0x634>
		0000000000008c60:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5c
    8c64: 79400084     	ldrh	w4, [x4]
		0000000000008c64:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x5c
    8c68: 6b0b009f     	cmp	w4, w11
    8c6c: 540011a2     	b.hs	0x8ea0 <tp_ghost_check+0x328>
    8c70: 340000c3     	cbz	w3, 0x8c88 <tp_ghost_check+0x110>
    8c74: 12001d24     	and	w4, w9, #0xff
    8c78: 7100189f     	cmp	w4, #0x6
    8c7c: 54000063     	b.lo	0x8c88 <tp_ghost_check+0x110>
    8c80: 6b03015f     	cmp	w10, w3
    8c84: 540015a3     	b.lo	0x8f38 <tp_ghost_check+0x3c0>
    8c88: 710005bf     	cmp	w13, #0x1
    8c8c: 54000061     	b.ne	0x8c98 <tp_ghost_check+0x120>
    8c90: 14000010     	b	0x8cd0 <tp_ghost_check+0x158>
    8c94: 2a1f03e3     	mov	w3, wzr
    8c98: 90000004     	adrp	x4, 0x8000 <tpd_touch_press+0x634>
		0000000000008c98:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xe4
    8c9c: 79400084     	ldrh	w4, [x4]
		0000000000008c9c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0xe4
    8ca0: 6b0b009f     	cmp	w4, w11
    8ca4: 54000fa2     	b.hs	0x8e98 <tp_ghost_check+0x320>
    8ca8: 34000102     	cbz	w2, 0x8cc8 <tp_ghost_check+0x150>
    8cac: 12001d24     	and	w4, w9, #0xff
    8cb0: 0b030043     	add	w3, w2, w3
    8cb4: 7100189f     	cmp	w4, #0x6
    8cb8: 54000083     	b.lo	0x8cc8 <tp_ghost_check+0x150>
    8cbc: 12003c62     	and	w2, w3, #0xffff
    8cc0: 6b02015f     	cmp	w10, w2
    8cc4: 540010e3     	b.lo	0x8ee0 <tp_ghost_check+0x368>
    8cc8: 710009bf     	cmp	w13, #0x2
    8ccc: 540001e0     	b.eq	0x8d08 <tp_ghost_check+0x190>
    8cd0: 90000002     	adrp	x2, 0x8000 <tpd_touch_press+0x634>
		0000000000008cd0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x16c
    8cd4: 79400044     	ldrh	w4, [x2]
		0000000000008cd4:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x16c
    8cd8: 6b0b009f     	cmp	w4, w11
    8cdc: 54000e62     	b.hs	0x8ea8 <tp_ghost_check+0x330>
    8ce0: 34000101     	cbz	w1, 0x8d00 <tp_ghost_check+0x188>
    8ce4: 12001d22     	and	w2, w9, #0xff
    8ce8: 0b030023     	add	w3, w1, w3
    8cec: 7100185f     	cmp	w2, #0x6
    8cf0: 54000083     	b.lo	0x8d00 <tp_ghost_check+0x188>
    8cf4: 12003c61     	and	w1, w3, #0xffff
    8cf8: 6b01015f     	cmp	w10, w1
    8cfc: 54001043     	b.lo	0x8f04 <tp_ghost_check+0x38c>
    8d00: 71000dbf     	cmp	w13, #0x3
    8d04: 540001e0     	b.eq	0x8d40 <tp_ghost_check+0x1c8>
    8d08: 90000001     	adrp	x1, 0x8000 <tpd_touch_press+0x634>
		0000000000008d08:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1f4
    8d0c: 79400024     	ldrh	w4, [x1]
		0000000000008d0c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x1f4
    8d10: 6b0b009f     	cmp	w4, w11
    8d14: 54000ce2     	b.hs	0x8eb0 <tp_ghost_check+0x338>
    8d18: 34000100     	cbz	w0, 0x8d38 <tp_ghost_check+0x1c0>
    8d1c: 12001d21     	and	w1, w9, #0xff
    8d20: 0b030003     	add	w3, w0, w3
    8d24: 7100183f     	cmp	w1, #0x6
    8d28: 54000083     	b.lo	0x8d38 <tp_ghost_check+0x1c0>
    8d2c: 12003c60     	and	w0, w3, #0xffff
    8d30: 6b00015f     	cmp	w10, w0
    8d34: 54000ec3     	b.lo	0x8f0c <tp_ghost_check+0x394>
    8d38: 710011bf     	cmp	w13, #0x4
    8d3c: 540001e0     	b.eq	0x8d78 <tp_ghost_check+0x200>
    8d40: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008d40:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x27c
    8d44: 79400004     	ldrh	w4, [x0]
		0000000000008d44:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x27c
    8d48: 6b0b009f     	cmp	w4, w11
    8d4c: 54000b62     	b.hs	0x8eb8 <tp_ghost_check+0x340>
    8d50: 34000111     	cbz	w17, 0x8d70 <tp_ghost_check+0x1f8>
    8d54: 12001d20     	and	w0, w9, #0xff
    8d58: 0b030223     	add	w3, w17, w3
    8d5c: 7100181f     	cmp	w0, #0x6
    8d60: 54000083     	b.lo	0x8d70 <tp_ghost_check+0x1f8>
    8d64: 12003c71     	and	w17, w3, #0xffff
    8d68: 6b11015f     	cmp	w10, w17
    8d6c: 54000d43     	b.lo	0x8f14 <tp_ghost_check+0x39c>
    8d70: 710015bf     	cmp	w13, #0x5
    8d74: 540001e0     	b.eq	0x8db0 <tp_ghost_check+0x238>
    8d78: 90000011     	adrp	x17, 0x8000 <tpd_touch_press+0x634>
		0000000000008d78:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x304
    8d7c: 79400224     	ldrh	w4, [x17]
		0000000000008d7c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x304
    8d80: 6b0b009f     	cmp	w4, w11
    8d84: 540009e2     	b.hs	0x8ec0 <tp_ghost_check+0x348>
    8d88: 34000110     	cbz	w16, 0x8da8 <tp_ghost_check+0x230>
    8d8c: 12001d31     	and	w17, w9, #0xff
    8d90: 0b030203     	add	w3, w16, w3
    8d94: 71001a3f     	cmp	w17, #0x6
    8d98: 54000083     	b.lo	0x8da8 <tp_ghost_check+0x230>
    8d9c: 12003c70     	and	w16, w3, #0xffff
    8da0: 6b10015f     	cmp	w10, w16
    8da4: 54000bc3     	b.lo	0x8f1c <tp_ghost_check+0x3a4>
    8da8: 710019bf     	cmp	w13, #0x6
    8dac: 540001e0     	b.eq	0x8de8 <tp_ghost_check+0x270>
    8db0: 90000010     	adrp	x16, 0x8000 <tpd_touch_press+0x634>
		0000000000008db0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x38c
    8db4: 79400204     	ldrh	w4, [x16]
		0000000000008db4:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x38c
    8db8: 6b0b009f     	cmp	w4, w11
    8dbc: 54000862     	b.hs	0x8ec8 <tp_ghost_check+0x350>
    8dc0: 3400010f     	cbz	w15, 0x8de0 <tp_ghost_check+0x268>
    8dc4: 12001d30     	and	w16, w9, #0xff
    8dc8: 0b0301e3     	add	w3, w15, w3
    8dcc: 71001a1f     	cmp	w16, #0x6
    8dd0: 54000083     	b.lo	0x8de0 <tp_ghost_check+0x268>
    8dd4: 12003c6f     	and	w15, w3, #0xffff
    8dd8: 6b0f015f     	cmp	w10, w15
    8ddc: 54000a43     	b.lo	0x8f24 <tp_ghost_check+0x3ac>
    8de0: 71001dbf     	cmp	w13, #0x7
    8de4: 540001e0     	b.eq	0x8e20 <tp_ghost_check+0x2a8>
    8de8: 9000000f     	adrp	x15, 0x8000 <tpd_touch_press+0x634>
		0000000000008de8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x414
    8dec: 794001e4     	ldrh	w4, [x15]
		0000000000008dec:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x414
    8df0: 6b0b009f     	cmp	w4, w11
    8df4: 540006e2     	b.hs	0x8ed0 <tp_ghost_check+0x358>
    8df8: 3400010e     	cbz	w14, 0x8e18 <tp_ghost_check+0x2a0>
    8dfc: 12001d2f     	and	w15, w9, #0xff
    8e00: 0b0301c3     	add	w3, w14, w3
    8e04: 710019ff     	cmp	w15, #0x6
    8e08: 54000083     	b.lo	0x8e18 <tp_ghost_check+0x2a0>
    8e0c: 12003c6e     	and	w14, w3, #0xffff
    8e10: 6b0e015f     	cmp	w10, w14
    8e14: 540008c3     	b.lo	0x8f2c <tp_ghost_check+0x3b4>
    8e18: 710021bf     	cmp	w13, #0x8
    8e1c: 540001e0     	b.eq	0x8e58 <tp_ghost_check+0x2e0>
    8e20: 9000000e     	adrp	x14, 0x8000 <tpd_touch_press+0x634>
		0000000000008e20:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x49c
    8e24: 794001c4     	ldrh	w4, [x14]
		0000000000008e24:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x49c
    8e28: 6b0b009f     	cmp	w4, w11
    8e2c: 54000562     	b.hs	0x8ed8 <tp_ghost_check+0x360>
    8e30: 3400010c     	cbz	w12, 0x8e50 <tp_ghost_check+0x2d8>
    8e34: 12001d2e     	and	w14, w9, #0xff
    8e38: 0b030183     	add	w3, w12, w3
    8e3c: 710019df     	cmp	w14, #0x6
    8e40: 54000083     	b.lo	0x8e50 <tp_ghost_check+0x2d8>
    8e44: 12003c6c     	and	w12, w3, #0xffff
    8e48: 6b0c015f     	cmp	w10, w12
    8e4c: 54000743     	b.lo	0x8f34 <tp_ghost_check+0x3bc>
    8e50: 710025bf     	cmp	w13, #0x9
    8e54: 540001a0     	b.eq	0x8e88 <tp_ghost_check+0x310>
    8e58: 9000000c     	adrp	x12, 0x8000 <tpd_touch_press+0x634>
		0000000000008e58:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x524
    8e5c: 79400184     	ldrh	w4, [x12]
		0000000000008e5c:  R_AARCH64_LDST16_ABS_LO12_NC	point_report_info+0x524
    8e60: 6b0b009f     	cmp	w4, w11
    8e64: 54000422     	b.hs	0x8ee8 <tp_ghost_check+0x370>
    8e68: 34000108     	cbz	w8, 0x8e88 <tp_ghost_check+0x310>
    8e6c: 12001d29     	and	w9, w9, #0xff
    8e70: 7100193f     	cmp	w9, #0x6
    8e74: 540000a3     	b.lo	0x8e88 <tp_ghost_check+0x310>
    8e78: 0b030108     	add	w8, w8, w3
    8e7c: 12003d03     	and	w3, w8, #0xffff
    8e80: 6b03015f     	cmp	w10, w3
    8e84: 540005a3     	b.lo	0x8f38 <tp_ghost_check+0x3c0>
    8e88: aa1303e0     	mov	x0, x19
    8e8c: 94000000     	bl	0x8e8c <tp_ghost_check+0x314>
		0000000000008e8c:  R_AARCH64_CALL26	vfree
    8e90: 2a1f03e0     	mov	w0, wzr
    8e94: 1400006b     	b	0x9040 <tp_ghost_check+0x4c8>
    8e98: 52800023     	mov	w3, #0x1                // =1
    8e9c: 14000014     	b	0x8eec <tp_ghost_check+0x374>
    8ea0: 2a1f03e3     	mov	w3, wzr
    8ea4: 14000012     	b	0x8eec <tp_ghost_check+0x374>
    8ea8: 52800043     	mov	w3, #0x2                // =2
    8eac: 14000010     	b	0x8eec <tp_ghost_check+0x374>
    8eb0: 52800063     	mov	w3, #0x3                // =3
    8eb4: 1400000e     	b	0x8eec <tp_ghost_check+0x374>
    8eb8: 52800083     	mov	w3, #0x4                // =4
    8ebc: 1400000c     	b	0x8eec <tp_ghost_check+0x374>
    8ec0: 528000a3     	mov	w3, #0x5                // =5
    8ec4: 1400000a     	b	0x8eec <tp_ghost_check+0x374>
    8ec8: 528000c3     	mov	w3, #0x6                // =6
    8ecc: 14000008     	b	0x8eec <tp_ghost_check+0x374>
    8ed0: 528000e3     	mov	w3, #0x7                // =7
    8ed4: 14000006     	b	0x8eec <tp_ghost_check+0x374>
    8ed8: 52800103     	mov	w3, #0x8                // =8
    8edc: 14000004     	b	0x8eec <tp_ghost_check+0x374>
    8ee0: 2a0203e3     	mov	w3, w2
    8ee4: 14000015     	b	0x8f38 <tp_ghost_check+0x3c0>
    8ee8: 52800123     	mov	w3, #0x9                // =9
    8eec: 90000002     	adrp	x2, 0x8000 <tpd_touch_press+0x634>
		0000000000008eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a58
    8ef0: 91000042     	add	x2, x2, #0x0
		0000000000008ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a58
    8ef4: aa1303e0     	mov	x0, x19
    8ef8: 52810001     	mov	w1, #0x800              // =2048
    8efc: 94000000     	bl	0x8efc <tp_ghost_check+0x384>
		0000000000008efc:  R_AARCH64_CALL26	snprintf
    8f00: 14000013     	b	0x8f4c <tp_ghost_check+0x3d4>
    8f04: 2a0103e3     	mov	w3, w1
    8f08: 1400000c     	b	0x8f38 <tp_ghost_check+0x3c0>
    8f0c: 2a0003e3     	mov	w3, w0
    8f10: 1400000a     	b	0x8f38 <tp_ghost_check+0x3c0>
    8f14: 2a1103e3     	mov	w3, w17
    8f18: 14000008     	b	0x8f38 <tp_ghost_check+0x3c0>
    8f1c: 2a1003e3     	mov	w3, w16
    8f20: 14000006     	b	0x8f38 <tp_ghost_check+0x3c0>
    8f24: 2a0f03e3     	mov	w3, w15
    8f28: 14000004     	b	0x8f38 <tp_ghost_check+0x3c0>
    8f2c: 2a0e03e3     	mov	w3, w14
    8f30: 14000002     	b	0x8f38 <tp_ghost_check+0x3c0>
    8f34: 2a0c03e3     	mov	w3, w12
    8f38: 90000002     	adrp	x2, 0x8000 <tpd_touch_press+0x634>
		0000000000008f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8551
    8f3c: 91000042     	add	x2, x2, #0x0
		0000000000008f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8551
    8f40: aa1303e0     	mov	x0, x19
    8f44: 52810001     	mov	w1, #0x800              // =2048
    8f48: 94000000     	bl	0x8f48 <tp_ghost_check+0x3d0>
		0000000000008f48:  R_AARCH64_CALL26	snprintf
    8f4c: 52810018     	mov	w24, #0x800             // =2048
    8f50: 2a0003f6     	mov	w22, w0
    8f54: 90000002     	adrp	x2, 0x8000 <tpd_touch_press+0x634>
		0000000000008f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a83
    8f58: 91000042     	add	x2, x2, #0x0
		0000000000008f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a83
    8f5c: 4b000308     	sub	w8, w24, w0
    8f60: 8b20c260     	add	x0, x19, w0, sxtw
    8f64: 93407d01     	sxtw	x1, w8
    8f68: 2a1403e3     	mov	w3, w20
    8f6c: 94000000     	bl	0x8f6c <tp_ghost_check+0x3f4>
		0000000000008f6c:  R_AARCH64_CALL26	snprintf
    8f70: 2a1f03f4     	mov	w20, wzr
    8f74: 9280a9f9     	mov	x25, #-0x550            // =-1360
    8f78: 9000001a     	adrp	x26, 0x8000 <tpd_touch_press+0x634>
		0000000000008f78:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
    8f7c: 9100035a     	add	x26, x26, #0x0
		0000000000008f7c:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
    8f80: 90000015     	adrp	x21, 0x8000 <tpd_touch_press+0x634>
		0000000000008f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xca8
    8f84: 910002b5     	add	x21, x21, #0x0
		0000000000008f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xca8
    8f88: 0b16001b     	add	w27, w0, w22
    8f8c: 90000016     	adrp	x22, 0x8000 <tpd_touch_press+0x634>
		0000000000008f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbfd7
    8f90: 910002d6     	add	x22, x22, #0x0
		0000000000008f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbfd7
    8f94: 14000004     	b	0x8fa4 <tp_ghost_check+0x42c>
    8f98: b1022339     	adds	x25, x25, #0x88
    8f9c: 11000694     	add	w20, w20, #0x1
    8fa0: 540002e0     	b.eq	0x8ffc <tp_ghost_check+0x484>
    8fa4: 8b19035c     	add	x28, x26, x25
    8fa8: 794b5f88     	ldrh	w8, [x28, #0x5ae]
    8fac: 34ffff68     	cbz	w8, 0x8f98 <tp_ghost_check+0x420>
    8fb0: 4b1b0308     	sub	w8, w24, w27
    8fb4: 8b3bc260     	add	x0, x19, w27, sxtw
    8fb8: b9456b84     	ldr	w4, [x28, #0x568]
    8fbc: 93407d01     	sxtw	x1, w8
    8fc0: b9456f85     	ldr	w5, [x28, #0x56c]
    8fc4: aa1503e2     	mov	x2, x21
    8fc8: 2a1403e3     	mov	w3, w20
    8fcc: 94000000     	bl	0x8fcc <tp_ghost_check+0x454>
		0000000000008fcc:  R_AARCH64_CALL26	snprintf
    8fd0: 0b1b001b     	add	w27, w0, w27
    8fd4: b9457784     	ldr	w4, [x28, #0x574]
    8fd8: b9457b85     	ldr	w5, [x28, #0x578]
    8fdc: 4b1b0308     	sub	w8, w24, w27
    8fe0: 8b3bc260     	add	x0, x19, w27, sxtw
    8fe4: aa1603e2     	mov	x2, x22
    8fe8: 93407d01     	sxtw	x1, w8
    8fec: 2a1403e3     	mov	w3, w20
    8ff0: 94000000     	bl	0x8ff0 <tp_ghost_check+0x478>
		0000000000008ff0:  R_AARCH64_CALL26	snprintf
    8ff4: 0b1b001b     	add	w27, w0, w27
    8ff8: 17ffffe8     	b	0x8f98 <tp_ghost_check+0x420>
    8ffc: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008ffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b1d
    9000: 91000000     	add	x0, x0, #0x0
		0000000000009000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b1d
    9004: 90000001     	adrp	x1, 0x9000 <tp_ghost_check+0x488>
		0000000000009004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1829
    9008: 91000021     	add	x1, x1, #0x0
		0000000000009008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1829
    900c: aa1303e2     	mov	x2, x19
    9010: 94000000     	bl	0x9010 <tp_ghost_check+0x498>
		0000000000009010:  R_AARCH64_CALL26	_printk
    9014: f94002e8     	ldr	x8, [x23]
		0000000000009014:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9018: f945f500     	ldr	x0, [x8, #0xbe8]
    901c: b4000080     	cbz	x0, 0x902c <tp_ghost_check+0x4b4>
    9020: 52810001     	mov	w1, #0x800              // =2048
    9024: aa1303e2     	mov	x2, x19
    9028: 94000000     	bl	0x9028 <tp_ghost_check+0x4b0>
		0000000000009028:  R_AARCH64_CALL26	snprintf
    902c: 52800200     	mov	w0, #0x10               // =16
    9030: 94000000     	bl	0x9030 <tp_ghost_check+0x4b8>
		0000000000009030:  R_AARCH64_CALL26	tpd_zlog_record_notify
    9034: aa1303e0     	mov	x0, x19
    9038: 94000000     	bl	0x9038 <tp_ghost_check+0x4c0>
		0000000000009038:  R_AARCH64_CALL26	vfree
    903c: 52800020     	mov	w0, #0x1                // =1
    9040: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    9044: a94457f6     	ldp	x22, x21, [sp, #0x40]
    9048: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    904c: a94267fa     	ldp	x26, x25, [sp, #0x20]
    9050: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    9054: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    9058: d50323bf     	autiasp
    905c: d65f03c0     	ret
    9060: d5384114     	mrs	x20, SP_EL0
    9064: f9402a96     	ldr	x22, [x20, #0x50]
    9068: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009068:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x140
    906c: 91000108     	add	x8, x8, #0x0
		000000000000906c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x140
    9070: 52810000     	mov	w0, #0x800              // =2048
    9074: f9002a88     	str	x8, [x20, #0x50]
    9078: 94000000     	bl	0x9078 <tp_ghost_check+0x500>
		0000000000009078:  R_AARCH64_CALL26	vmalloc_noprof
    907c: aa0003f3     	mov	x19, x0
    9080: f9002a96     	str	x22, [x20, #0x50]
    9084: b5ffd993     	cbnz	x19, 0x8bb4 <tp_ghost_check+0x3c>
    9088: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74cd
    908c: 91000000     	add	x0, x0, #0x0
		000000000000908c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74cd
    9090: 94000000     	bl	0x9090 <tp_ghost_check+0x518>
		0000000000009090:  R_AARCH64_CALL26	_printk
    9094: 17ffff7f     	b	0x8e90 <tp_ghost_check+0x318>
