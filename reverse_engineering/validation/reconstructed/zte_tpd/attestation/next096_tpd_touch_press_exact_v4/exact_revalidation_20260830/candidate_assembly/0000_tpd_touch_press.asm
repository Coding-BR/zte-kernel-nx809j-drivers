
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017ca0 <tpd_touch_press>:
   17ca0: d503233f     	paciasp
   17ca4: d101c3ff     	sub	sp, sp, #0x70
   17ca8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   17cac: a9026ffc     	stp	x28, x27, [sp, #0x20]
   17cb0: a90367fa     	stp	x26, x25, [sp, #0x30]
   17cb4: a9045ff8     	stp	x24, x23, [sp, #0x40]
   17cb8: a90557f6     	stp	x22, x21, [sp, #0x50]
   17cbc: a9064ff4     	stp	x20, x19, [sp, #0x60]
   17cc0: 910043fd     	add	x29, sp, #0x10
   17cc4: 90000014     	adrp	x20, 0x17000 <ghost_debug_read+0x30>
		0000000000017cc4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17cc8: 12003c28     	and	w8, w1, #0xffff
   17ccc: 721f383f     	tst	w1, #0xfffe
   17cd0: f940029b     	ldr	x27, [x20]
		0000000000017cd0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17cd4: 12003c4a     	and	w10, w2, #0xffff
   17cd8: 1a9f1508     	csinc	w8, w8, wzr, ne
   17cdc: 721f385f     	tst	w2, #0xfffe
   17ce0: b9401369     	ldr	w9, [x27, #0x10]
   17ce4: 1a9f154a     	csinc	w10, w10, wzr, ne
   17ce8: 7100013f     	cmp	w9, #0x0
   17cec: 1a8a0053     	csel	w19, w2, w10, eq
   17cf0: 1a880035     	csel	w21, w1, w8, eq
   17cf4: 12003c62     	and	w2, w3, #0xffff
   17cf8: b4001340     	cbz	x0, 0x17f60 <tpd_touch_press+0x2c0>
   17cfc: 7100285f     	cmp	w2, #0xa
   17d00: 54001302     	b.hs	0x17f60 <tpd_touch_press+0x2c0>
   17d04: 2a0303f7     	mov	w23, w3
   17d08: aa0003f8     	mov	x24, x0
   17d0c: 2a0403f9     	mov	w25, w4
   17d10: 92403ee8     	and	x8, x23, #0xffff
   17d14: 2a0503f6     	mov	w22, w5
   17d18: b81fc3a2     	stur	w2, [x29, #-0x4]
   17d1c: 8b233108     	add	x8, x8, w3, uxth #4
   17d20: d37df11a     	lsl	x26, x8, #3
   17d24: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017d24:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   17d28: 91000108     	add	x8, x8, #0x0
		0000000000017d28:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   17d2c: 8b1a011c     	add	x28, x8, x26
   17d30: 39414388     	ldrb	w8, [x28, #0x50]
   17d34: f9004380     	str	x0, [x28, #0x80]
   17d38: 7100051f     	cmp	w8, #0x1
   17d3c: 54000721     	b.ne	0x17e20 <tpd_touch_press+0x180>
   17d40: 39409768     	ldrb	w8, [x27, #0x25]
   17d44: 34001da8     	cbz	w8, 0x180f8 <tpd_touch_press+0x458>
   17d48: 39416788     	ldrb	w8, [x28, #0x59]
   17d4c: 37001d68     	tbnz	w8, #0x0, 0x180f8 <tpd_touch_press+0x458>
   17d50: b9401368     	ldr	w8, [x27, #0x10]
   17d54: 321f0108     	orr	w8, w8, #0x2
   17d58: 71000d1f     	cmp	w8, #0x3
   17d5c: 54001ce0     	b.eq	0x180f8 <tpd_touch_press+0x458>
   17d60: 79488768     	ldrh	w8, [x27, #0x442]
   17d64: 12003eab     	and	w11, w21, #0xffff
   17d68: 53027d09     	lsr	w9, w8, #2
   17d6c: 6b0b013f     	cmp	w9, w11
   17d70: 54000102     	b.hs	0x17d90 <tpd_touch_press+0xf0>
   17d74: 0b08050a     	add	w10, w8, w8, lsl #1
   17d78: 6b4a097f     	cmp	w11, w10, lsr #2
   17d7c: 540000a2     	b.hs	0x17d90 <tpd_touch_press+0xf0>
   17d80: 52800028     	mov	w8, #0x1                // =1
   17d84: 39016788     	strb	w8, [x28, #0x59]
   17d88: 79488768     	ldrh	w8, [x27, #0x442]
   17d8c: 53027d09     	lsr	w9, w8, #2
   17d90: b9401b8a     	ldr	w10, [x28, #0x18]
   17d94: 6b09015f     	cmp	w10, w9
   17d98: 5400008b     	b.lt	0x17da8 <tpd_touch_press+0x108>
   17d9c: 0b080509     	add	w9, w8, w8, lsl #1
   17da0: 6b49095f     	cmp	w10, w9, lsr #2
   17da4: 54001aa9     	b.ls	0x180f8 <tpd_touch_press+0x458>
   17da8: 39409769     	ldrb	w9, [x27, #0x25]
   17dac: 340032a9     	cbz	w9, 0x18400 <tpd_touch_press+0x760>
   17db0: b9401369     	ldr	w9, [x27, #0x10]
   17db4: 321f0129     	orr	w9, w9, #0x2
   17db8: 71000d3f     	cmp	w9, #0x3
   17dbc: 54003141     	b.ne	0x183e4 <tpd_touch_press+0x744>
   17dc0: 3940d369     	ldrb	w9, [x27, #0x34]
   17dc4: 6b35213f     	cmp	w9, w21, uxth
   17dc8: 54003208     	b.hi	0x18408 <tpd_touch_press+0x768>
   17dcc: 3940d769     	ldrb	w9, [x27, #0x35]
   17dd0: 4b090109     	sub	w9, w8, w9
   17dd4: 6b0b013f     	cmp	w9, w11
   17dd8: 5400318b     	b.lt	0x18408 <tpd_touch_press+0x768>
   17ddc: 3940db69     	ldrb	w9, [x27, #0x36]
   17de0: 6b33213f     	cmp	w9, w19, uxth
   17de4: 54003128     	b.hi	0x18408 <tpd_touch_press+0x768>
   17de8: 79488b69     	ldrh	w9, [x27, #0x444]
   17dec: 3940df6a     	ldrb	w10, [x27, #0x37]
   17df0: 4b0a0129     	sub	w9, w9, w10
   17df4: 6b33213f     	cmp	w9, w19, uxth
   17df8: 5400308b     	b.lt	0x18408 <tpd_touch_press+0x768>
   17dfc: 3940e369     	ldrb	w9, [x27, #0x38]
   17e00: 34003009     	cbz	w9, 0x18400 <tpd_touch_press+0x760>
   17e04: 79405f69     	ldrh	w9, [x27, #0x2e]
   17e08: 6b33213f     	cmp	w9, w19, uxth
   17e0c: 54002fa2     	b.hs	0x18400 <tpd_touch_press+0x760>
   17e10: 79405b69     	ldrh	w9, [x27, #0x2c]
   17e14: 6b35213f     	cmp	w9, w21, uxth
   17e18: 54002ee9     	b.ls	0x183f4 <tpd_touch_press+0x754>
   17e1c: 1400017b     	b	0x18408 <tpd_touch_press+0x768>
   17e20: 2a1503e0     	mov	w0, w21
   17e24: 2a1303e1     	mov	w1, w19
   17e28: 940006c4     	bl	0x19938 <one_key_report+0x11c>
		0000000000017e28:  R_AARCH64_CALL26	point_is_in_limit_area
   17e2c: 36000520     	tbz	w0, #0x0, 0x17ed0 <tpd_touch_press+0x230>
   17e30: 2a1503e0     	mov	w0, w21
   17e34: 2a1303e1     	mov	w1, w19
   17e38: 940006c0     	bl	0x19938 <one_key_report+0x11c>
		0000000000017e38:  R_AARCH64_CALL26	point_is_in_limit_area
   17e3c: 37001220     	tbnz	w0, #0x0, 0x18080 <tpd_touch_press+0x3e0>
   17e40: f9400288     	ldr	x8, [x20]
		0000000000017e40:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17e44: 39409509     	ldrb	w9, [x8, #0x25]
   17e48: 340011c9     	cbz	w9, 0x18080 <tpd_touch_press+0x3e0>
   17e4c: b9401109     	ldr	w9, [x8, #0x10]
   17e50: 321f0129     	orr	w9, w9, #0x2
   17e54: 71000d3f     	cmp	w9, #0x3
   17e58: 54000a21     	b.ne	0x17f9c <tpd_touch_press+0x2fc>
   17e5c: 3940d10a     	ldrb	w10, [x8, #0x34]
   17e60: 12003ea9     	and	w9, w21, #0xffff
   17e64: 6b0a013f     	cmp	w9, w10
   17e68: 54000aa3     	b.lo	0x17fbc <tpd_touch_press+0x31c>
   17e6c: 7948850a     	ldrh	w10, [x8, #0x442]
   17e70: 3940d50b     	ldrb	w11, [x8, #0x35]
   17e74: 4b0b014b     	sub	w11, w10, w11
   17e78: 6b09017f     	cmp	w11, w9
   17e7c: 54000a0b     	b.lt	0x17fbc <tpd_touch_press+0x31c>
   17e80: 3940d90b     	ldrb	w11, [x8, #0x36]
   17e84: 6b33217f     	cmp	w11, w19, uxth
   17e88: 540009a8     	b.hi	0x17fbc <tpd_touch_press+0x31c>
   17e8c: 7948890b     	ldrh	w11, [x8, #0x444]
   17e90: 3940dd0c     	ldrb	w12, [x8, #0x37]
   17e94: 4b0c016b     	sub	w11, w11, w12
   17e98: 6b33217f     	cmp	w11, w19, uxth
   17e9c: 5400090b     	b.lt	0x17fbc <tpd_touch_press+0x31c>
   17ea0: 3940e10b     	ldrb	w11, [x8, #0x38]
   17ea4: 34000eeb     	cbz	w11, 0x18080 <tpd_touch_press+0x3e0>
   17ea8: 79405d0b     	ldrh	w11, [x8, #0x2e]
   17eac: 6b33217f     	cmp	w11, w19, uxth
   17eb0: 54000e82     	b.hs	0x18080 <tpd_touch_press+0x3e0>
   17eb4: 79405908     	ldrh	w8, [x8, #0x2c]
   17eb8: 6b35211f     	cmp	w8, w21, uxth
   17ebc: 54000808     	b.hi	0x17fbc <tpd_touch_press+0x31c>
   17ec0: 4b080148     	sub	w8, w10, w8
   17ec4: 6b09011f     	cmp	w8, w9
   17ec8: 54000dca     	b.ge	0x18080 <tpd_touch_press+0x3e0>
   17ecc: 1400003c     	b	0x17fbc <tpd_touch_press+0x31c>
   17ed0: f9400288     	ldr	x8, [x20]
		0000000000017ed0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17ed4: 39409509     	ldrb	w9, [x8, #0x25]
   17ed8: 34000fa9     	cbz	w9, 0x180cc <tpd_touch_press+0x42c>
   17edc: b9401109     	ldr	w9, [x8, #0x10]
   17ee0: 321f0129     	orr	w9, w9, #0x2
   17ee4: 71000d3f     	cmp	w9, #0x3
   17ee8: 54000481     	b.ne	0x17f78 <tpd_touch_press+0x2d8>
   17eec: 3940d10a     	ldrb	w10, [x8, #0x34]
   17ef0: 12003ea9     	and	w9, w21, #0xffff
   17ef4: 6b0a013f     	cmp	w9, w10
   17ef8: 54fff9c3     	b.lo	0x17e30 <tpd_touch_press+0x190>
   17efc: 7948850a     	ldrh	w10, [x8, #0x442]
   17f00: 3940d50b     	ldrb	w11, [x8, #0x35]
   17f04: 4b0b014b     	sub	w11, w10, w11
   17f08: 6b09017f     	cmp	w11, w9
   17f0c: 54fff92b     	b.lt	0x17e30 <tpd_touch_press+0x190>
   17f10: 3940d90b     	ldrb	w11, [x8, #0x36]
   17f14: 6b33217f     	cmp	w11, w19, uxth
   17f18: 54fff8c8     	b.hi	0x17e30 <tpd_touch_press+0x190>
   17f1c: 7948890b     	ldrh	w11, [x8, #0x444]
   17f20: 3940dd0c     	ldrb	w12, [x8, #0x37]
   17f24: 4b0c016b     	sub	w11, w11, w12
   17f28: 6b33217f     	cmp	w11, w19, uxth
   17f2c: 54fff82b     	b.lt	0x17e30 <tpd_touch_press+0x190>
   17f30: 3940e10b     	ldrb	w11, [x8, #0x38]
   17f34: 34000ccb     	cbz	w11, 0x180cc <tpd_touch_press+0x42c>
   17f38: 79405d0b     	ldrh	w11, [x8, #0x2e]
   17f3c: 6b33217f     	cmp	w11, w19, uxth
   17f40: 54000c62     	b.hs	0x180cc <tpd_touch_press+0x42c>
   17f44: 79405908     	ldrh	w8, [x8, #0x2c]
   17f48: 6b35211f     	cmp	w8, w21, uxth
   17f4c: 54fff728     	b.hi	0x17e30 <tpd_touch_press+0x190>
   17f50: 4b080148     	sub	w8, w10, w8
   17f54: 6b09011f     	cmp	w8, w9
   17f58: 54000baa     	b.ge	0x180cc <tpd_touch_press+0x42c>
   17f5c: 17ffffb5     	b	0x17e30 <tpd_touch_press+0x190>
   17f60: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		0000000000017f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9180
   17f64: 91000000     	add	x0, x0, #0x0
		0000000000017f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9180
   17f68: 90000001     	adrp	x1, 0x17000 <ghost_debug_read+0x30>
		0000000000017f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38c0
   17f6c: 91000021     	add	x1, x1, #0x0
		0000000000017f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38c0
   17f70: 94000000     	bl	0x17f70 <tpd_touch_press+0x2d0>
		0000000000017f70:  R_AARCH64_CALL26	_printk
   17f74: 140000b2     	b	0x1823c <tpd_touch_press+0x59c>
   17f78: 3940d109     	ldrb	w9, [x8, #0x34]
   17f7c: 6b35213f     	cmp	w9, w21, uxth
   17f80: 54fff588     	b.hi	0x17e30 <tpd_touch_press+0x190>
   17f84: 79488509     	ldrh	w9, [x8, #0x442]
   17f88: 3940d508     	ldrb	w8, [x8, #0x35]
   17f8c: 4b080128     	sub	w8, w9, w8
   17f90: 6b35211f     	cmp	w8, w21, uxth
   17f94: 54fff4eb     	b.lt	0x17e30 <tpd_touch_press+0x190>
   17f98: 1400004d     	b	0x180cc <tpd_touch_press+0x42c>
   17f9c: 3940d109     	ldrb	w9, [x8, #0x34]
   17fa0: 6b35213f     	cmp	w9, w21, uxth
   17fa4: 540000c8     	b.hi	0x17fbc <tpd_touch_press+0x31c>
   17fa8: 79488509     	ldrh	w9, [x8, #0x442]
   17fac: 3940d508     	ldrb	w8, [x8, #0x35]
   17fb0: 4b080128     	sub	w8, w9, w8
   17fb4: 6b35211f     	cmp	w8, w21, uxth
   17fb8: 5400064a     	b.ge	0x18080 <tpd_touch_press+0x3e0>
   17fbc: 39415788     	ldrb	w8, [x28, #0x55]
   17fc0: 360025a8     	tbz	w8, #0x0, 0x18474 <tpd_touch_press+0x7d4>
   17fc4: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017fc4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   17fc8: 39400108     	ldrb	w8, [x8]
		0000000000017fc8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   17fcc: 370003a8     	tbnz	w8, #0x0, 0x18040 <tpd_touch_press+0x3a0>
   17fd0: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017fd0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   17fd4: 39400108     	ldrb	w8, [x8]
		0000000000017fd4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   17fd8: 37000348     	tbnz	w8, #0x0, 0x18040 <tpd_touch_press+0x3a0>
   17fdc: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017fdc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   17fe0: 39400108     	ldrb	w8, [x8]
		0000000000017fe0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   17fe4: 370002e8     	tbnz	w8, #0x0, 0x18040 <tpd_touch_press+0x3a0>
   17fe8: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017fe8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   17fec: 39400108     	ldrb	w8, [x8]
		0000000000017fec:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   17ff0: 37000288     	tbnz	w8, #0x0, 0x18040 <tpd_touch_press+0x3a0>
   17ff4: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017ff4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   17ff8: 39400108     	ldrb	w8, [x8]
		0000000000017ff8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   17ffc: 37000228     	tbnz	w8, #0x0, 0x18040 <tpd_touch_press+0x3a0>
   18000: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018000:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   18004: 39400108     	ldrb	w8, [x8]
		0000000000018004:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   18008: 370001c8     	tbnz	w8, #0x0, 0x18040 <tpd_touch_press+0x3a0>
   1800c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		000000000001800c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   18010: 39400108     	ldrb	w8, [x8]
		0000000000018010:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   18014: 37000168     	tbnz	w8, #0x0, 0x18040 <tpd_touch_press+0x3a0>
   18018: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018018:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   1801c: 39400108     	ldrb	w8, [x8]
		000000000001801c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   18020: 37000108     	tbnz	w8, #0x0, 0x18040 <tpd_touch_press+0x3a0>
   18024: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018024:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   18028: 39400108     	ldrb	w8, [x8]
		0000000000018028:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   1802c: 370000a8     	tbnz	w8, #0x0, 0x18040 <tpd_touch_press+0x3a0>
   18030: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018030:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   18034: 39400108     	ldrb	w8, [x8]
		0000000000018034:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   18038: 7100051f     	cmp	w8, #0x1
   1803c: 54000261     	b.ne	0x18088 <tpd_touch_press+0x3e8>
   18040: 52800028     	mov	w8, #0x1                // =1
   18044: 39015b88     	strb	w8, [x28, #0x56]
   18048: 39414788     	ldrb	w8, [x28, #0x51]
   1804c: 37000228     	tbnz	w8, #0x0, 0x18090 <tpd_touch_press+0x3f0>
   18050: b27e0348     	orr	x8, x26, #0x4
   18054: 12003ea9     	and	w9, w21, #0xffff
   18058: f115411f     	cmp	x8, #0x550
   1805c: b9000389     	str	w9, [x28]
   18060: 54001328     	b.hi	0x182c4 <tpd_touch_press+0x624>
   18064: 12003e68     	and	w8, w19, #0xffff
   18068: 39002399     	strb	w25, [x28, #0x8]
   1806c: b9000788     	str	w8, [x28, #0x4]
   18070: 52800028     	mov	w8, #0x1                // =1
   18074: 39002796     	strb	w22, [x28, #0x9]
   18078: 39014788     	strb	w8, [x28, #0x51]
   1807c: 14000070     	b	0x1823c <tpd_touch_press+0x59c>
   18080: 39415788     	ldrb	w8, [x28, #0x55]
   18084: 360014a8     	tbz	w8, #0x0, 0x18318 <tpd_touch_press+0x678>
   18088: 39414788     	ldrb	w8, [x28, #0x51]
   1808c: 3607fe28     	tbz	w8, #0x0, 0x18050 <tpd_touch_press+0x3b0>
   18090: b9400388     	ldr	w8, [x28]
   18094: 4b352108     	sub	w8, w8, w21, uxth
   18098: 7100011f     	cmp	w8, #0x0
   1809c: 5a885508     	cneg	w8, w8, mi
   180a0: 7101911f     	cmp	w8, #0x64
   180a4: 5400014c     	b.gt	0x180cc <tpd_touch_press+0x42c>
   180a8: b27e0348     	orr	x8, x26, #0x4
   180ac: f115411f     	cmp	x8, #0x550
   180b0: 540010a8     	b.hi	0x182c4 <tpd_touch_press+0x624>
   180b4: b9400788     	ldr	w8, [x28, #0x4]
   180b8: 4b332108     	sub	w8, w8, w19, uxth
   180bc: 7100011f     	cmp	w8, #0x0
   180c0: 5a885508     	cneg	w8, w8, mi
   180c4: 7101951f     	cmp	w8, #0x65
   180c8: 54000bab     	b.lt	0x1823c <tpd_touch_press+0x59c>
   180cc: 39414788     	ldrb	w8, [x28, #0x51]
   180d0: 36000128     	tbz	w8, #0x0, 0x180f4 <tpd_touch_press+0x454>
   180d4: 12003ea8     	and	w8, w21, #0xffff
   180d8: 12003e69     	and	w9, w19, #0xffff
   180dc: 39005399     	strb	w25, [x28, #0x14]
   180e0: 2901a788     	stp	w8, w9, [x28, #0xc]
   180e4: 52800028     	mov	w8, #0x1                // =1
   180e8: 39005796     	strb	w22, [x28, #0x15]
   180ec: 39014b88     	strb	w8, [x28, #0x52]
   180f0: 14000002     	b	0x180f8 <tpd_touch_press+0x458>
   180f4: 39014b9f     	strb	wzr, [x28, #0x52]
   180f8: 39414b88     	ldrb	w8, [x28, #0x52]
   180fc: 52800029     	mov	w9, #0x1                // =1
   18100: 39014389     	strb	w9, [x28, #0x50]
   18104: 7100051f     	cmp	w8, #0x1
   18108: 54000361     	b.ne	0x18174 <tpd_touch_press+0x4d4>
   1810c: 39414f88     	ldrb	w8, [x28, #0x53]
   18110: b27e0354     	orr	x20, x26, #0x4
   18114: 2a1603fa     	mov	w26, w22
   18118: 36000a48     	tbz	w8, #0x0, 0x18260 <tpd_touch_press+0x5c0>
   1811c: f115429f     	cmp	x20, #0x550
   18120: 54000d28     	b.hi	0x182c4 <tpd_touch_press+0x624>
   18124: 29400b81     	ldp	w1, w2, [x28]
   18128: aa1803e0     	mov	x0, x24
   1812c: 2a1703e3     	mov	w3, w23
   18130: 2a1903e4     	mov	w4, w25
   18134: 2a1a03e5     	mov	w5, w26
   18138: 94000121     	bl	0x185bc <tpd_touch_release+0xd4>
		0000000000018138:  R_AARCH64_CALL26	tpd_touch_report
   1813c: aa1803e0     	mov	x0, x24
   18140: 2a1f03e1     	mov	w1, wzr
   18144: 2a1f03e2     	mov	w2, wzr
   18148: 2a1f03e3     	mov	w3, wzr
   1814c: 94000000     	bl	0x1814c <tpd_touch_press+0x4ac>
		000000000001814c:  R_AARCH64_CALL26	input_event
   18150: 52807d00     	mov	w0, #0x3e8              // =1000
   18154: 5280bb81     	mov	w1, #0x5dc              // =1500
   18158: 52800042     	mov	w2, #0x2                // =2
   1815c: 94000000     	bl	0x1815c <tpd_touch_press+0x4bc>
		000000000001815c:  R_AARCH64_CALL26	usleep_range_state
   18160: 39414f88     	ldrb	w8, [x28, #0x53]
   18164: 36000b28     	tbz	w8, #0x0, 0x182c8 <tpd_touch_press+0x628>
   18168: 29418b81     	ldp	w1, w2, [x28, #0xc]
   1816c: aa1803e0     	mov	x0, x24
   18170: 1400002b     	b	0x1821c <tpd_touch_press+0x57c>
   18174: 39409369     	ldrb	w9, [x27, #0x24]
   18178: 39414f88     	ldrb	w8, [x28, #0x53]
   1817c: 2a1603fa     	mov	w26, w22
   18180: 34000469     	cbz	w9, 0x1820c <tpd_touch_press+0x56c>
   18184: 36000e08     	tbz	w8, #0x0, 0x18344 <tpd_touch_press+0x6a4>
   18188: 39415f88     	ldrb	w8, [x28, #0x57]
   1818c: 7100051f     	cmp	w8, #0x1
   18190: 54000401     	b.ne	0x18210 <tpd_touch_press+0x570>
   18194: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018194:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18198: f9400108     	ldr	x8, [x8]
		0000000000018198:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1819c: f9403389     	ldr	x9, [x28, #0x60]
   181a0: cb090100     	sub	x0, x8, x9
   181a4: 94000000     	bl	0x181a4 <tpd_touch_press+0x504>
		00000000000181a4:  R_AARCH64_CALL26	jiffies_to_msecs
   181a8: b9401b88     	ldr	w8, [x28, #0x18]
   181ac: 4b352108     	sub	w8, w8, w21, uxth
   181b0: 7100011f     	cmp	w8, #0x0
   181b4: 5a885509     	cneg	w9, w8, mi
   181b8: 39409368     	ldrb	w8, [x27, #0x24]
   181bc: 7101941f     	cmp	w0, #0x65
   181c0: 54000042     	b.hs	0x181c8 <tpd_touch_press+0x528>
   181c4: 0b080508     	add	w8, w8, w8, lsl #1
   181c8: 6b08013f     	cmp	w9, w8
   181cc: 540000ec     	b.gt	0x181e8 <tpd_touch_press+0x548>
   181d0: b9401f89     	ldr	w9, [x28, #0x1c]
   181d4: 4b332129     	sub	w9, w9, w19, uxth
   181d8: 7100013f     	cmp	w9, #0x0
   181dc: 5a895529     	cneg	w9, w9, mi
   181e0: 6b08013f     	cmp	w9, w8
   181e4: 5400024d     	b.le	0x1822c <tpd_touch_press+0x58c>
   181e8: aa1803e0     	mov	x0, x24
   181ec: 2a1503e1     	mov	w1, w21
   181f0: 2a1303e2     	mov	w2, w19
   181f4: 2a1703e3     	mov	w3, w23
   181f8: 2a1903e4     	mov	w4, w25
   181fc: 2a1a03e5     	mov	w5, w26
   18200: 940000ef     	bl	0x185bc <tpd_touch_release+0xd4>
		0000000000018200:  R_AARCH64_CALL26	tpd_touch_report
   18204: 39015f9f     	strb	wzr, [x28, #0x57]
   18208: 14000009     	b	0x1822c <tpd_touch_press+0x58c>
   1820c: 36000c08     	tbz	w8, #0x0, 0x1838c <tpd_touch_press+0x6ec>
   18210: aa1803e0     	mov	x0, x24
   18214: 2a1503e1     	mov	w1, w21
   18218: 2a1303e2     	mov	w2, w19
   1821c: 2a1703e3     	mov	w3, w23
   18220: 2a1903e4     	mov	w4, w25
   18224: 2a1a03e5     	mov	w5, w26
   18228: 940000e5     	bl	0x185bc <tpd_touch_release+0xd4>
		0000000000018228:  R_AARCH64_CALL26	tpd_touch_report
   1822c: 12003ea8     	and	w8, w21, #0xffff
   18230: 12003e69     	and	w9, w19, #0xffff
   18234: 39014b9f     	strb	wzr, [x28, #0x52]
   18238: 2904a788     	stp	w8, w9, [x28, #0x24]
   1823c: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   18240: a94557f6     	ldp	x22, x21, [sp, #0x50]
   18244: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   18248: a94367fa     	ldp	x26, x25, [sp, #0x30]
   1824c: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   18250: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   18254: 9101c3ff     	add	sp, sp, #0x70
   18258: d50323bf     	autiasp
   1825c: d65f03c0     	ret
   18260: 52800028     	mov	w8, #0x1                // =1
   18264: 90000009     	adrp	x9, 0x18000 <tpd_touch_press+0x360>
		0000000000018264:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18268: f115429f     	cmp	x20, #0x550
   1826c: 39014f88     	strb	w8, [x28, #0x53]
   18270: f9400129     	ldr	x9, [x9]
		0000000000018270:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18274: 39016b88     	strb	w8, [x28, #0x5a]
   18278: f9003389     	str	x9, [x28, #0x60]
   1827c: b9448f68     	ldr	w8, [x27, #0x48c]
   18280: 11000508     	add	w8, w8, #0x1
   18284: b9048f68     	str	w8, [x27, #0x48c]
   18288: b9400388     	ldr	w8, [x28]
   1828c: b9001b88     	str	w8, [x28, #0x18]
   18290: 540001a8     	b.hi	0x182c4 <tpd_touch_press+0x624>
   18294: b85fc3b6     	ldur	w22, [x29, #-0x4]
   18298: b9400788     	ldr	w8, [x28, #0x4]
   1829c: 2a1603e0     	mov	w0, w22
   182a0: b9001f88     	str	w8, [x28, #0x1c]
   182a4: 94000090     	bl	0x184e4 <tpd_touch_press+0x844>
		00000000000182a4:  R_AARCH64_CALL26	point_report_reset
   182a8: 29400f82     	ldp	w2, w3, [x28]
   182ac: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		00000000000182ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a50
   182b0: 91000000     	add	x0, x0, #0x0
		00000000000182b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a50
   182b4: 2a1603e1     	mov	w1, w22
   182b8: 94000000     	bl	0x182b8 <tpd_touch_press+0x618>
		00000000000182b8:  R_AARCH64_CALL26	_printk
   182bc: f115429f     	cmp	x20, #0x550
   182c0: 54fff329     	b.ls	0x18124 <tpd_touch_press+0x484>
   182c4: d4200020     	brk	#0x1
   182c8: 52800028     	mov	w8, #0x1                // =1
   182cc: 90000009     	adrp	x9, 0x18000 <tpd_touch_press+0x360>
		00000000000182cc:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   182d0: 39014f88     	strb	w8, [x28, #0x53]
   182d4: f9400129     	ldr	x9, [x9]
		00000000000182d4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   182d8: 39016b88     	strb	w8, [x28, #0x5a]
   182dc: b85fc3b4     	ldur	w20, [x29, #-0x4]
   182e0: f9003389     	str	x9, [x28, #0x60]
   182e4: 2a1403e0     	mov	w0, w20
   182e8: b9448f68     	ldr	w8, [x27, #0x48c]
   182ec: 11000508     	add	w8, w8, #0x1
   182f0: b9048f68     	str	w8, [x27, #0x48c]
   182f4: 29402788     	ldp	w8, w9, [x28]
   182f8: 29032788     	stp	w8, w9, [x28, #0x18]
   182fc: 9400007a     	bl	0x184e4 <tpd_touch_press+0x844>
		00000000000182fc:  R_AARCH64_CALL26	point_report_reset
   18300: 29418f82     	ldp	w2, w3, [x28, #0xc]
   18304: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a50
   18308: 91000000     	add	x0, x0, #0x0
		0000000000018308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a50
   1830c: 2a1403e1     	mov	w1, w20
   18310: 94000000     	bl	0x18310 <tpd_touch_press+0x670>
		0000000000018310:  R_AARCH64_CALL26	_printk
   18314: 17ffff95     	b	0x18168 <tpd_touch_press+0x4c8>
   18318: b85fc3a1     	ldur	w1, [x29, #-0x4]
   1831c: 52800028     	mov	w8, #0x1                // =1
   18320: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x523a
   18324: 91000000     	add	x0, x0, #0x0
		0000000000018324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x523a
   18328: 12003ea2     	and	w2, w21, #0xffff
   1832c: 12003e63     	and	w3, w19, #0xffff
   18330: 39015788     	strb	w8, [x28, #0x55]
   18334: 94000000     	bl	0x18334 <tpd_touch_press+0x694>
		0000000000018334:  R_AARCH64_CALL26	_printk
   18338: 39414788     	ldrb	w8, [x28, #0x51]
   1833c: 3707eaa8     	tbnz	w8, #0x0, 0x18090 <tpd_touch_press+0x3f0>
   18340: 17ffff44     	b	0x18050 <tpd_touch_press+0x3b0>
   18344: 52800034     	mov	w20, #0x1               // =1
   18348: b85fc3b6     	ldur	w22, [x29, #-0x4]
   1834c: 39014f94     	strb	w20, [x28, #0x53]
   18350: b9448f68     	ldr	w8, [x27, #0x48c]
   18354: 2a1603e0     	mov	w0, w22
   18358: 11000508     	add	w8, w8, #0x1
   1835c: b9048f68     	str	w8, [x27, #0x48c]
   18360: 94000061     	bl	0x184e4 <tpd_touch_press+0x844>
		0000000000018360:  R_AARCH64_CALL26	point_report_reset
   18364: 12003ea2     	and	w2, w21, #0xffff
   18368: 12003e63     	and	w3, w19, #0xffff
   1836c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		000000000001836c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18370: 29030f82     	stp	w2, w3, [x28, #0x18]
   18374: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5d6
   18378: 91000000     	add	x0, x0, #0x0
		0000000000018378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5d6
   1837c: f9400108     	ldr	x8, [x8]
		000000000001837c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18380: 39015f94     	strb	w20, [x28, #0x57]
   18384: 2a1603e1     	mov	w1, w22
   18388: 14000014     	b	0x183d8 <tpd_touch_press+0x738>
   1838c: 52800028     	mov	w8, #0x1                // =1
   18390: b85fc3b4     	ldur	w20, [x29, #-0x4]
   18394: 12003eba     	and	w26, w21, #0xffff
   18398: 39014f88     	strb	w8, [x28, #0x53]
   1839c: b9448f68     	ldr	w8, [x27, #0x48c]
   183a0: 2a1403e0     	mov	w0, w20
   183a4: 11000508     	add	w8, w8, #0x1
   183a8: b9048f68     	str	w8, [x27, #0x48c]
   183ac: 12003e7b     	and	w27, w19, #0xffff
   183b0: 29036f9a     	stp	w26, w27, [x28, #0x18]
   183b4: 9400004c     	bl	0x184e4 <tpd_touch_press+0x844>
		00000000000183b4:  R_AARCH64_CALL26	point_report_reset
   183b8: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		00000000000183b8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   183bc: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		00000000000183bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97f4
   183c0: 91000000     	add	x0, x0, #0x0
		00000000000183c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97f4
   183c4: f9400108     	ldr	x8, [x8]
		00000000000183c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   183c8: 2a1403e1     	mov	w1, w20
   183cc: 2a1a03e2     	mov	w2, w26
   183d0: 2a1603fa     	mov	w26, w22
   183d4: 2a1b03e3     	mov	w3, w27
   183d8: f9003388     	str	x8, [x28, #0x60]
   183dc: 94000000     	bl	0x183dc <tpd_touch_press+0x73c>
		00000000000183dc:  R_AARCH64_CALL26	_printk
   183e0: 17ffff8c     	b	0x18210 <tpd_touch_press+0x570>
   183e4: 3940d369     	ldrb	w9, [x27, #0x34]
   183e8: 6b35213f     	cmp	w9, w21, uxth
   183ec: 540000e8     	b.hi	0x18408 <tpd_touch_press+0x768>
   183f0: 3940d769     	ldrb	w9, [x27, #0x35]
   183f4: 4b090108     	sub	w8, w8, w9
   183f8: 6b0b011f     	cmp	w8, w11
   183fc: 5400006b     	b.lt	0x18408 <tpd_touch_press+0x768>
   18400: 3901639f     	strb	wzr, [x28, #0x58]
   18404: 17ffff3d     	b	0x180f8 <tpd_touch_press+0x458>
   18408: 39416388     	ldrb	w8, [x28, #0x58]
   1840c: 7100051f     	cmp	w8, #0x1
   18410: 54000081     	b.ne	0x18420 <tpd_touch_press+0x780>
   18414: f9403788     	ldr	x8, [x28, #0x68]
   18418: 2a0b03f4     	mov	w20, w11
   1841c: 14000009     	b	0x18440 <tpd_touch_press+0x7a0>
   18420: 12003e68     	and	w8, w19, #0xffff
   18424: 52800029     	mov	w9, #0x1                // =1
   18428: 2a0b03f4     	mov	w20, w11
   1842c: 2906238b     	stp	w11, w8, [x28, #0x30]
   18430: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018430:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18434: 39016389     	strb	w9, [x28, #0x58]
   18438: f9400108     	ldr	x8, [x8]
		0000000000018438:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1843c: f9003788     	str	x8, [x28, #0x68]
   18440: 90000009     	adrp	x9, 0x18000 <tpd_touch_press+0x360>
		0000000000018440:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18444: f9400129     	ldr	x9, [x9]
		0000000000018444:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18448: cb080120     	sub	x0, x9, x8
   1844c: 94000000     	bl	0x1844c <tpd_touch_press+0x7ac>
		000000000001844c:  R_AARCH64_CALL26	jiffies_to_msecs
   18450: 710c841f     	cmp	w0, #0x321
   18454: 54ffe523     	b.lo	0x180f8 <tpd_touch_press+0x458>
   18458: b9403388     	ldr	w8, [x28, #0x30]
   1845c: 6b140108     	subs	w8, w8, w20
   18460: 5a885508     	cneg	w8, w8, mi
   18464: 7100551f     	cmp	w8, #0x15
   18468: 540001eb     	b.lt	0x184a4 <tpd_touch_press+0x804>
   1846c: 12003e68     	and	w8, w19, #0xffff
   18470: 14000013     	b	0x184bc <tpd_touch_press+0x81c>
   18474: 52800028     	mov	w8, #0x1                // =1
   18478: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9870
   1847c: 91000000     	add	x0, x0, #0x0
		000000000001847c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9870
   18480: 39015788     	strb	w8, [x28, #0x55]
   18484: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018484:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18488: 12003ea2     	and	w2, w21, #0xffff
   1848c: f9400108     	ldr	x8, [x8]
		000000000001848c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18490: b85fc3a1     	ldur	w1, [x29, #-0x4]
   18494: 12003e63     	and	w3, w19, #0xffff
   18498: f9003b88     	str	x8, [x28, #0x70]
   1849c: 94000000     	bl	0x1849c <tpd_touch_press+0x7fc>
		000000000001849c:  R_AARCH64_CALL26	_printk
   184a0: 17fffec9     	b	0x17fc4 <tpd_touch_press+0x324>
   184a4: b9403789     	ldr	w9, [x28, #0x34]
   184a8: 12003e68     	and	w8, w19, #0xffff
   184ac: 6b080129     	subs	w9, w9, w8
   184b0: 5a895529     	cneg	w9, w9, mi
   184b4: 7100553f     	cmp	w9, #0x15
   184b8: 540000cb     	b.lt	0x184d0 <tpd_touch_press+0x830>
   184bc: 29062394     	stp	w20, w8, [x28, #0x30]
   184c0: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		00000000000184c0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   184c4: f9400108     	ldr	x8, [x8]
		00000000000184c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   184c8: f9003788     	str	x8, [x28, #0x68]
   184cc: 17ffff0b     	b	0x180f8 <tpd_touch_press+0x458>
   184d0: f9404380     	ldr	x0, [x28, #0x80]
   184d4: 2a1703e1     	mov	w1, w23
   184d8: 94000000     	bl	0x184d8 <tpd_touch_press+0x838>
		00000000000184d8:  R_AARCH64_CALL26	tpd_touch_release
   184dc: 3901639f     	strb	wzr, [x28, #0x58]
   184e0: 17ffff57     	b	0x1823c <tpd_touch_press+0x59c>
