
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024bf4 <tpd_touch_press>:
   24bf4: d503233f     	paciasp
   24bf8: d101c3ff     	sub	sp, sp, #0x70
   24bfc: a9017bfd     	stp	x29, x30, [sp, #0x10]
   24c00: a9026ffc     	stp	x28, x27, [sp, #0x20]
   24c04: a90367fa     	stp	x26, x25, [sp, #0x30]
   24c08: a9045ff8     	stp	x24, x23, [sp, #0x40]
   24c0c: a90557f6     	stp	x22, x21, [sp, #0x50]
   24c10: a9064ff4     	stp	x20, x19, [sp, #0x60]
   24c14: 910043fd     	add	x29, sp, #0x10
   24c18: 90000014     	adrp	x20, 0x24000 <ghost_debug_read+0xdc>
		0000000000024c18:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24c1c: 12003c28     	and	w8, w1, #0xffff
   24c20: 721f383f     	tst	w1, #0xfffe
   24c24: f940029b     	ldr	x27, [x20]
		0000000000024c24:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24c28: 12003c4a     	and	w10, w2, #0xffff
   24c2c: 1a9f1508     	csinc	w8, w8, wzr, ne
   24c30: 721f385f     	tst	w2, #0xfffe
   24c34: b9401369     	ldr	w9, [x27, #0x10]
   24c38: 1a9f154a     	csinc	w10, w10, wzr, ne
   24c3c: 7100013f     	cmp	w9, #0x0
   24c40: 1a8a0053     	csel	w19, w2, w10, eq
   24c44: 1a880035     	csel	w21, w1, w8, eq
   24c48: 12003c62     	and	w2, w3, #0xffff
   24c4c: b4001340     	cbz	x0, 0x24eb4 <tpd_touch_press+0x2c0>
   24c50: 7100285f     	cmp	w2, #0xa
   24c54: 54001302     	b.hs	0x24eb4 <tpd_touch_press+0x2c0>
   24c58: 2a0303f7     	mov	w23, w3
   24c5c: aa0003f8     	mov	x24, x0
   24c60: 2a0403f9     	mov	w25, w4
   24c64: 92403ee8     	and	x8, x23, #0xffff
   24c68: 2a0503f6     	mov	w22, w5
   24c6c: b81fc3a2     	stur	w2, [x29, #-0x4]
   24c70: 8b233108     	add	x8, x8, w3, uxth #4
   24c74: d37df11a     	lsl	x26, x8, #3
   24c78: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024c78:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   24c7c: 91000108     	add	x8, x8, #0x0
		0000000000024c7c:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   24c80: 8b1a011c     	add	x28, x8, x26
   24c84: 39414388     	ldrb	w8, [x28, #0x50]
   24c88: f9004380     	str	x0, [x28, #0x80]
   24c8c: 7100051f     	cmp	w8, #0x1
   24c90: 54000721     	b.ne	0x24d74 <tpd_touch_press+0x180>
   24c94: 39409768     	ldrb	w8, [x27, #0x25]
   24c98: 34001da8     	cbz	w8, 0x2504c <tpd_touch_press+0x458>
   24c9c: 39416788     	ldrb	w8, [x28, #0x59]
   24ca0: 37001d68     	tbnz	w8, #0x0, 0x2504c <tpd_touch_press+0x458>
   24ca4: b9401368     	ldr	w8, [x27, #0x10]
   24ca8: 321f0108     	orr	w8, w8, #0x2
   24cac: 71000d1f     	cmp	w8, #0x3
   24cb0: 54001ce0     	b.eq	0x2504c <tpd_touch_press+0x458>
   24cb4: 79488768     	ldrh	w8, [x27, #0x442]
   24cb8: 12003eab     	and	w11, w21, #0xffff
   24cbc: 53027d09     	lsr	w9, w8, #2
   24cc0: 6b0b013f     	cmp	w9, w11
   24cc4: 54000102     	b.hs	0x24ce4 <tpd_touch_press+0xf0>
   24cc8: 0b08050a     	add	w10, w8, w8, lsl #1
   24ccc: 6b4a097f     	cmp	w11, w10, lsr #2
   24cd0: 540000a2     	b.hs	0x24ce4 <tpd_touch_press+0xf0>
   24cd4: 52800028     	mov	w8, #0x1                // =1
   24cd8: 39016788     	strb	w8, [x28, #0x59]
   24cdc: 79488768     	ldrh	w8, [x27, #0x442]
   24ce0: 53027d09     	lsr	w9, w8, #2
   24ce4: b9401b8a     	ldr	w10, [x28, #0x18]
   24ce8: 6b09015f     	cmp	w10, w9
   24cec: 5400008b     	b.lt	0x24cfc <tpd_touch_press+0x108>
   24cf0: 0b080509     	add	w9, w8, w8, lsl #1
   24cf4: 6b49095f     	cmp	w10, w9, lsr #2
   24cf8: 54001aa9     	b.ls	0x2504c <tpd_touch_press+0x458>
   24cfc: 39409769     	ldrb	w9, [x27, #0x25]
   24d00: 340032a9     	cbz	w9, 0x25354 <tpd_touch_press+0x760>
   24d04: b9401369     	ldr	w9, [x27, #0x10]
   24d08: 321f0129     	orr	w9, w9, #0x2
   24d0c: 71000d3f     	cmp	w9, #0x3
   24d10: 54003141     	b.ne	0x25338 <tpd_touch_press+0x744>
   24d14: 3940d369     	ldrb	w9, [x27, #0x34]
   24d18: 6b35213f     	cmp	w9, w21, uxth
   24d1c: 54003208     	b.hi	0x2535c <tpd_touch_press+0x768>
   24d20: 3940d769     	ldrb	w9, [x27, #0x35]
   24d24: 4b090109     	sub	w9, w8, w9
   24d28: 6b0b013f     	cmp	w9, w11
   24d2c: 5400318b     	b.lt	0x2535c <tpd_touch_press+0x768>
   24d30: 3940db69     	ldrb	w9, [x27, #0x36]
   24d34: 6b33213f     	cmp	w9, w19, uxth
   24d38: 54003128     	b.hi	0x2535c <tpd_touch_press+0x768>
   24d3c: 79488b69     	ldrh	w9, [x27, #0x444]
   24d40: 3940df6a     	ldrb	w10, [x27, #0x37]
   24d44: 4b0a0129     	sub	w9, w9, w10
   24d48: 6b33213f     	cmp	w9, w19, uxth
   24d4c: 5400308b     	b.lt	0x2535c <tpd_touch_press+0x768>
   24d50: 3940e369     	ldrb	w9, [x27, #0x38]
   24d54: 34003009     	cbz	w9, 0x25354 <tpd_touch_press+0x760>
   24d58: 79405f69     	ldrh	w9, [x27, #0x2e]
   24d5c: 6b33213f     	cmp	w9, w19, uxth
   24d60: 54002fa2     	b.hs	0x25354 <tpd_touch_press+0x760>
   24d64: 79405b69     	ldrh	w9, [x27, #0x2c]
   24d68: 6b35213f     	cmp	w9, w21, uxth
   24d6c: 54002ee9     	b.ls	0x25348 <tpd_touch_press+0x754>
   24d70: 1400017b     	b	0x2535c <tpd_touch_press+0x768>
   24d74: 2a1503e0     	mov	w0, w21
   24d78: 2a1303e1     	mov	w1, w19
   24d7c: 940006c4     	bl	0x2688c <syna_ts_check_dt+0x1450>
		0000000000024d7c:  R_AARCH64_CALL26	point_is_in_limit_area
   24d80: 36000520     	tbz	w0, #0x0, 0x24e24 <tpd_touch_press+0x230>
   24d84: 2a1503e0     	mov	w0, w21
   24d88: 2a1303e1     	mov	w1, w19
   24d8c: 940006c0     	bl	0x2688c <syna_ts_check_dt+0x1450>
		0000000000024d8c:  R_AARCH64_CALL26	point_is_in_limit_area
   24d90: 37001220     	tbnz	w0, #0x0, 0x24fd4 <tpd_touch_press+0x3e0>
   24d94: f9400288     	ldr	x8, [x20]
		0000000000024d94:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24d98: 39409509     	ldrb	w9, [x8, #0x25]
   24d9c: 340011c9     	cbz	w9, 0x24fd4 <tpd_touch_press+0x3e0>
   24da0: b9401109     	ldr	w9, [x8, #0x10]
   24da4: 321f0129     	orr	w9, w9, #0x2
   24da8: 71000d3f     	cmp	w9, #0x3
   24dac: 54000a21     	b.ne	0x24ef0 <tpd_touch_press+0x2fc>
   24db0: 3940d10a     	ldrb	w10, [x8, #0x34]
   24db4: 12003ea9     	and	w9, w21, #0xffff
   24db8: 6b0a013f     	cmp	w9, w10
   24dbc: 54000aa3     	b.lo	0x24f10 <tpd_touch_press+0x31c>
   24dc0: 7948850a     	ldrh	w10, [x8, #0x442]
   24dc4: 3940d50b     	ldrb	w11, [x8, #0x35]
   24dc8: 4b0b014b     	sub	w11, w10, w11
   24dcc: 6b09017f     	cmp	w11, w9
   24dd0: 54000a0b     	b.lt	0x24f10 <tpd_touch_press+0x31c>
   24dd4: 3940d90b     	ldrb	w11, [x8, #0x36]
   24dd8: 6b33217f     	cmp	w11, w19, uxth
   24ddc: 540009a8     	b.hi	0x24f10 <tpd_touch_press+0x31c>
   24de0: 7948890b     	ldrh	w11, [x8, #0x444]
   24de4: 3940dd0c     	ldrb	w12, [x8, #0x37]
   24de8: 4b0c016b     	sub	w11, w11, w12
   24dec: 6b33217f     	cmp	w11, w19, uxth
   24df0: 5400090b     	b.lt	0x24f10 <tpd_touch_press+0x31c>
   24df4: 3940e10b     	ldrb	w11, [x8, #0x38]
   24df8: 34000eeb     	cbz	w11, 0x24fd4 <tpd_touch_press+0x3e0>
   24dfc: 79405d0b     	ldrh	w11, [x8, #0x2e]
   24e00: 6b33217f     	cmp	w11, w19, uxth
   24e04: 54000e82     	b.hs	0x24fd4 <tpd_touch_press+0x3e0>
   24e08: 79405908     	ldrh	w8, [x8, #0x2c]
   24e0c: 6b35211f     	cmp	w8, w21, uxth
   24e10: 54000808     	b.hi	0x24f10 <tpd_touch_press+0x31c>
   24e14: 4b080148     	sub	w8, w10, w8
   24e18: 6b09011f     	cmp	w8, w9
   24e1c: 54000dca     	b.ge	0x24fd4 <tpd_touch_press+0x3e0>
   24e20: 1400003c     	b	0x24f10 <tpd_touch_press+0x31c>
   24e24: f9400288     	ldr	x8, [x20]
		0000000000024e24:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24e28: 39409509     	ldrb	w9, [x8, #0x25]
   24e2c: 34000fa9     	cbz	w9, 0x25020 <tpd_touch_press+0x42c>
   24e30: b9401109     	ldr	w9, [x8, #0x10]
   24e34: 321f0129     	orr	w9, w9, #0x2
   24e38: 71000d3f     	cmp	w9, #0x3
   24e3c: 54000481     	b.ne	0x24ecc <tpd_touch_press+0x2d8>
   24e40: 3940d10a     	ldrb	w10, [x8, #0x34]
   24e44: 12003ea9     	and	w9, w21, #0xffff
   24e48: 6b0a013f     	cmp	w9, w10
   24e4c: 54fff9c3     	b.lo	0x24d84 <tpd_touch_press+0x190>
   24e50: 7948850a     	ldrh	w10, [x8, #0x442]
   24e54: 3940d50b     	ldrb	w11, [x8, #0x35]
   24e58: 4b0b014b     	sub	w11, w10, w11
   24e5c: 6b09017f     	cmp	w11, w9
   24e60: 54fff92b     	b.lt	0x24d84 <tpd_touch_press+0x190>
   24e64: 3940d90b     	ldrb	w11, [x8, #0x36]
   24e68: 6b33217f     	cmp	w11, w19, uxth
   24e6c: 54fff8c8     	b.hi	0x24d84 <tpd_touch_press+0x190>
   24e70: 7948890b     	ldrh	w11, [x8, #0x444]
   24e74: 3940dd0c     	ldrb	w12, [x8, #0x37]
   24e78: 4b0c016b     	sub	w11, w11, w12
   24e7c: 6b33217f     	cmp	w11, w19, uxth
   24e80: 54fff82b     	b.lt	0x24d84 <tpd_touch_press+0x190>
   24e84: 3940e10b     	ldrb	w11, [x8, #0x38]
   24e88: 34000ccb     	cbz	w11, 0x25020 <tpd_touch_press+0x42c>
   24e8c: 79405d0b     	ldrh	w11, [x8, #0x2e]
   24e90: 6b33217f     	cmp	w11, w19, uxth
   24e94: 54000c62     	b.hs	0x25020 <tpd_touch_press+0x42c>
   24e98: 79405908     	ldrh	w8, [x8, #0x2c]
   24e9c: 6b35211f     	cmp	w8, w21, uxth
   24ea0: 54fff728     	b.hi	0x24d84 <tpd_touch_press+0x190>
   24ea4: 4b080148     	sub	w8, w10, w8
   24ea8: 6b09011f     	cmp	w8, w9
   24eac: 54000baa     	b.ge	0x25020 <tpd_touch_press+0x42c>
   24eb0: 17ffffb5     	b	0x24d84 <tpd_touch_press+0x190>
   24eb4: 90000000     	adrp	x0, 0x24000 <ghost_debug_read+0xdc>
		0000000000024eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1addc
   24eb8: 91000000     	add	x0, x0, #0x0
		0000000000024eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1addc
   24ebc: 90000001     	adrp	x1, 0x24000 <ghost_debug_read+0xdc>
		0000000000024ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15480
   24ec0: 91000021     	add	x1, x1, #0x0
		0000000000024ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15480
   24ec4: 94000000     	bl	0x24ec4 <tpd_touch_press+0x2d0>
		0000000000024ec4:  R_AARCH64_CALL26	_printk
   24ec8: 140000b2     	b	0x25190 <tpd_touch_press+0x59c>
   24ecc: 3940d109     	ldrb	w9, [x8, #0x34]
   24ed0: 6b35213f     	cmp	w9, w21, uxth
   24ed4: 54fff588     	b.hi	0x24d84 <tpd_touch_press+0x190>
   24ed8: 79488509     	ldrh	w9, [x8, #0x442]
   24edc: 3940d508     	ldrb	w8, [x8, #0x35]
   24ee0: 4b080128     	sub	w8, w9, w8
   24ee4: 6b35211f     	cmp	w8, w21, uxth
   24ee8: 54fff4eb     	b.lt	0x24d84 <tpd_touch_press+0x190>
   24eec: 1400004d     	b	0x25020 <tpd_touch_press+0x42c>
   24ef0: 3940d109     	ldrb	w9, [x8, #0x34]
   24ef4: 6b35213f     	cmp	w9, w21, uxth
   24ef8: 540000c8     	b.hi	0x24f10 <tpd_touch_press+0x31c>
   24efc: 79488509     	ldrh	w9, [x8, #0x442]
   24f00: 3940d508     	ldrb	w8, [x8, #0x35]
   24f04: 4b080128     	sub	w8, w9, w8
   24f08: 6b35211f     	cmp	w8, w21, uxth
   24f0c: 5400064a     	b.ge	0x24fd4 <tpd_touch_press+0x3e0>
   24f10: 39415788     	ldrb	w8, [x28, #0x55]
   24f14: 360025a8     	tbz	w8, #0x0, 0x253c8 <tpd_touch_press+0x7d4>
   24f18: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f18:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   24f1c: 39400108     	ldrb	w8, [x8]
		0000000000024f1c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   24f20: 370003a8     	tbnz	w8, #0x0, 0x24f94 <tpd_touch_press+0x3a0>
   24f24: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f24:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   24f28: 39400108     	ldrb	w8, [x8]
		0000000000024f28:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   24f2c: 37000348     	tbnz	w8, #0x0, 0x24f94 <tpd_touch_press+0x3a0>
   24f30: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f30:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   24f34: 39400108     	ldrb	w8, [x8]
		0000000000024f34:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   24f38: 370002e8     	tbnz	w8, #0x0, 0x24f94 <tpd_touch_press+0x3a0>
   24f3c: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f3c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   24f40: 39400108     	ldrb	w8, [x8]
		0000000000024f40:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   24f44: 37000288     	tbnz	w8, #0x0, 0x24f94 <tpd_touch_press+0x3a0>
   24f48: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f48:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   24f4c: 39400108     	ldrb	w8, [x8]
		0000000000024f4c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   24f50: 37000228     	tbnz	w8, #0x0, 0x24f94 <tpd_touch_press+0x3a0>
   24f54: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f54:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   24f58: 39400108     	ldrb	w8, [x8]
		0000000000024f58:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   24f5c: 370001c8     	tbnz	w8, #0x0, 0x24f94 <tpd_touch_press+0x3a0>
   24f60: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f60:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   24f64: 39400108     	ldrb	w8, [x8]
		0000000000024f64:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   24f68: 37000168     	tbnz	w8, #0x0, 0x24f94 <tpd_touch_press+0x3a0>
   24f6c: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f6c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   24f70: 39400108     	ldrb	w8, [x8]
		0000000000024f70:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   24f74: 37000108     	tbnz	w8, #0x0, 0x24f94 <tpd_touch_press+0x3a0>
   24f78: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f78:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   24f7c: 39400108     	ldrb	w8, [x8]
		0000000000024f7c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   24f80: 370000a8     	tbnz	w8, #0x0, 0x24f94 <tpd_touch_press+0x3a0>
   24f84: 90000008     	adrp	x8, 0x24000 <ghost_debug_read+0xdc>
		0000000000024f84:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   24f88: 39400108     	ldrb	w8, [x8]
		0000000000024f88:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   24f8c: 7100051f     	cmp	w8, #0x1
   24f90: 54000261     	b.ne	0x24fdc <tpd_touch_press+0x3e8>
   24f94: 52800028     	mov	w8, #0x1                // =1
   24f98: 39015b88     	strb	w8, [x28, #0x56]
   24f9c: 39414788     	ldrb	w8, [x28, #0x51]
   24fa0: 37000228     	tbnz	w8, #0x0, 0x24fe4 <tpd_touch_press+0x3f0>
   24fa4: b27e0348     	orr	x8, x26, #0x4
   24fa8: 12003ea9     	and	w9, w21, #0xffff
   24fac: f115411f     	cmp	x8, #0x550
   24fb0: b9000389     	str	w9, [x28]
   24fb4: 54001328     	b.hi	0x25218 <tpd_touch_press+0x624>
   24fb8: 12003e68     	and	w8, w19, #0xffff
   24fbc: 39002399     	strb	w25, [x28, #0x8]
   24fc0: b9000788     	str	w8, [x28, #0x4]
   24fc4: 52800028     	mov	w8, #0x1                // =1
   24fc8: 39002796     	strb	w22, [x28, #0x9]
   24fcc: 39014788     	strb	w8, [x28, #0x51]
   24fd0: 14000070     	b	0x25190 <tpd_touch_press+0x59c>
   24fd4: 39415788     	ldrb	w8, [x28, #0x55]
   24fd8: 360014a8     	tbz	w8, #0x0, 0x2526c <tpd_touch_press+0x678>
   24fdc: 39414788     	ldrb	w8, [x28, #0x51]
   24fe0: 3607fe28     	tbz	w8, #0x0, 0x24fa4 <tpd_touch_press+0x3b0>
   24fe4: b9400388     	ldr	w8, [x28]
   24fe8: 4b352108     	sub	w8, w8, w21, uxth
   24fec: 7100011f     	cmp	w8, #0x0
   24ff0: 5a885508     	cneg	w8, w8, mi
   24ff4: 7101911f     	cmp	w8, #0x64
   24ff8: 5400014c     	b.gt	0x25020 <tpd_touch_press+0x42c>
   24ffc: b27e0348     	orr	x8, x26, #0x4
   25000: f115411f     	cmp	x8, #0x550
   25004: 540010a8     	b.hi	0x25218 <tpd_touch_press+0x624>
   25008: b9400788     	ldr	w8, [x28, #0x4]
   2500c: 4b332108     	sub	w8, w8, w19, uxth
   25010: 7100011f     	cmp	w8, #0x0
   25014: 5a885508     	cneg	w8, w8, mi
   25018: 7101951f     	cmp	w8, #0x65
   2501c: 54000bab     	b.lt	0x25190 <tpd_touch_press+0x59c>
   25020: 39414788     	ldrb	w8, [x28, #0x51]
   25024: 36000128     	tbz	w8, #0x0, 0x25048 <tpd_touch_press+0x454>
   25028: 12003ea8     	and	w8, w21, #0xffff
   2502c: 12003e69     	and	w9, w19, #0xffff
   25030: 39005399     	strb	w25, [x28, #0x14]
   25034: 2901a788     	stp	w8, w9, [x28, #0xc]
   25038: 52800028     	mov	w8, #0x1                // =1
   2503c: 39005796     	strb	w22, [x28, #0x15]
   25040: 39014b88     	strb	w8, [x28, #0x52]
   25044: 14000002     	b	0x2504c <tpd_touch_press+0x458>
   25048: 39014b9f     	strb	wzr, [x28, #0x52]
   2504c: 39414b88     	ldrb	w8, [x28, #0x52]
   25050: 52800029     	mov	w9, #0x1                // =1
   25054: 39014389     	strb	w9, [x28, #0x50]
   25058: 7100051f     	cmp	w8, #0x1
   2505c: 54000361     	b.ne	0x250c8 <tpd_touch_press+0x4d4>
   25060: 39414f88     	ldrb	w8, [x28, #0x53]
   25064: b27e0354     	orr	x20, x26, #0x4
   25068: 2a1603fa     	mov	w26, w22
   2506c: 36000a48     	tbz	w8, #0x0, 0x251b4 <tpd_touch_press+0x5c0>
   25070: f115429f     	cmp	x20, #0x550
   25074: 54000d28     	b.hi	0x25218 <tpd_touch_press+0x624>
   25078: 29400b81     	ldp	w1, w2, [x28]
   2507c: aa1803e0     	mov	x0, x24
   25080: 2a1703e3     	mov	w3, w23
   25084: 2a1903e4     	mov	w4, w25
   25088: 2a1a03e5     	mov	w5, w26
   2508c: 94000121     	bl	0x25510 <syna_ts_check_dt+0xd4>
		000000000002508c:  R_AARCH64_CALL26	tpd_touch_report
   25090: aa1803e0     	mov	x0, x24
   25094: 2a1f03e1     	mov	w1, wzr
   25098: 2a1f03e2     	mov	w2, wzr
   2509c: 2a1f03e3     	mov	w3, wzr
   250a0: 94000000     	bl	0x250a0 <tpd_touch_press+0x4ac>
		00000000000250a0:  R_AARCH64_CALL26	input_event
   250a4: 52807d00     	mov	w0, #0x3e8              // =1000
   250a8: 5280bb81     	mov	w1, #0x5dc              // =1500
   250ac: 52800042     	mov	w2, #0x2                // =2
   250b0: 94000000     	bl	0x250b0 <tpd_touch_press+0x4bc>
		00000000000250b0:  R_AARCH64_CALL26	usleep_range_state
   250b4: 39414f88     	ldrb	w8, [x28, #0x53]
   250b8: 36000b28     	tbz	w8, #0x0, 0x2521c <tpd_touch_press+0x628>
   250bc: 29418b81     	ldp	w1, w2, [x28, #0xc]
   250c0: aa1803e0     	mov	x0, x24
   250c4: 1400002b     	b	0x25170 <tpd_touch_press+0x57c>
   250c8: 39409369     	ldrb	w9, [x27, #0x24]
   250cc: 39414f88     	ldrb	w8, [x28, #0x53]
   250d0: 2a1603fa     	mov	w26, w22
   250d4: 34000469     	cbz	w9, 0x25160 <tpd_touch_press+0x56c>
   250d8: 36000e08     	tbz	w8, #0x0, 0x25298 <tpd_touch_press+0x6a4>
   250dc: 39415f88     	ldrb	w8, [x28, #0x57]
   250e0: 7100051f     	cmp	w8, #0x1
   250e4: 54000401     	b.ne	0x25164 <tpd_touch_press+0x570>
   250e8: 90000008     	adrp	x8, 0x25000 <tpd_touch_press+0x40c>
		00000000000250e8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   250ec: f9400108     	ldr	x8, [x8]
		00000000000250ec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   250f0: f9403389     	ldr	x9, [x28, #0x60]
   250f4: cb090100     	sub	x0, x8, x9
   250f8: 94000000     	bl	0x250f8 <tpd_touch_press+0x504>
		00000000000250f8:  R_AARCH64_CALL26	jiffies_to_msecs
   250fc: b9401b88     	ldr	w8, [x28, #0x18]
   25100: 4b352108     	sub	w8, w8, w21, uxth
   25104: 7100011f     	cmp	w8, #0x0
   25108: 5a885509     	cneg	w9, w8, mi
   2510c: 39409368     	ldrb	w8, [x27, #0x24]
   25110: 7101941f     	cmp	w0, #0x65
   25114: 54000042     	b.hs	0x2511c <tpd_touch_press+0x528>
   25118: 0b080508     	add	w8, w8, w8, lsl #1
   2511c: 6b08013f     	cmp	w9, w8
   25120: 540000ec     	b.gt	0x2513c <tpd_touch_press+0x548>
   25124: b9401f89     	ldr	w9, [x28, #0x1c]
   25128: 4b332129     	sub	w9, w9, w19, uxth
   2512c: 7100013f     	cmp	w9, #0x0
   25130: 5a895529     	cneg	w9, w9, mi
   25134: 6b08013f     	cmp	w9, w8
   25138: 5400024d     	b.le	0x25180 <tpd_touch_press+0x58c>
   2513c: aa1803e0     	mov	x0, x24
   25140: 2a1503e1     	mov	w1, w21
   25144: 2a1303e2     	mov	w2, w19
   25148: 2a1703e3     	mov	w3, w23
   2514c: 2a1903e4     	mov	w4, w25
   25150: 2a1a03e5     	mov	w5, w26
   25154: 940000ef     	bl	0x25510 <syna_ts_check_dt+0xd4>
		0000000000025154:  R_AARCH64_CALL26	tpd_touch_report
   25158: 39015f9f     	strb	wzr, [x28, #0x57]
   2515c: 14000009     	b	0x25180 <tpd_touch_press+0x58c>
   25160: 36000c08     	tbz	w8, #0x0, 0x252e0 <tpd_touch_press+0x6ec>
   25164: aa1803e0     	mov	x0, x24
   25168: 2a1503e1     	mov	w1, w21
   2516c: 2a1303e2     	mov	w2, w19
   25170: 2a1703e3     	mov	w3, w23
   25174: 2a1903e4     	mov	w4, w25
   25178: 2a1a03e5     	mov	w5, w26
   2517c: 940000e5     	bl	0x25510 <syna_ts_check_dt+0xd4>
		000000000002517c:  R_AARCH64_CALL26	tpd_touch_report
   25180: 12003ea8     	and	w8, w21, #0xffff
   25184: 12003e69     	and	w9, w19, #0xffff
   25188: 39014b9f     	strb	wzr, [x28, #0x52]
   2518c: 2904a788     	stp	w8, w9, [x28, #0x24]
   25190: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   25194: a94557f6     	ldp	x22, x21, [sp, #0x50]
   25198: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   2519c: a94367fa     	ldp	x26, x25, [sp, #0x30]
   251a0: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   251a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   251a8: 9101c3ff     	add	sp, sp, #0x70
   251ac: d50323bf     	autiasp
   251b0: d65f03c0     	ret
   251b4: 52800028     	mov	w8, #0x1                // =1
   251b8: 90000009     	adrp	x9, 0x25000 <tpd_touch_press+0x40c>
		00000000000251b8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   251bc: f115429f     	cmp	x20, #0x550
   251c0: 39014f88     	strb	w8, [x28, #0x53]
   251c4: f9400129     	ldr	x9, [x9]
		00000000000251c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251c8: 39016b88     	strb	w8, [x28, #0x5a]
   251cc: f9003389     	str	x9, [x28, #0x60]
   251d0: b9448f68     	ldr	w8, [x27, #0x48c]
   251d4: 11000508     	add	w8, w8, #0x1
   251d8: b9048f68     	str	w8, [x27, #0x48c]
   251dc: b9400388     	ldr	w8, [x28]
   251e0: b9001b88     	str	w8, [x28, #0x18]
   251e4: 540001a8     	b.hi	0x25218 <tpd_touch_press+0x624>
   251e8: b85fc3b6     	ldur	w22, [x29, #-0x4]
   251ec: b9400788     	ldr	w8, [x28, #0x4]
   251f0: 2a1603e0     	mov	w0, w22
   251f4: b9001f88     	str	w8, [x28, #0x1c]
   251f8: 94000090     	bl	0x25438 <tpd_touch_press+0x844>
		00000000000251f8:  R_AARCH64_CALL26	point_report_reset
   251fc: 29400f82     	ldp	w2, w3, [x28]
   25200: 90000000     	adrp	x0, 0x25000 <tpd_touch_press+0x40c>
		0000000000025200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18614
   25204: 91000000     	add	x0, x0, #0x0
		0000000000025204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18614
   25208: 2a1603e1     	mov	w1, w22
   2520c: 94000000     	bl	0x2520c <tpd_touch_press+0x618>
		000000000002520c:  R_AARCH64_CALL26	_printk
   25210: f115429f     	cmp	x20, #0x550
   25214: 54fff329     	b.ls	0x25078 <tpd_touch_press+0x484>
   25218: d4200020     	brk	#0x1
   2521c: 52800028     	mov	w8, #0x1                // =1
   25220: 90000009     	adrp	x9, 0x25000 <tpd_touch_press+0x40c>
		0000000000025220:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   25224: 39014f88     	strb	w8, [x28, #0x53]
   25228: f9400129     	ldr	x9, [x9]
		0000000000025228:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2522c: 39016b88     	strb	w8, [x28, #0x5a]
   25230: b85fc3b4     	ldur	w20, [x29, #-0x4]
   25234: f9003389     	str	x9, [x28, #0x60]
   25238: 2a1403e0     	mov	w0, w20
   2523c: b9448f68     	ldr	w8, [x27, #0x48c]
   25240: 11000508     	add	w8, w8, #0x1
   25244: b9048f68     	str	w8, [x27, #0x48c]
   25248: 29402788     	ldp	w8, w9, [x28]
   2524c: 29032788     	stp	w8, w9, [x28, #0x18]
   25250: 9400007a     	bl	0x25438 <tpd_touch_press+0x844>
		0000000000025250:  R_AARCH64_CALL26	point_report_reset
   25254: 29418f82     	ldp	w2, w3, [x28, #0xc]
   25258: 90000000     	adrp	x0, 0x25000 <tpd_touch_press+0x40c>
		0000000000025258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18614
   2525c: 91000000     	add	x0, x0, #0x0
		000000000002525c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18614
   25260: 2a1403e1     	mov	w1, w20
   25264: 94000000     	bl	0x25264 <tpd_touch_press+0x670>
		0000000000025264:  R_AARCH64_CALL26	_printk
   25268: 17ffff95     	b	0x250bc <tpd_touch_press+0x4c8>
   2526c: b85fc3a1     	ldur	w1, [x29, #-0x4]
   25270: 52800028     	mov	w8, #0x1                // =1
   25274: 90000000     	adrp	x0, 0x25000 <tpd_touch_press+0x40c>
		0000000000025274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16dfa
   25278: 91000000     	add	x0, x0, #0x0
		0000000000025278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16dfa
   2527c: 12003ea2     	and	w2, w21, #0xffff
   25280: 12003e63     	and	w3, w19, #0xffff
   25284: 39015788     	strb	w8, [x28, #0x55]
   25288: 94000000     	bl	0x25288 <tpd_touch_press+0x694>
		0000000000025288:  R_AARCH64_CALL26	_printk
   2528c: 39414788     	ldrb	w8, [x28, #0x51]
   25290: 3707eaa8     	tbnz	w8, #0x0, 0x24fe4 <tpd_touch_press+0x3f0>
   25294: 17ffff44     	b	0x24fa4 <tpd_touch_press+0x3b0>
   25298: 52800034     	mov	w20, #0x1               // =1
   2529c: b85fc3b6     	ldur	w22, [x29, #-0x4]
   252a0: 39014f94     	strb	w20, [x28, #0x53]
   252a4: b9448f68     	ldr	w8, [x27, #0x48c]
   252a8: 2a1603e0     	mov	w0, w22
   252ac: 11000508     	add	w8, w8, #0x1
   252b0: b9048f68     	str	w8, [x27, #0x48c]
   252b4: 94000061     	bl	0x25438 <tpd_touch_press+0x844>
		00000000000252b4:  R_AARCH64_CALL26	point_report_reset
   252b8: 12003ea2     	and	w2, w21, #0xffff
   252bc: 12003e63     	and	w3, w19, #0xffff
   252c0: 90000008     	adrp	x8, 0x25000 <tpd_touch_press+0x40c>
		00000000000252c0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   252c4: 29030f82     	stp	w2, w3, [x28, #0x18]
   252c8: 90000000     	adrp	x0, 0x25000 <tpd_touch_press+0x40c>
		00000000000252c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d170
   252cc: 91000000     	add	x0, x0, #0x0
		00000000000252cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d170
   252d0: f9400108     	ldr	x8, [x8]
		00000000000252d0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   252d4: 39015f94     	strb	w20, [x28, #0x57]
   252d8: 2a1603e1     	mov	w1, w22
   252dc: 14000014     	b	0x2532c <tpd_touch_press+0x738>
   252e0: 52800028     	mov	w8, #0x1                // =1
   252e4: b85fc3b4     	ldur	w20, [x29, #-0x4]
   252e8: 12003eba     	and	w26, w21, #0xffff
   252ec: 39014f88     	strb	w8, [x28, #0x53]
   252f0: b9448f68     	ldr	w8, [x27, #0x48c]
   252f4: 2a1403e0     	mov	w0, w20
   252f8: 11000508     	add	w8, w8, #0x1
   252fc: b9048f68     	str	w8, [x27, #0x48c]
   25300: 12003e7b     	and	w27, w19, #0xffff
   25304: 29036f9a     	stp	w26, w27, [x28, #0x18]
   25308: 9400004c     	bl	0x25438 <tpd_touch_press+0x844>
		0000000000025308:  R_AARCH64_CALL26	point_report_reset
   2530c: 90000008     	adrp	x8, 0x25000 <tpd_touch_press+0x40c>
		000000000002530c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   25310: 90000000     	adrp	x0, 0x25000 <tpd_touch_press+0x40c>
		0000000000025310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3ec
   25314: 91000000     	add	x0, x0, #0x0
		0000000000025314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3ec
   25318: f9400108     	ldr	x8, [x8]
		0000000000025318:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2531c: 2a1403e1     	mov	w1, w20
   25320: 2a1a03e2     	mov	w2, w26
   25324: 2a1603fa     	mov	w26, w22
   25328: 2a1b03e3     	mov	w3, w27
   2532c: f9003388     	str	x8, [x28, #0x60]
   25330: 94000000     	bl	0x25330 <tpd_touch_press+0x73c>
		0000000000025330:  R_AARCH64_CALL26	_printk
   25334: 17ffff8c     	b	0x25164 <tpd_touch_press+0x570>
   25338: 3940d369     	ldrb	w9, [x27, #0x34]
   2533c: 6b35213f     	cmp	w9, w21, uxth
   25340: 540000e8     	b.hi	0x2535c <tpd_touch_press+0x768>
   25344: 3940d769     	ldrb	w9, [x27, #0x35]
   25348: 4b090108     	sub	w8, w8, w9
   2534c: 6b0b011f     	cmp	w8, w11
   25350: 5400006b     	b.lt	0x2535c <tpd_touch_press+0x768>
   25354: 3901639f     	strb	wzr, [x28, #0x58]
   25358: 17ffff3d     	b	0x2504c <tpd_touch_press+0x458>
   2535c: 39416388     	ldrb	w8, [x28, #0x58]
   25360: 7100051f     	cmp	w8, #0x1
   25364: 54000081     	b.ne	0x25374 <tpd_touch_press+0x780>
   25368: f9403788     	ldr	x8, [x28, #0x68]
   2536c: 2a0b03f4     	mov	w20, w11
   25370: 14000009     	b	0x25394 <tpd_touch_press+0x7a0>
   25374: 12003e68     	and	w8, w19, #0xffff
   25378: 52800029     	mov	w9, #0x1                // =1
   2537c: 2a0b03f4     	mov	w20, w11
   25380: 2906238b     	stp	w11, w8, [x28, #0x30]
   25384: 90000008     	adrp	x8, 0x25000 <tpd_touch_press+0x40c>
		0000000000025384:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   25388: 39016389     	strb	w9, [x28, #0x58]
   2538c: f9400108     	ldr	x8, [x8]
		000000000002538c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25390: f9003788     	str	x8, [x28, #0x68]
   25394: 90000009     	adrp	x9, 0x25000 <tpd_touch_press+0x40c>
		0000000000025394:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   25398: f9400129     	ldr	x9, [x9]
		0000000000025398:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2539c: cb080120     	sub	x0, x9, x8
   253a0: 94000000     	bl	0x253a0 <tpd_touch_press+0x7ac>
		00000000000253a0:  R_AARCH64_CALL26	jiffies_to_msecs
   253a4: 710c841f     	cmp	w0, #0x321
   253a8: 54ffe523     	b.lo	0x2504c <tpd_touch_press+0x458>
   253ac: b9403388     	ldr	w8, [x28, #0x30]
   253b0: 6b140108     	subs	w8, w8, w20
   253b4: 5a885508     	cneg	w8, w8, mi
   253b8: 7100551f     	cmp	w8, #0x15
   253bc: 540001eb     	b.lt	0x253f8 <tpd_touch_press+0x804>
   253c0: 12003e68     	and	w8, w19, #0xffff
   253c4: 14000013     	b	0x25410 <tpd_touch_press+0x81c>
   253c8: 52800028     	mov	w8, #0x1                // =1
   253cc: 90000000     	adrp	x0, 0x25000 <tpd_touch_press+0x40c>
		00000000000253cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b468
   253d0: 91000000     	add	x0, x0, #0x0
		00000000000253d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b468
   253d4: 39015788     	strb	w8, [x28, #0x55]
   253d8: 90000008     	adrp	x8, 0x25000 <tpd_touch_press+0x40c>
		00000000000253d8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   253dc: 12003ea2     	and	w2, w21, #0xffff
   253e0: f9400108     	ldr	x8, [x8]
		00000000000253e0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   253e4: b85fc3a1     	ldur	w1, [x29, #-0x4]
   253e8: 12003e63     	and	w3, w19, #0xffff
   253ec: f9003b88     	str	x8, [x28, #0x70]
   253f0: 94000000     	bl	0x253f0 <tpd_touch_press+0x7fc>
		00000000000253f0:  R_AARCH64_CALL26	_printk
   253f4: 17fffec9     	b	0x24f18 <tpd_touch_press+0x324>
   253f8: b9403789     	ldr	w9, [x28, #0x34]
   253fc: 12003e68     	and	w8, w19, #0xffff
   25400: 6b080129     	subs	w9, w9, w8
   25404: 5a895529     	cneg	w9, w9, mi
   25408: 7100553f     	cmp	w9, #0x15
   2540c: 540000cb     	b.lt	0x25424 <tpd_touch_press+0x830>
   25410: 29062394     	stp	w20, w8, [x28, #0x30]
   25414: 90000008     	adrp	x8, 0x25000 <tpd_touch_press+0x40c>
		0000000000025414:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   25418: f9400108     	ldr	x8, [x8]
		0000000000025418:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2541c: f9003788     	str	x8, [x28, #0x68]
   25420: 17ffff0b     	b	0x2504c <tpd_touch_press+0x458>
   25424: f9404380     	ldr	x0, [x28, #0x80]
   25428: 2a1703e1     	mov	w1, w23
   2542c: 94000000     	bl	0x2542c <tpd_touch_press+0x838>
		000000000002542c:  R_AARCH64_CALL26	tpd_touch_release
   25430: 3901639f     	strb	wzr, [x28, #0x58]
   25434: 17ffff57     	b	0x25190 <tpd_touch_press+0x59c>
