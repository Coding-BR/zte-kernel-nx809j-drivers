
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000079cc <tpd_touch_press>:
    79cc: d503233f     	paciasp
    79d0: d101c3ff     	sub	sp, sp, #0x70
    79d4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    79d8: a9026ffc     	stp	x28, x27, [sp, #0x20]
    79dc: a90367fa     	stp	x26, x25, [sp, #0x30]
    79e0: a9045ff8     	stp	x24, x23, [sp, #0x40]
    79e4: a90557f6     	stp	x22, x21, [sp, #0x50]
    79e8: a9064ff4     	stp	x20, x19, [sp, #0x60]
    79ec: 910043fd     	add	x29, sp, #0x10
    79f0: 90000014     	adrp	x20, 0x7000 <ghost_debug_read+0x30c>
		00000000000079f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    79f4: 12003c28     	and	w8, w1, #0xffff
    79f8: 721f383f     	tst	w1, #0xfffe
    79fc: f940029b     	ldr	x27, [x20]
		00000000000079fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7a00: 12003c4a     	and	w10, w2, #0xffff
    7a04: 1a9f1508     	csinc	w8, w8, wzr, ne
    7a08: 721f385f     	tst	w2, #0xfffe
    7a0c: b9401369     	ldr	w9, [x27, #0x10]
    7a10: 1a9f154a     	csinc	w10, w10, wzr, ne
    7a14: 7100013f     	cmp	w9, #0x0
    7a18: 1a8a0053     	csel	w19, w2, w10, eq
    7a1c: 1a880035     	csel	w21, w1, w8, eq
    7a20: 12003c62     	and	w2, w3, #0xffff
    7a24: b4001340     	cbz	x0, 0x7c8c <tpd_touch_press+0x2c0>
    7a28: 7100285f     	cmp	w2, #0xa
    7a2c: 54001302     	b.hs	0x7c8c <tpd_touch_press+0x2c0>
    7a30: 2a0303f7     	mov	w23, w3
    7a34: aa0003f8     	mov	x24, x0
    7a38: 2a0403f9     	mov	w25, w4
    7a3c: 92403ee8     	and	x8, x23, #0xffff
    7a40: 2a0503f6     	mov	w22, w5
    7a44: b81fc3a2     	stur	w2, [x29, #-0x4]
    7a48: 8b233108     	add	x8, x8, w3, uxth #4
    7a4c: d37df11a     	lsl	x26, x8, #3
    7a50: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007a50:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
    7a54: 91000108     	add	x8, x8, #0x0
		0000000000007a54:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
    7a58: 8b1a011c     	add	x28, x8, x26
    7a5c: 39414388     	ldrb	w8, [x28, #0x50]
    7a60: f9004380     	str	x0, [x28, #0x80]
    7a64: 7100051f     	cmp	w8, #0x1
    7a68: 54000721     	b.ne	0x7b4c <tpd_touch_press+0x180>
    7a6c: 39409768     	ldrb	w8, [x27, #0x25]
    7a70: 34001da8     	cbz	w8, 0x7e24 <tpd_touch_press+0x458>
    7a74: 39416788     	ldrb	w8, [x28, #0x59]
    7a78: 37001d68     	tbnz	w8, #0x0, 0x7e24 <tpd_touch_press+0x458>
    7a7c: b9401368     	ldr	w8, [x27, #0x10]
    7a80: 321f0108     	orr	w8, w8, #0x2
    7a84: 71000d1f     	cmp	w8, #0x3
    7a88: 54001ce0     	b.eq	0x7e24 <tpd_touch_press+0x458>
    7a8c: 79488768     	ldrh	w8, [x27, #0x442]
    7a90: 12003eab     	and	w11, w21, #0xffff
    7a94: 53027d09     	lsr	w9, w8, #2
    7a98: 6b0b013f     	cmp	w9, w11
    7a9c: 54000102     	b.hs	0x7abc <tpd_touch_press+0xf0>
    7aa0: 0b08050a     	add	w10, w8, w8, lsl #1
    7aa4: 6b4a097f     	cmp	w11, w10, lsr #2
    7aa8: 540000a2     	b.hs	0x7abc <tpd_touch_press+0xf0>
    7aac: 52800028     	mov	w8, #0x1                // =1
    7ab0: 39016788     	strb	w8, [x28, #0x59]
    7ab4: 79488768     	ldrh	w8, [x27, #0x442]
    7ab8: 53027d09     	lsr	w9, w8, #2
    7abc: b9401b8a     	ldr	w10, [x28, #0x18]
    7ac0: 6b09015f     	cmp	w10, w9
    7ac4: 5400008b     	b.lt	0x7ad4 <tpd_touch_press+0x108>
    7ac8: 0b080509     	add	w9, w8, w8, lsl #1
    7acc: 6b49095f     	cmp	w10, w9, lsr #2
    7ad0: 54001aa9     	b.ls	0x7e24 <tpd_touch_press+0x458>
    7ad4: 39409769     	ldrb	w9, [x27, #0x25]
    7ad8: 340032a9     	cbz	w9, 0x812c <tpd_touch_press+0x760>
    7adc: b9401369     	ldr	w9, [x27, #0x10]
    7ae0: 321f0129     	orr	w9, w9, #0x2
    7ae4: 71000d3f     	cmp	w9, #0x3
    7ae8: 54003141     	b.ne	0x8110 <tpd_touch_press+0x744>
    7aec: 3940d369     	ldrb	w9, [x27, #0x34]
    7af0: 6b35213f     	cmp	w9, w21, uxth
    7af4: 54003208     	b.hi	0x8134 <tpd_touch_press+0x768>
    7af8: 3940d769     	ldrb	w9, [x27, #0x35]
    7afc: 4b090109     	sub	w9, w8, w9
    7b00: 6b0b013f     	cmp	w9, w11
    7b04: 5400318b     	b.lt	0x8134 <tpd_touch_press+0x768>
    7b08: 3940db69     	ldrb	w9, [x27, #0x36]
    7b0c: 6b33213f     	cmp	w9, w19, uxth
    7b10: 54003128     	b.hi	0x8134 <tpd_touch_press+0x768>
    7b14: 79488b69     	ldrh	w9, [x27, #0x444]
    7b18: 3940df6a     	ldrb	w10, [x27, #0x37]
    7b1c: 4b0a0129     	sub	w9, w9, w10
    7b20: 6b33213f     	cmp	w9, w19, uxth
    7b24: 5400308b     	b.lt	0x8134 <tpd_touch_press+0x768>
    7b28: 3940e369     	ldrb	w9, [x27, #0x38]
    7b2c: 34003009     	cbz	w9, 0x812c <tpd_touch_press+0x760>
    7b30: 79405f69     	ldrh	w9, [x27, #0x2e]
    7b34: 6b33213f     	cmp	w9, w19, uxth
    7b38: 54002fa2     	b.hs	0x812c <tpd_touch_press+0x760>
    7b3c: 79405b69     	ldrh	w9, [x27, #0x2c]
    7b40: 6b35213f     	cmp	w9, w21, uxth
    7b44: 54002ee9     	b.ls	0x8120 <tpd_touch_press+0x754>
    7b48: 1400017b     	b	0x8134 <tpd_touch_press+0x768>
    7b4c: 2a1503e0     	mov	w0, w21
    7b50: 2a1303e1     	mov	w1, w19
    7b54: 940006c4     	bl	0x9664 <point_is_in_limit_area>
    7b58: 36000520     	tbz	w0, #0x0, 0x7bfc <tpd_touch_press+0x230>
    7b5c: 2a1503e0     	mov	w0, w21
    7b60: 2a1303e1     	mov	w1, w19
    7b64: 940006c0     	bl	0x9664 <point_is_in_limit_area>
    7b68: 37001220     	tbnz	w0, #0x0, 0x7dac <tpd_touch_press+0x3e0>
    7b6c: f9400288     	ldr	x8, [x20]
		0000000000007b6c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7b70: 39409509     	ldrb	w9, [x8, #0x25]
    7b74: 340011c9     	cbz	w9, 0x7dac <tpd_touch_press+0x3e0>
    7b78: b9401109     	ldr	w9, [x8, #0x10]
    7b7c: 321f0129     	orr	w9, w9, #0x2
    7b80: 71000d3f     	cmp	w9, #0x3
    7b84: 54000a21     	b.ne	0x7cc8 <tpd_touch_press+0x2fc>
    7b88: 3940d10a     	ldrb	w10, [x8, #0x34]
    7b8c: 12003ea9     	and	w9, w21, #0xffff
    7b90: 6b0a013f     	cmp	w9, w10
    7b94: 54000aa3     	b.lo	0x7ce8 <tpd_touch_press+0x31c>
    7b98: 7948850a     	ldrh	w10, [x8, #0x442]
    7b9c: 3940d50b     	ldrb	w11, [x8, #0x35]
    7ba0: 4b0b014b     	sub	w11, w10, w11
    7ba4: 6b09017f     	cmp	w11, w9
    7ba8: 54000a0b     	b.lt	0x7ce8 <tpd_touch_press+0x31c>
    7bac: 3940d90b     	ldrb	w11, [x8, #0x36]
    7bb0: 6b33217f     	cmp	w11, w19, uxth
    7bb4: 540009a8     	b.hi	0x7ce8 <tpd_touch_press+0x31c>
    7bb8: 7948890b     	ldrh	w11, [x8, #0x444]
    7bbc: 3940dd0c     	ldrb	w12, [x8, #0x37]
    7bc0: 4b0c016b     	sub	w11, w11, w12
    7bc4: 6b33217f     	cmp	w11, w19, uxth
    7bc8: 5400090b     	b.lt	0x7ce8 <tpd_touch_press+0x31c>
    7bcc: 3940e10b     	ldrb	w11, [x8, #0x38]
    7bd0: 34000eeb     	cbz	w11, 0x7dac <tpd_touch_press+0x3e0>
    7bd4: 79405d0b     	ldrh	w11, [x8, #0x2e]
    7bd8: 6b33217f     	cmp	w11, w19, uxth
    7bdc: 54000e82     	b.hs	0x7dac <tpd_touch_press+0x3e0>
    7be0: 79405908     	ldrh	w8, [x8, #0x2c]
    7be4: 6b35211f     	cmp	w8, w21, uxth
    7be8: 54000808     	b.hi	0x7ce8 <tpd_touch_press+0x31c>
    7bec: 4b080148     	sub	w8, w10, w8
    7bf0: 6b09011f     	cmp	w8, w9
    7bf4: 54000dca     	b.ge	0x7dac <tpd_touch_press+0x3e0>
    7bf8: 1400003c     	b	0x7ce8 <tpd_touch_press+0x31c>
    7bfc: f9400288     	ldr	x8, [x20]
		0000000000007bfc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7c00: 39409509     	ldrb	w9, [x8, #0x25]
    7c04: 34000fa9     	cbz	w9, 0x7df8 <tpd_touch_press+0x42c>
    7c08: b9401109     	ldr	w9, [x8, #0x10]
    7c0c: 321f0129     	orr	w9, w9, #0x2
    7c10: 71000d3f     	cmp	w9, #0x3
    7c14: 54000481     	b.ne	0x7ca4 <tpd_touch_press+0x2d8>
    7c18: 3940d10a     	ldrb	w10, [x8, #0x34]
    7c1c: 12003ea9     	and	w9, w21, #0xffff
    7c20: 6b0a013f     	cmp	w9, w10
    7c24: 54fff9c3     	b.lo	0x7b5c <tpd_touch_press+0x190>
    7c28: 7948850a     	ldrh	w10, [x8, #0x442]
    7c2c: 3940d50b     	ldrb	w11, [x8, #0x35]
    7c30: 4b0b014b     	sub	w11, w10, w11
    7c34: 6b09017f     	cmp	w11, w9
    7c38: 54fff92b     	b.lt	0x7b5c <tpd_touch_press+0x190>
    7c3c: 3940d90b     	ldrb	w11, [x8, #0x36]
    7c40: 6b33217f     	cmp	w11, w19, uxth
    7c44: 54fff8c8     	b.hi	0x7b5c <tpd_touch_press+0x190>
    7c48: 7948890b     	ldrh	w11, [x8, #0x444]
    7c4c: 3940dd0c     	ldrb	w12, [x8, #0x37]
    7c50: 4b0c016b     	sub	w11, w11, w12
    7c54: 6b33217f     	cmp	w11, w19, uxth
    7c58: 54fff82b     	b.lt	0x7b5c <tpd_touch_press+0x190>
    7c5c: 3940e10b     	ldrb	w11, [x8, #0x38]
    7c60: 34000ccb     	cbz	w11, 0x7df8 <tpd_touch_press+0x42c>
    7c64: 79405d0b     	ldrh	w11, [x8, #0x2e]
    7c68: 6b33217f     	cmp	w11, w19, uxth
    7c6c: 54000c62     	b.hs	0x7df8 <tpd_touch_press+0x42c>
    7c70: 79405908     	ldrh	w8, [x8, #0x2c]
    7c74: 6b35211f     	cmp	w8, w21, uxth
    7c78: 54fff728     	b.hi	0x7b5c <tpd_touch_press+0x190>
    7c7c: 4b080148     	sub	w8, w10, w8
    7c80: 6b09011f     	cmp	w8, w9
    7c84: 54000baa     	b.ge	0x7df8 <tpd_touch_press+0x42c>
    7c88: 17ffffb5     	b	0x7b5c <tpd_touch_press+0x190>
    7c8c: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		0000000000007c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f37
    7c90: 91000000     	add	x0, x0, #0x0
		0000000000007c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f37
    7c94: 90000001     	adrp	x1, 0x7000 <ghost_debug_read+0x30c>
		0000000000007c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f2
    7c98: 91000021     	add	x1, x1, #0x0
		0000000000007c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f2
    7c9c: 94000000     	bl	0x7c9c <tpd_touch_press+0x2d0>
		0000000000007c9c:  R_AARCH64_CALL26	_printk
    7ca0: 140000b2     	b	0x7f68 <tpd_touch_press+0x59c>
    7ca4: 3940d109     	ldrb	w9, [x8, #0x34]
    7ca8: 6b35213f     	cmp	w9, w21, uxth
    7cac: 54fff588     	b.hi	0x7b5c <tpd_touch_press+0x190>
    7cb0: 79488509     	ldrh	w9, [x8, #0x442]
    7cb4: 3940d508     	ldrb	w8, [x8, #0x35]
    7cb8: 4b080128     	sub	w8, w9, w8
    7cbc: 6b35211f     	cmp	w8, w21, uxth
    7cc0: 54fff4eb     	b.lt	0x7b5c <tpd_touch_press+0x190>
    7cc4: 1400004d     	b	0x7df8 <tpd_touch_press+0x42c>
    7cc8: 3940d109     	ldrb	w9, [x8, #0x34]
    7ccc: 6b35213f     	cmp	w9, w21, uxth
    7cd0: 540000c8     	b.hi	0x7ce8 <tpd_touch_press+0x31c>
    7cd4: 79488509     	ldrh	w9, [x8, #0x442]
    7cd8: 3940d508     	ldrb	w8, [x8, #0x35]
    7cdc: 4b080128     	sub	w8, w9, w8
    7ce0: 6b35211f     	cmp	w8, w21, uxth
    7ce4: 5400064a     	b.ge	0x7dac <tpd_touch_press+0x3e0>
    7ce8: 39415788     	ldrb	w8, [x28, #0x55]
    7cec: 360025a8     	tbz	w8, #0x0, 0x81a0 <tpd_touch_press+0x7d4>
    7cf0: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007cf0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
    7cf4: 39400108     	ldrb	w8, [x8]
		0000000000007cf4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
    7cf8: 370003a8     	tbnz	w8, #0x0, 0x7d6c <tpd_touch_press+0x3a0>
    7cfc: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007cfc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
    7d00: 39400108     	ldrb	w8, [x8]
		0000000000007d00:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
    7d04: 37000348     	tbnz	w8, #0x0, 0x7d6c <tpd_touch_press+0x3a0>
    7d08: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007d08:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
    7d0c: 39400108     	ldrb	w8, [x8]
		0000000000007d0c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
    7d10: 370002e8     	tbnz	w8, #0x0, 0x7d6c <tpd_touch_press+0x3a0>
    7d14: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007d14:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
    7d18: 39400108     	ldrb	w8, [x8]
		0000000000007d18:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
    7d1c: 37000288     	tbnz	w8, #0x0, 0x7d6c <tpd_touch_press+0x3a0>
    7d20: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007d20:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
    7d24: 39400108     	ldrb	w8, [x8]
		0000000000007d24:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
    7d28: 37000228     	tbnz	w8, #0x0, 0x7d6c <tpd_touch_press+0x3a0>
    7d2c: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007d2c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
    7d30: 39400108     	ldrb	w8, [x8]
		0000000000007d30:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
    7d34: 370001c8     	tbnz	w8, #0x0, 0x7d6c <tpd_touch_press+0x3a0>
    7d38: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007d38:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
    7d3c: 39400108     	ldrb	w8, [x8]
		0000000000007d3c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
    7d40: 37000168     	tbnz	w8, #0x0, 0x7d6c <tpd_touch_press+0x3a0>
    7d44: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007d44:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
    7d48: 39400108     	ldrb	w8, [x8]
		0000000000007d48:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
    7d4c: 37000108     	tbnz	w8, #0x0, 0x7d6c <tpd_touch_press+0x3a0>
    7d50: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007d50:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
    7d54: 39400108     	ldrb	w8, [x8]
		0000000000007d54:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
    7d58: 370000a8     	tbnz	w8, #0x0, 0x7d6c <tpd_touch_press+0x3a0>
    7d5c: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007d5c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
    7d60: 39400108     	ldrb	w8, [x8]
		0000000000007d60:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
    7d64: 7100051f     	cmp	w8, #0x1
    7d68: 54000261     	b.ne	0x7db4 <tpd_touch_press+0x3e8>
    7d6c: 52800028     	mov	w8, #0x1                // =1
    7d70: 39015b88     	strb	w8, [x28, #0x56]
    7d74: 39414788     	ldrb	w8, [x28, #0x51]
    7d78: 37000228     	tbnz	w8, #0x0, 0x7dbc <tpd_touch_press+0x3f0>
    7d7c: b27e0348     	orr	x8, x26, #0x4
    7d80: 12003ea9     	and	w9, w21, #0xffff
    7d84: f115411f     	cmp	x8, #0x550
    7d88: b9000389     	str	w9, [x28]
    7d8c: 54001328     	b.hi	0x7ff0 <tpd_touch_press+0x624>
    7d90: 12003e68     	and	w8, w19, #0xffff
    7d94: 39002399     	strb	w25, [x28, #0x8]
    7d98: b9000788     	str	w8, [x28, #0x4]
    7d9c: 52800028     	mov	w8, #0x1                // =1
    7da0: 39002796     	strb	w22, [x28, #0x9]
    7da4: 39014788     	strb	w8, [x28, #0x51]
    7da8: 14000070     	b	0x7f68 <tpd_touch_press+0x59c>
    7dac: 39415788     	ldrb	w8, [x28, #0x55]
    7db0: 360014a8     	tbz	w8, #0x0, 0x8044 <tpd_touch_press+0x678>
    7db4: 39414788     	ldrb	w8, [x28, #0x51]
    7db8: 3607fe28     	tbz	w8, #0x0, 0x7d7c <tpd_touch_press+0x3b0>
    7dbc: b9400388     	ldr	w8, [x28]
    7dc0: 4b352108     	sub	w8, w8, w21, uxth
    7dc4: 7100011f     	cmp	w8, #0x0
    7dc8: 5a885508     	cneg	w8, w8, mi
    7dcc: 7101911f     	cmp	w8, #0x64
    7dd0: 5400014c     	b.gt	0x7df8 <tpd_touch_press+0x42c>
    7dd4: b27e0348     	orr	x8, x26, #0x4
    7dd8: f115411f     	cmp	x8, #0x550
    7ddc: 540010a8     	b.hi	0x7ff0 <tpd_touch_press+0x624>
    7de0: b9400788     	ldr	w8, [x28, #0x4]
    7de4: 4b332108     	sub	w8, w8, w19, uxth
    7de8: 7100011f     	cmp	w8, #0x0
    7dec: 5a885508     	cneg	w8, w8, mi
    7df0: 7101951f     	cmp	w8, #0x65
    7df4: 54000bab     	b.lt	0x7f68 <tpd_touch_press+0x59c>
    7df8: 39414788     	ldrb	w8, [x28, #0x51]
    7dfc: 36000128     	tbz	w8, #0x0, 0x7e20 <tpd_touch_press+0x454>
    7e00: 12003ea8     	and	w8, w21, #0xffff
    7e04: 12003e69     	and	w9, w19, #0xffff
    7e08: 39005399     	strb	w25, [x28, #0x14]
    7e0c: 2901a788     	stp	w8, w9, [x28, #0xc]
    7e10: 52800028     	mov	w8, #0x1                // =1
    7e14: 39005796     	strb	w22, [x28, #0x15]
    7e18: 39014b88     	strb	w8, [x28, #0x52]
    7e1c: 14000002     	b	0x7e24 <tpd_touch_press+0x458>
    7e20: 39014b9f     	strb	wzr, [x28, #0x52]
    7e24: 39414b88     	ldrb	w8, [x28, #0x52]
    7e28: 52800029     	mov	w9, #0x1                // =1
    7e2c: 39014389     	strb	w9, [x28, #0x50]
    7e30: 7100051f     	cmp	w8, #0x1
    7e34: 54000361     	b.ne	0x7ea0 <tpd_touch_press+0x4d4>
    7e38: 39414f88     	ldrb	w8, [x28, #0x53]
    7e3c: b27e0354     	orr	x20, x26, #0x4
    7e40: 2a1603fa     	mov	w26, w22
    7e44: 36000a48     	tbz	w8, #0x0, 0x7f8c <tpd_touch_press+0x5c0>
    7e48: f115429f     	cmp	x20, #0x550
    7e4c: 54000d28     	b.hi	0x7ff0 <tpd_touch_press+0x624>
    7e50: 29400b81     	ldp	w1, w2, [x28]
    7e54: aa1803e0     	mov	x0, x24
    7e58: 2a1703e3     	mov	w3, w23
    7e5c: 2a1903e4     	mov	w4, w25
    7e60: 2a1a03e5     	mov	w5, w26
    7e64: 94000121     	bl	0x82e8 <tpd_touch_report>
    7e68: aa1803e0     	mov	x0, x24
    7e6c: 2a1f03e1     	mov	w1, wzr
    7e70: 2a1f03e2     	mov	w2, wzr
    7e74: 2a1f03e3     	mov	w3, wzr
    7e78: 94000000     	bl	0x7e78 <tpd_touch_press+0x4ac>
		0000000000007e78:  R_AARCH64_CALL26	input_event
    7e7c: 52807d00     	mov	w0, #0x3e8              // =1000
    7e80: 5280bb81     	mov	w1, #0x5dc              // =1500
    7e84: 52800042     	mov	w2, #0x2                // =2
    7e88: 94000000     	bl	0x7e88 <tpd_touch_press+0x4bc>
		0000000000007e88:  R_AARCH64_CALL26	usleep_range_state
    7e8c: 39414f88     	ldrb	w8, [x28, #0x53]
    7e90: 36000b28     	tbz	w8, #0x0, 0x7ff4 <tpd_touch_press+0x628>
    7e94: 29418b81     	ldp	w1, w2, [x28, #0xc]
    7e98: aa1803e0     	mov	x0, x24
    7e9c: 1400002b     	b	0x7f48 <tpd_touch_press+0x57c>
    7ea0: 39409369     	ldrb	w9, [x27, #0x24]
    7ea4: 39414f88     	ldrb	w8, [x28, #0x53]
    7ea8: 2a1603fa     	mov	w26, w22
    7eac: 34000469     	cbz	w9, 0x7f38 <tpd_touch_press+0x56c>
    7eb0: 36000e08     	tbz	w8, #0x0, 0x8070 <tpd_touch_press+0x6a4>
    7eb4: 39415f88     	ldrb	w8, [x28, #0x57]
    7eb8: 7100051f     	cmp	w8, #0x1
    7ebc: 54000401     	b.ne	0x7f3c <tpd_touch_press+0x570>
    7ec0: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007ec0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    7ec4: f9400108     	ldr	x8, [x8]
		0000000000007ec4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    7ec8: f9403389     	ldr	x9, [x28, #0x60]
    7ecc: cb090100     	sub	x0, x8, x9
    7ed0: 94000000     	bl	0x7ed0 <tpd_touch_press+0x504>
		0000000000007ed0:  R_AARCH64_CALL26	jiffies_to_msecs
    7ed4: b9401b88     	ldr	w8, [x28, #0x18]
    7ed8: 4b352108     	sub	w8, w8, w21, uxth
    7edc: 7100011f     	cmp	w8, #0x0
    7ee0: 5a885509     	cneg	w9, w8, mi
    7ee4: 39409368     	ldrb	w8, [x27, #0x24]
    7ee8: 7101941f     	cmp	w0, #0x65
    7eec: 54000042     	b.hs	0x7ef4 <tpd_touch_press+0x528>
    7ef0: 0b080508     	add	w8, w8, w8, lsl #1
    7ef4: 6b08013f     	cmp	w9, w8
    7ef8: 540000ec     	b.gt	0x7f14 <tpd_touch_press+0x548>
    7efc: b9401f89     	ldr	w9, [x28, #0x1c]
    7f00: 4b332129     	sub	w9, w9, w19, uxth
    7f04: 7100013f     	cmp	w9, #0x0
    7f08: 5a895529     	cneg	w9, w9, mi
    7f0c: 6b08013f     	cmp	w9, w8
    7f10: 5400024d     	b.le	0x7f58 <tpd_touch_press+0x58c>
    7f14: aa1803e0     	mov	x0, x24
    7f18: 2a1503e1     	mov	w1, w21
    7f1c: 2a1303e2     	mov	w2, w19
    7f20: 2a1703e3     	mov	w3, w23
    7f24: 2a1903e4     	mov	w4, w25
    7f28: 2a1a03e5     	mov	w5, w26
    7f2c: 940000ef     	bl	0x82e8 <tpd_touch_report>
    7f30: 39015f9f     	strb	wzr, [x28, #0x57]
    7f34: 14000009     	b	0x7f58 <tpd_touch_press+0x58c>
    7f38: 36000c08     	tbz	w8, #0x0, 0x80b8 <tpd_touch_press+0x6ec>
    7f3c: aa1803e0     	mov	x0, x24
    7f40: 2a1503e1     	mov	w1, w21
    7f44: 2a1303e2     	mov	w2, w19
    7f48: 2a1703e3     	mov	w3, w23
    7f4c: 2a1903e4     	mov	w4, w25
    7f50: 2a1a03e5     	mov	w5, w26
    7f54: 940000e5     	bl	0x82e8 <tpd_touch_report>
    7f58: 12003ea8     	and	w8, w21, #0xffff
    7f5c: 12003e69     	and	w9, w19, #0xffff
    7f60: 39014b9f     	strb	wzr, [x28, #0x52]
    7f64: 2904a788     	stp	w8, w9, [x28, #0x24]
    7f68: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    7f6c: a94557f6     	ldp	x22, x21, [sp, #0x50]
    7f70: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    7f74: a94367fa     	ldp	x26, x25, [sp, #0x30]
    7f78: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    7f7c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7f80: 9101c3ff     	add	sp, sp, #0x70
    7f84: d50323bf     	autiasp
    7f88: d65f03c0     	ret
    7f8c: 52800028     	mov	w8, #0x1                // =1
    7f90: 90000009     	adrp	x9, 0x7000 <ghost_debug_read+0x30c>
		0000000000007f90:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    7f94: f115429f     	cmp	x20, #0x550
    7f98: 39014f88     	strb	w8, [x28, #0x53]
    7f9c: f9400129     	ldr	x9, [x9]
		0000000000007f9c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    7fa0: 39016b88     	strb	w8, [x28, #0x5a]
    7fa4: f9003389     	str	x9, [x28, #0x60]
    7fa8: b9448f68     	ldr	w8, [x27, #0x48c]
    7fac: 11000508     	add	w8, w8, #0x1
    7fb0: b9048f68     	str	w8, [x27, #0x48c]
    7fb4: b9400388     	ldr	w8, [x28]
    7fb8: b9001b88     	str	w8, [x28, #0x18]
    7fbc: 540001a8     	b.hi	0x7ff0 <tpd_touch_press+0x624>
    7fc0: b85fc3b6     	ldur	w22, [x29, #-0x4]
    7fc4: b9400788     	ldr	w8, [x28, #0x4]
    7fc8: 2a1603e0     	mov	w0, w22
    7fcc: b9001f88     	str	w8, [x28, #0x1c]
    7fd0: 94000090     	bl	0x8210 <point_report_reset>
    7fd4: 29400f82     	ldp	w2, w3, [x28]
    7fd8: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		0000000000007fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68ae
    7fdc: 91000000     	add	x0, x0, #0x0
		0000000000007fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68ae
    7fe0: 2a1603e1     	mov	w1, w22
    7fe4: 94000000     	bl	0x7fe4 <tpd_touch_press+0x618>
		0000000000007fe4:  R_AARCH64_CALL26	_printk
    7fe8: f115429f     	cmp	x20, #0x550
    7fec: 54fff329     	b.ls	0x7e50 <tpd_touch_press+0x484>
    7ff0: d4200020     	brk	#0x1
    7ff4: 52800028     	mov	w8, #0x1                // =1
    7ff8: 90000009     	adrp	x9, 0x7000 <ghost_debug_read+0x30c>
		0000000000007ff8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    7ffc: 39014f88     	strb	w8, [x28, #0x53]
    8000: f9400129     	ldr	x9, [x9]
		0000000000008000:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    8004: 39016b88     	strb	w8, [x28, #0x5a]
    8008: b85fc3b4     	ldur	w20, [x29, #-0x4]
    800c: f9003389     	str	x9, [x28, #0x60]
    8010: 2a1403e0     	mov	w0, w20
    8014: b9448f68     	ldr	w8, [x27, #0x48c]
    8018: 11000508     	add	w8, w8, #0x1
    801c: b9048f68     	str	w8, [x27, #0x48c]
    8020: 29402788     	ldp	w8, w9, [x28]
    8024: 29032788     	stp	w8, w9, [x28, #0x18]
    8028: 9400007a     	bl	0x8210 <point_report_reset>
    802c: 29418f82     	ldp	w2, w3, [x28, #0xc]
    8030: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68ae
    8034: 91000000     	add	x0, x0, #0x0
		0000000000008034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68ae
    8038: 2a1403e1     	mov	w1, w20
    803c: 94000000     	bl	0x803c <tpd_touch_press+0x670>
		000000000000803c:  R_AARCH64_CALL26	_printk
    8040: 17ffff95     	b	0x7e94 <tpd_touch_press+0x4c8>
    8044: b85fc3a1     	ldur	w1, [x29, #-0x4]
    8048: 52800028     	mov	w8, #0x1                // =1
    804c: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		000000000000804c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5110
    8050: 91000000     	add	x0, x0, #0x0
		0000000000008050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5110
    8054: 12003ea2     	and	w2, w21, #0xffff
    8058: 12003e63     	and	w3, w19, #0xffff
    805c: 39015788     	strb	w8, [x28, #0x55]
    8060: 94000000     	bl	0x8060 <tpd_touch_press+0x694>
		0000000000008060:  R_AARCH64_CALL26	_printk
    8064: 39414788     	ldrb	w8, [x28, #0x51]
    8068: 3707eaa8     	tbnz	w8, #0x0, 0x7dbc <tpd_touch_press+0x3f0>
    806c: 17ffff44     	b	0x7d7c <tpd_touch_press+0x3b0>
    8070: 52800034     	mov	w20, #0x1               // =1
    8074: b85fc3b6     	ldur	w22, [x29, #-0x4]
    8078: 39014f94     	strb	w20, [x28, #0x53]
    807c: b9448f68     	ldr	w8, [x27, #0x48c]
    8080: 2a1603e0     	mov	w0, w22
    8084: 11000508     	add	w8, w8, #0x1
    8088: b9048f68     	str	w8, [x27, #0x48c]
    808c: 94000061     	bl	0x8210 <point_report_reset>
    8090: 12003ea2     	and	w2, w21, #0xffff
    8094: 12003e63     	and	w3, w19, #0xffff
    8098: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008098:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    809c: 29030f82     	stp	w2, w3, [x28, #0x18]
    80a0: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		00000000000080a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb31c
    80a4: 91000000     	add	x0, x0, #0x0
		00000000000080a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb31c
    80a8: f9400108     	ldr	x8, [x8]
		00000000000080a8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    80ac: 39015f94     	strb	w20, [x28, #0x57]
    80b0: 2a1603e1     	mov	w1, w22
    80b4: 14000014     	b	0x8104 <tpd_touch_press+0x738>
    80b8: 52800028     	mov	w8, #0x1                // =1
    80bc: b85fc3b4     	ldur	w20, [x29, #-0x4]
    80c0: 12003eba     	and	w26, w21, #0xffff
    80c4: 39014f88     	strb	w8, [x28, #0x53]
    80c8: b9448f68     	ldr	w8, [x27, #0x48c]
    80cc: 2a1403e0     	mov	w0, w20
    80d0: 11000508     	add	w8, w8, #0x1
    80d4: b9048f68     	str	w8, [x27, #0x48c]
    80d8: 12003e7b     	and	w27, w19, #0xffff
    80dc: 29036f9a     	stp	w26, w27, [x28, #0x18]
    80e0: 9400004c     	bl	0x8210 <point_report_reset>
    80e4: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		00000000000080e4:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    80e8: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		00000000000080e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9595
    80ec: 91000000     	add	x0, x0, #0x0
		00000000000080ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9595
    80f0: f9400108     	ldr	x8, [x8]
		00000000000080f0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    80f4: 2a1403e1     	mov	w1, w20
    80f8: 2a1a03e2     	mov	w2, w26
    80fc: 2a1603fa     	mov	w26, w22
    8100: 2a1b03e3     	mov	w3, w27
    8104: f9003388     	str	x8, [x28, #0x60]
    8108: 94000000     	bl	0x8108 <tpd_touch_press+0x73c>
		0000000000008108:  R_AARCH64_CALL26	_printk
    810c: 17ffff8c     	b	0x7f3c <tpd_touch_press+0x570>
    8110: 3940d369     	ldrb	w9, [x27, #0x34]
    8114: 6b35213f     	cmp	w9, w21, uxth
    8118: 540000e8     	b.hi	0x8134 <tpd_touch_press+0x768>
    811c: 3940d769     	ldrb	w9, [x27, #0x35]
    8120: 4b090108     	sub	w8, w8, w9
    8124: 6b0b011f     	cmp	w8, w11
    8128: 5400006b     	b.lt	0x8134 <tpd_touch_press+0x768>
    812c: 3901639f     	strb	wzr, [x28, #0x58]
    8130: 17ffff3d     	b	0x7e24 <tpd_touch_press+0x458>
    8134: 39416388     	ldrb	w8, [x28, #0x58]
    8138: 7100051f     	cmp	w8, #0x1
    813c: 54000081     	b.ne	0x814c <tpd_touch_press+0x780>
    8140: f9403788     	ldr	x8, [x28, #0x68]
    8144: 2a0b03f4     	mov	w20, w11
    8148: 14000009     	b	0x816c <tpd_touch_press+0x7a0>
    814c: 12003e68     	and	w8, w19, #0xffff
    8150: 52800029     	mov	w9, #0x1                // =1
    8154: 2a0b03f4     	mov	w20, w11
    8158: 2906238b     	stp	w11, w8, [x28, #0x30]
    815c: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		000000000000815c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    8160: 39016389     	strb	w9, [x28, #0x58]
    8164: f9400108     	ldr	x8, [x8]
		0000000000008164:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    8168: f9003788     	str	x8, [x28, #0x68]
    816c: 90000009     	adrp	x9, 0x8000 <tpd_touch_press+0x634>
		000000000000816c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    8170: f9400129     	ldr	x9, [x9]
		0000000000008170:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    8174: cb080120     	sub	x0, x9, x8
    8178: 94000000     	bl	0x8178 <tpd_touch_press+0x7ac>
		0000000000008178:  R_AARCH64_CALL26	jiffies_to_msecs
    817c: 710c841f     	cmp	w0, #0x321
    8180: 54ffe523     	b.lo	0x7e24 <tpd_touch_press+0x458>
    8184: b9403388     	ldr	w8, [x28, #0x30]
    8188: 6b140108     	subs	w8, w8, w20
    818c: 5a885508     	cneg	w8, w8, mi
    8190: 7100551f     	cmp	w8, #0x15
    8194: 540001eb     	b.lt	0x81d0 <tpd_touch_press+0x804>
    8198: 12003e68     	and	w8, w19, #0xffff
    819c: 14000013     	b	0x81e8 <tpd_touch_press+0x81c>
    81a0: 52800028     	mov	w8, #0x1                // =1
    81a4: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		00000000000081a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x960f
    81a8: 91000000     	add	x0, x0, #0x0
		00000000000081a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x960f
    81ac: 39015788     	strb	w8, [x28, #0x55]
    81b0: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		00000000000081b0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    81b4: 12003ea2     	and	w2, w21, #0xffff
    81b8: f9400108     	ldr	x8, [x8]
		00000000000081b8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    81bc: b85fc3a1     	ldur	w1, [x29, #-0x4]
    81c0: 12003e63     	and	w3, w19, #0xffff
    81c4: f9003b88     	str	x8, [x28, #0x70]
    81c8: 94000000     	bl	0x81c8 <tpd_touch_press+0x7fc>
		00000000000081c8:  R_AARCH64_CALL26	_printk
    81cc: 17fffec9     	b	0x7cf0 <tpd_touch_press+0x324>
    81d0: b9403789     	ldr	w9, [x28, #0x34]
    81d4: 12003e68     	and	w8, w19, #0xffff
    81d8: 6b080129     	subs	w9, w9, w8
    81dc: 5a895529     	cneg	w9, w9, mi
    81e0: 7100553f     	cmp	w9, #0x15
    81e4: 540000cb     	b.lt	0x81fc <tpd_touch_press+0x830>
    81e8: 29062394     	stp	w20, w8, [x28, #0x30]
    81ec: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		00000000000081ec:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    81f0: f9400108     	ldr	x8, [x8]
		00000000000081f0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    81f4: f9003788     	str	x8, [x28, #0x68]
    81f8: 17ffff0b     	b	0x7e24 <tpd_touch_press+0x458>
    81fc: f9404380     	ldr	x0, [x28, #0x80]
    8200: 2a1703e1     	mov	w1, w23
    8204: 94000000     	bl	0x8204 <tpd_touch_press+0x838>
		0000000000008204:  R_AARCH64_CALL26	tpd_touch_release
    8208: 3901639f     	strb	wzr, [x28, #0x58]
    820c: 17ffff57     	b	0x7f68 <tpd_touch_press+0x59c>
