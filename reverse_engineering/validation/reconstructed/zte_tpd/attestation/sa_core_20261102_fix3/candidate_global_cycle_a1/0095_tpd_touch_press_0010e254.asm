
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017cfc <tpd_touch_press>:
   17cfc: d503233f     	paciasp
   17d00: d101c3ff     	sub	sp, sp, #0x70
   17d04: a9017bfd     	stp	x29, x30, [sp, #0x10]
   17d08: a9026ffc     	stp	x28, x27, [sp, #0x20]
   17d0c: a90367fa     	stp	x26, x25, [sp, #0x30]
   17d10: a9045ff8     	stp	x24, x23, [sp, #0x40]
   17d14: a90557f6     	stp	x22, x21, [sp, #0x50]
   17d18: a9064ff4     	stp	x20, x19, [sp, #0x60]
   17d1c: 910043fd     	add	x29, sp, #0x10
   17d20: 90000014     	adrp	x20, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017d20:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17d24: 12003c28     	and	w8, w1, #0xffff
   17d28: 721f383f     	tst	w1, #0xfffe
   17d2c: f940029b     	ldr	x27, [x20]
		0000000000017d2c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17d30: 12003c4a     	and	w10, w2, #0xffff
   17d34: 1a9f1508     	csinc	w8, w8, wzr, ne
   17d38: 721f385f     	tst	w2, #0xfffe
   17d3c: b9401369     	ldr	w9, [x27, #0x10]
   17d40: 1a9f154a     	csinc	w10, w10, wzr, ne
   17d44: 7100013f     	cmp	w9, #0x0
   17d48: 1a8a0053     	csel	w19, w2, w10, eq
   17d4c: 1a880035     	csel	w21, w1, w8, eq
   17d50: 12003c62     	and	w2, w3, #0xffff
   17d54: b4001340     	cbz	x0, 0x17fbc <tpd_touch_press+0x2c0>
   17d58: 7100285f     	cmp	w2, #0xa
   17d5c: 54001302     	b.hs	0x17fbc <tpd_touch_press+0x2c0>
   17d60: 2a0303f7     	mov	w23, w3
   17d64: aa0003f8     	mov	x24, x0
   17d68: 2a0403f9     	mov	w25, w4
   17d6c: 92403ee8     	and	x8, x23, #0xffff
   17d70: 2a0503f6     	mov	w22, w5
   17d74: b81fc3a2     	stur	w2, [x29, #-0x4]
   17d78: 8b233108     	add	x8, x8, w3, uxth #4
   17d7c: d37df11a     	lsl	x26, x8, #3
   17d80: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017d80:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   17d84: 91000108     	add	x8, x8, #0x0
		0000000000017d84:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   17d88: 8b1a011c     	add	x28, x8, x26
   17d8c: 39414388     	ldrb	w8, [x28, #0x50]
   17d90: f9004380     	str	x0, [x28, #0x80]
   17d94: 7100051f     	cmp	w8, #0x1
   17d98: 54000721     	b.ne	0x17e7c <tpd_touch_press+0x180>
   17d9c: 39409768     	ldrb	w8, [x27, #0x25]
   17da0: 34001da8     	cbz	w8, 0x18154 <tpd_touch_press+0x458>
   17da4: 39416788     	ldrb	w8, [x28, #0x59]
   17da8: 37001d68     	tbnz	w8, #0x0, 0x18154 <tpd_touch_press+0x458>
   17dac: b9401368     	ldr	w8, [x27, #0x10]
   17db0: 321f0108     	orr	w8, w8, #0x2
   17db4: 71000d1f     	cmp	w8, #0x3
   17db8: 54001ce0     	b.eq	0x18154 <tpd_touch_press+0x458>
   17dbc: 79488768     	ldrh	w8, [x27, #0x442]
   17dc0: 12003eab     	and	w11, w21, #0xffff
   17dc4: 53027d09     	lsr	w9, w8, #2
   17dc8: 6b0b013f     	cmp	w9, w11
   17dcc: 54000102     	b.hs	0x17dec <tpd_touch_press+0xf0>
   17dd0: 0b08050a     	add	w10, w8, w8, lsl #1
   17dd4: 6b4a097f     	cmp	w11, w10, lsr #2
   17dd8: 540000a2     	b.hs	0x17dec <tpd_touch_press+0xf0>
   17ddc: 52800028     	mov	w8, #0x1                // =1
   17de0: 39016788     	strb	w8, [x28, #0x59]
   17de4: 79488768     	ldrh	w8, [x27, #0x442]
   17de8: 53027d09     	lsr	w9, w8, #2
   17dec: b9401b8a     	ldr	w10, [x28, #0x18]
   17df0: 6b09015f     	cmp	w10, w9
   17df4: 5400008b     	b.lt	0x17e04 <tpd_touch_press+0x108>
   17df8: 0b080509     	add	w9, w8, w8, lsl #1
   17dfc: 6b49095f     	cmp	w10, w9, lsr #2
   17e00: 54001aa9     	b.ls	0x18154 <tpd_touch_press+0x458>
   17e04: 39409769     	ldrb	w9, [x27, #0x25]
   17e08: 340032a9     	cbz	w9, 0x1845c <tpd_touch_press+0x760>
   17e0c: b9401369     	ldr	w9, [x27, #0x10]
   17e10: 321f0129     	orr	w9, w9, #0x2
   17e14: 71000d3f     	cmp	w9, #0x3
   17e18: 54003141     	b.ne	0x18440 <tpd_touch_press+0x744>
   17e1c: 3940d369     	ldrb	w9, [x27, #0x34]
   17e20: 6b35213f     	cmp	w9, w21, uxth
   17e24: 54003208     	b.hi	0x18464 <tpd_touch_press+0x768>
   17e28: 3940d769     	ldrb	w9, [x27, #0x35]
   17e2c: 4b090109     	sub	w9, w8, w9
   17e30: 6b0b013f     	cmp	w9, w11
   17e34: 5400318b     	b.lt	0x18464 <tpd_touch_press+0x768>
   17e38: 3940db69     	ldrb	w9, [x27, #0x36]
   17e3c: 6b33213f     	cmp	w9, w19, uxth
   17e40: 54003128     	b.hi	0x18464 <tpd_touch_press+0x768>
   17e44: 79488b69     	ldrh	w9, [x27, #0x444]
   17e48: 3940df6a     	ldrb	w10, [x27, #0x37]
   17e4c: 4b0a0129     	sub	w9, w9, w10
   17e50: 6b33213f     	cmp	w9, w19, uxth
   17e54: 5400308b     	b.lt	0x18464 <tpd_touch_press+0x768>
   17e58: 3940e369     	ldrb	w9, [x27, #0x38]
   17e5c: 34003009     	cbz	w9, 0x1845c <tpd_touch_press+0x760>
   17e60: 79405f69     	ldrh	w9, [x27, #0x2e]
   17e64: 6b33213f     	cmp	w9, w19, uxth
   17e68: 54002fa2     	b.hs	0x1845c <tpd_touch_press+0x760>
   17e6c: 79405b69     	ldrh	w9, [x27, #0x2c]
   17e70: 6b35213f     	cmp	w9, w21, uxth
   17e74: 54002ee9     	b.ls	0x18450 <tpd_touch_press+0x754>
   17e78: 1400017b     	b	0x18464 <tpd_touch_press+0x768>
   17e7c: 2a1503e0     	mov	w0, w21
   17e80: 2a1303e1     	mov	w1, w19
   17e84: 940006c4     	bl	0x19994 <one_key_report+0x11c>
		0000000000017e84:  R_AARCH64_CALL26	point_is_in_limit_area
   17e88: 36000520     	tbz	w0, #0x0, 0x17f2c <tpd_touch_press+0x230>
   17e8c: 2a1503e0     	mov	w0, w21
   17e90: 2a1303e1     	mov	w1, w19
   17e94: 940006c0     	bl	0x19994 <one_key_report+0x11c>
		0000000000017e94:  R_AARCH64_CALL26	point_is_in_limit_area
   17e98: 37001220     	tbnz	w0, #0x0, 0x180dc <tpd_touch_press+0x3e0>
   17e9c: f9400288     	ldr	x8, [x20]
		0000000000017e9c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17ea0: 39409509     	ldrb	w9, [x8, #0x25]
   17ea4: 340011c9     	cbz	w9, 0x180dc <tpd_touch_press+0x3e0>
   17ea8: b9401109     	ldr	w9, [x8, #0x10]
   17eac: 321f0129     	orr	w9, w9, #0x2
   17eb0: 71000d3f     	cmp	w9, #0x3
   17eb4: 54000a21     	b.ne	0x17ff8 <tpd_touch_press+0x2fc>
   17eb8: 3940d10a     	ldrb	w10, [x8, #0x34]
   17ebc: 12003ea9     	and	w9, w21, #0xffff
   17ec0: 6b0a013f     	cmp	w9, w10
   17ec4: 54000aa3     	b.lo	0x18018 <tpd_touch_press+0x31c>
   17ec8: 7948850a     	ldrh	w10, [x8, #0x442]
   17ecc: 3940d50b     	ldrb	w11, [x8, #0x35]
   17ed0: 4b0b014b     	sub	w11, w10, w11
   17ed4: 6b09017f     	cmp	w11, w9
   17ed8: 54000a0b     	b.lt	0x18018 <tpd_touch_press+0x31c>
   17edc: 3940d90b     	ldrb	w11, [x8, #0x36]
   17ee0: 6b33217f     	cmp	w11, w19, uxth
   17ee4: 540009a8     	b.hi	0x18018 <tpd_touch_press+0x31c>
   17ee8: 7948890b     	ldrh	w11, [x8, #0x444]
   17eec: 3940dd0c     	ldrb	w12, [x8, #0x37]
   17ef0: 4b0c016b     	sub	w11, w11, w12
   17ef4: 6b33217f     	cmp	w11, w19, uxth
   17ef8: 5400090b     	b.lt	0x18018 <tpd_touch_press+0x31c>
   17efc: 3940e10b     	ldrb	w11, [x8, #0x38]
   17f00: 34000eeb     	cbz	w11, 0x180dc <tpd_touch_press+0x3e0>
   17f04: 79405d0b     	ldrh	w11, [x8, #0x2e]
   17f08: 6b33217f     	cmp	w11, w19, uxth
   17f0c: 54000e82     	b.hs	0x180dc <tpd_touch_press+0x3e0>
   17f10: 79405908     	ldrh	w8, [x8, #0x2c]
   17f14: 6b35211f     	cmp	w8, w21, uxth
   17f18: 54000808     	b.hi	0x18018 <tpd_touch_press+0x31c>
   17f1c: 4b080148     	sub	w8, w10, w8
   17f20: 6b09011f     	cmp	w8, w9
   17f24: 54000dca     	b.ge	0x180dc <tpd_touch_press+0x3e0>
   17f28: 1400003c     	b	0x18018 <tpd_touch_press+0x31c>
   17f2c: f9400288     	ldr	x8, [x20]
		0000000000017f2c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17f30: 39409509     	ldrb	w9, [x8, #0x25]
   17f34: 34000fa9     	cbz	w9, 0x18128 <tpd_touch_press+0x42c>
   17f38: b9401109     	ldr	w9, [x8, #0x10]
   17f3c: 321f0129     	orr	w9, w9, #0x2
   17f40: 71000d3f     	cmp	w9, #0x3
   17f44: 54000481     	b.ne	0x17fd4 <tpd_touch_press+0x2d8>
   17f48: 3940d10a     	ldrb	w10, [x8, #0x34]
   17f4c: 12003ea9     	and	w9, w21, #0xffff
   17f50: 6b0a013f     	cmp	w9, w10
   17f54: 54fff9c3     	b.lo	0x17e8c <tpd_touch_press+0x190>
   17f58: 7948850a     	ldrh	w10, [x8, #0x442]
   17f5c: 3940d50b     	ldrb	w11, [x8, #0x35]
   17f60: 4b0b014b     	sub	w11, w10, w11
   17f64: 6b09017f     	cmp	w11, w9
   17f68: 54fff92b     	b.lt	0x17e8c <tpd_touch_press+0x190>
   17f6c: 3940d90b     	ldrb	w11, [x8, #0x36]
   17f70: 6b33217f     	cmp	w11, w19, uxth
   17f74: 54fff8c8     	b.hi	0x17e8c <tpd_touch_press+0x190>
   17f78: 7948890b     	ldrh	w11, [x8, #0x444]
   17f7c: 3940dd0c     	ldrb	w12, [x8, #0x37]
   17f80: 4b0c016b     	sub	w11, w11, w12
   17f84: 6b33217f     	cmp	w11, w19, uxth
   17f88: 54fff82b     	b.lt	0x17e8c <tpd_touch_press+0x190>
   17f8c: 3940e10b     	ldrb	w11, [x8, #0x38]
   17f90: 34000ccb     	cbz	w11, 0x18128 <tpd_touch_press+0x42c>
   17f94: 79405d0b     	ldrh	w11, [x8, #0x2e]
   17f98: 6b33217f     	cmp	w11, w19, uxth
   17f9c: 54000c62     	b.hs	0x18128 <tpd_touch_press+0x42c>
   17fa0: 79405908     	ldrh	w8, [x8, #0x2c]
   17fa4: 6b35211f     	cmp	w8, w21, uxth
   17fa8: 54fff728     	b.hi	0x17e8c <tpd_touch_press+0x190>
   17fac: 4b080148     	sub	w8, w10, w8
   17fb0: 6b09011f     	cmp	w8, w9
   17fb4: 54000baa     	b.ge	0x18128 <tpd_touch_press+0x42c>
   17fb8: 17ffffb5     	b	0x17e8c <tpd_touch_press+0x190>
   17fbc: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9180
   17fc0: 91000000     	add	x0, x0, #0x0
		0000000000017fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9180
   17fc4: 90000001     	adrp	x1, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017fc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38c0
   17fc8: 91000021     	add	x1, x1, #0x0
		0000000000017fc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38c0
   17fcc: 94000000     	bl	0x17fcc <tpd_touch_press+0x2d0>
		0000000000017fcc:  R_AARCH64_CALL26	_printk
   17fd0: 140000b2     	b	0x18298 <tpd_touch_press+0x59c>
   17fd4: 3940d109     	ldrb	w9, [x8, #0x34]
   17fd8: 6b35213f     	cmp	w9, w21, uxth
   17fdc: 54fff588     	b.hi	0x17e8c <tpd_touch_press+0x190>
   17fe0: 79488509     	ldrh	w9, [x8, #0x442]
   17fe4: 3940d508     	ldrb	w8, [x8, #0x35]
   17fe8: 4b080128     	sub	w8, w9, w8
   17fec: 6b35211f     	cmp	w8, w21, uxth
   17ff0: 54fff4eb     	b.lt	0x17e8c <tpd_touch_press+0x190>
   17ff4: 1400004d     	b	0x18128 <tpd_touch_press+0x42c>
   17ff8: 3940d109     	ldrb	w9, [x8, #0x34]
   17ffc: 6b35213f     	cmp	w9, w21, uxth
   18000: 540000c8     	b.hi	0x18018 <tpd_touch_press+0x31c>
   18004: 79488509     	ldrh	w9, [x8, #0x442]
   18008: 3940d508     	ldrb	w8, [x8, #0x35]
   1800c: 4b080128     	sub	w8, w9, w8
   18010: 6b35211f     	cmp	w8, w21, uxth
   18014: 5400064a     	b.ge	0x180dc <tpd_touch_press+0x3e0>
   18018: 39415788     	ldrb	w8, [x28, #0x55]
   1801c: 360025a8     	tbz	w8, #0x0, 0x184d0 <tpd_touch_press+0x7d4>
   18020: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018020:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   18024: 39400108     	ldrb	w8, [x8]
		0000000000018024:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   18028: 370003a8     	tbnz	w8, #0x0, 0x1809c <tpd_touch_press+0x3a0>
   1802c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		000000000001802c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   18030: 39400108     	ldrb	w8, [x8]
		0000000000018030:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   18034: 37000348     	tbnz	w8, #0x0, 0x1809c <tpd_touch_press+0x3a0>
   18038: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018038:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   1803c: 39400108     	ldrb	w8, [x8]
		000000000001803c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   18040: 370002e8     	tbnz	w8, #0x0, 0x1809c <tpd_touch_press+0x3a0>
   18044: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018044:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   18048: 39400108     	ldrb	w8, [x8]
		0000000000018048:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   1804c: 37000288     	tbnz	w8, #0x0, 0x1809c <tpd_touch_press+0x3a0>
   18050: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018050:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   18054: 39400108     	ldrb	w8, [x8]
		0000000000018054:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   18058: 37000228     	tbnz	w8, #0x0, 0x1809c <tpd_touch_press+0x3a0>
   1805c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		000000000001805c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   18060: 39400108     	ldrb	w8, [x8]
		0000000000018060:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   18064: 370001c8     	tbnz	w8, #0x0, 0x1809c <tpd_touch_press+0x3a0>
   18068: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018068:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   1806c: 39400108     	ldrb	w8, [x8]
		000000000001806c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   18070: 37000168     	tbnz	w8, #0x0, 0x1809c <tpd_touch_press+0x3a0>
   18074: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018074:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   18078: 39400108     	ldrb	w8, [x8]
		0000000000018078:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   1807c: 37000108     	tbnz	w8, #0x0, 0x1809c <tpd_touch_press+0x3a0>
   18080: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018080:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   18084: 39400108     	ldrb	w8, [x8]
		0000000000018084:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   18088: 370000a8     	tbnz	w8, #0x0, 0x1809c <tpd_touch_press+0x3a0>
   1808c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		000000000001808c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   18090: 39400108     	ldrb	w8, [x8]
		0000000000018090:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   18094: 7100051f     	cmp	w8, #0x1
   18098: 54000261     	b.ne	0x180e4 <tpd_touch_press+0x3e8>
   1809c: 52800028     	mov	w8, #0x1                // =1
   180a0: 39015b88     	strb	w8, [x28, #0x56]
   180a4: 39414788     	ldrb	w8, [x28, #0x51]
   180a8: 37000228     	tbnz	w8, #0x0, 0x180ec <tpd_touch_press+0x3f0>
   180ac: b27e0348     	orr	x8, x26, #0x4
   180b0: 12003ea9     	and	w9, w21, #0xffff
   180b4: f115411f     	cmp	x8, #0x550
   180b8: b9000389     	str	w9, [x28]
   180bc: 54001328     	b.hi	0x18320 <tpd_touch_press+0x624>
   180c0: 12003e68     	and	w8, w19, #0xffff
   180c4: 39002399     	strb	w25, [x28, #0x8]
   180c8: b9000788     	str	w8, [x28, #0x4]
   180cc: 52800028     	mov	w8, #0x1                // =1
   180d0: 39002796     	strb	w22, [x28, #0x9]
   180d4: 39014788     	strb	w8, [x28, #0x51]
   180d8: 14000070     	b	0x18298 <tpd_touch_press+0x59c>
   180dc: 39415788     	ldrb	w8, [x28, #0x55]
   180e0: 360014a8     	tbz	w8, #0x0, 0x18374 <tpd_touch_press+0x678>
   180e4: 39414788     	ldrb	w8, [x28, #0x51]
   180e8: 3607fe28     	tbz	w8, #0x0, 0x180ac <tpd_touch_press+0x3b0>
   180ec: b9400388     	ldr	w8, [x28]
   180f0: 4b352108     	sub	w8, w8, w21, uxth
   180f4: 7100011f     	cmp	w8, #0x0
   180f8: 5a885508     	cneg	w8, w8, mi
   180fc: 7101911f     	cmp	w8, #0x64
   18100: 5400014c     	b.gt	0x18128 <tpd_touch_press+0x42c>
   18104: b27e0348     	orr	x8, x26, #0x4
   18108: f115411f     	cmp	x8, #0x550
   1810c: 540010a8     	b.hi	0x18320 <tpd_touch_press+0x624>
   18110: b9400788     	ldr	w8, [x28, #0x4]
   18114: 4b332108     	sub	w8, w8, w19, uxth
   18118: 7100011f     	cmp	w8, #0x0
   1811c: 5a885508     	cneg	w8, w8, mi
   18120: 7101951f     	cmp	w8, #0x65
   18124: 54000bab     	b.lt	0x18298 <tpd_touch_press+0x59c>
   18128: 39414788     	ldrb	w8, [x28, #0x51]
   1812c: 36000128     	tbz	w8, #0x0, 0x18150 <tpd_touch_press+0x454>
   18130: 12003ea8     	and	w8, w21, #0xffff
   18134: 12003e69     	and	w9, w19, #0xffff
   18138: 39005399     	strb	w25, [x28, #0x14]
   1813c: 2901a788     	stp	w8, w9, [x28, #0xc]
   18140: 52800028     	mov	w8, #0x1                // =1
   18144: 39005796     	strb	w22, [x28, #0x15]
   18148: 39014b88     	strb	w8, [x28, #0x52]
   1814c: 14000002     	b	0x18154 <tpd_touch_press+0x458>
   18150: 39014b9f     	strb	wzr, [x28, #0x52]
   18154: 39414b88     	ldrb	w8, [x28, #0x52]
   18158: 52800029     	mov	w9, #0x1                // =1
   1815c: 39014389     	strb	w9, [x28, #0x50]
   18160: 7100051f     	cmp	w8, #0x1
   18164: 54000361     	b.ne	0x181d0 <tpd_touch_press+0x4d4>
   18168: 39414f88     	ldrb	w8, [x28, #0x53]
   1816c: b27e0354     	orr	x20, x26, #0x4
   18170: 2a1603fa     	mov	w26, w22
   18174: 36000a48     	tbz	w8, #0x0, 0x182bc <tpd_touch_press+0x5c0>
   18178: f115429f     	cmp	x20, #0x550
   1817c: 54000d28     	b.hi	0x18320 <tpd_touch_press+0x624>
   18180: 29400b81     	ldp	w1, w2, [x28]
   18184: aa1803e0     	mov	x0, x24
   18188: 2a1703e3     	mov	w3, w23
   1818c: 2a1903e4     	mov	w4, w25
   18190: 2a1a03e5     	mov	w5, w26
   18194: 94000121     	bl	0x18618 <tpd_touch_release+0xd4>
		0000000000018194:  R_AARCH64_CALL26	tpd_touch_report
   18198: aa1803e0     	mov	x0, x24
   1819c: 2a1f03e1     	mov	w1, wzr
   181a0: 2a1f03e2     	mov	w2, wzr
   181a4: 2a1f03e3     	mov	w3, wzr
   181a8: 94000000     	bl	0x181a8 <tpd_touch_press+0x4ac>
		00000000000181a8:  R_AARCH64_CALL26	input_event
   181ac: 52807d00     	mov	w0, #0x3e8              // =1000
   181b0: 5280bb81     	mov	w1, #0x5dc              // =1500
   181b4: 52800042     	mov	w2, #0x2                // =2
   181b8: 94000000     	bl	0x181b8 <tpd_touch_press+0x4bc>
		00000000000181b8:  R_AARCH64_CALL26	usleep_range_state
   181bc: 39414f88     	ldrb	w8, [x28, #0x53]
   181c0: 36000b28     	tbz	w8, #0x0, 0x18324 <tpd_touch_press+0x628>
   181c4: 29418b81     	ldp	w1, w2, [x28, #0xc]
   181c8: aa1803e0     	mov	x0, x24
   181cc: 1400002b     	b	0x18278 <tpd_touch_press+0x57c>
   181d0: 39409369     	ldrb	w9, [x27, #0x24]
   181d4: 39414f88     	ldrb	w8, [x28, #0x53]
   181d8: 2a1603fa     	mov	w26, w22
   181dc: 34000469     	cbz	w9, 0x18268 <tpd_touch_press+0x56c>
   181e0: 36000e08     	tbz	w8, #0x0, 0x183a0 <tpd_touch_press+0x6a4>
   181e4: 39415f88     	ldrb	w8, [x28, #0x57]
   181e8: 7100051f     	cmp	w8, #0x1
   181ec: 54000401     	b.ne	0x1826c <tpd_touch_press+0x570>
   181f0: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		00000000000181f0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   181f4: f9400108     	ldr	x8, [x8]
		00000000000181f4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   181f8: f9403389     	ldr	x9, [x28, #0x60]
   181fc: cb090100     	sub	x0, x8, x9
   18200: 94000000     	bl	0x18200 <tpd_touch_press+0x504>
		0000000000018200:  R_AARCH64_CALL26	jiffies_to_msecs
   18204: b9401b88     	ldr	w8, [x28, #0x18]
   18208: 4b352108     	sub	w8, w8, w21, uxth
   1820c: 7100011f     	cmp	w8, #0x0
   18210: 5a885509     	cneg	w9, w8, mi
   18214: 39409368     	ldrb	w8, [x27, #0x24]
   18218: 7101941f     	cmp	w0, #0x65
   1821c: 54000042     	b.hs	0x18224 <tpd_touch_press+0x528>
   18220: 0b080508     	add	w8, w8, w8, lsl #1
   18224: 6b08013f     	cmp	w9, w8
   18228: 540000ec     	b.gt	0x18244 <tpd_touch_press+0x548>
   1822c: b9401f89     	ldr	w9, [x28, #0x1c]
   18230: 4b332129     	sub	w9, w9, w19, uxth
   18234: 7100013f     	cmp	w9, #0x0
   18238: 5a895529     	cneg	w9, w9, mi
   1823c: 6b08013f     	cmp	w9, w8
   18240: 5400024d     	b.le	0x18288 <tpd_touch_press+0x58c>
   18244: aa1803e0     	mov	x0, x24
   18248: 2a1503e1     	mov	w1, w21
   1824c: 2a1303e2     	mov	w2, w19
   18250: 2a1703e3     	mov	w3, w23
   18254: 2a1903e4     	mov	w4, w25
   18258: 2a1a03e5     	mov	w5, w26
   1825c: 940000ef     	bl	0x18618 <tpd_touch_release+0xd4>
		000000000001825c:  R_AARCH64_CALL26	tpd_touch_report
   18260: 39015f9f     	strb	wzr, [x28, #0x57]
   18264: 14000009     	b	0x18288 <tpd_touch_press+0x58c>
   18268: 36000c08     	tbz	w8, #0x0, 0x183e8 <tpd_touch_press+0x6ec>
   1826c: aa1803e0     	mov	x0, x24
   18270: 2a1503e1     	mov	w1, w21
   18274: 2a1303e2     	mov	w2, w19
   18278: 2a1703e3     	mov	w3, w23
   1827c: 2a1903e4     	mov	w4, w25
   18280: 2a1a03e5     	mov	w5, w26
   18284: 940000e5     	bl	0x18618 <tpd_touch_release+0xd4>
		0000000000018284:  R_AARCH64_CALL26	tpd_touch_report
   18288: 12003ea8     	and	w8, w21, #0xffff
   1828c: 12003e69     	and	w9, w19, #0xffff
   18290: 39014b9f     	strb	wzr, [x28, #0x52]
   18294: 2904a788     	stp	w8, w9, [x28, #0x24]
   18298: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   1829c: a94557f6     	ldp	x22, x21, [sp, #0x50]
   182a0: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   182a4: a94367fa     	ldp	x26, x25, [sp, #0x30]
   182a8: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   182ac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   182b0: 9101c3ff     	add	sp, sp, #0x70
   182b4: d50323bf     	autiasp
   182b8: d65f03c0     	ret
   182bc: 52800028     	mov	w8, #0x1                // =1
   182c0: 90000009     	adrp	x9, 0x18000 <tpd_touch_press+0x304>
		00000000000182c0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   182c4: f115429f     	cmp	x20, #0x550
   182c8: 39014f88     	strb	w8, [x28, #0x53]
   182cc: f9400129     	ldr	x9, [x9]
		00000000000182cc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   182d0: 39016b88     	strb	w8, [x28, #0x5a]
   182d4: f9003389     	str	x9, [x28, #0x60]
   182d8: b9448f68     	ldr	w8, [x27, #0x48c]
   182dc: 11000508     	add	w8, w8, #0x1
   182e0: b9048f68     	str	w8, [x27, #0x48c]
   182e4: b9400388     	ldr	w8, [x28]
   182e8: b9001b88     	str	w8, [x28, #0x18]
   182ec: 540001a8     	b.hi	0x18320 <tpd_touch_press+0x624>
   182f0: b85fc3b6     	ldur	w22, [x29, #-0x4]
   182f4: b9400788     	ldr	w8, [x28, #0x4]
   182f8: 2a1603e0     	mov	w0, w22
   182fc: b9001f88     	str	w8, [x28, #0x1c]
   18300: 94000090     	bl	0x18540 <tpd_touch_press+0x844>
		0000000000018300:  R_AARCH64_CALL26	point_report_reset
   18304: 29400f82     	ldp	w2, w3, [x28]
   18308: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a50
   1830c: 91000000     	add	x0, x0, #0x0
		000000000001830c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a50
   18310: 2a1603e1     	mov	w1, w22
   18314: 94000000     	bl	0x18314 <tpd_touch_press+0x618>
		0000000000018314:  R_AARCH64_CALL26	_printk
   18318: f115429f     	cmp	x20, #0x550
   1831c: 54fff329     	b.ls	0x18180 <tpd_touch_press+0x484>
   18320: d4200020     	brk	#0x1
   18324: 52800028     	mov	w8, #0x1                // =1
   18328: 90000009     	adrp	x9, 0x18000 <tpd_touch_press+0x304>
		0000000000018328:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   1832c: 39014f88     	strb	w8, [x28, #0x53]
   18330: f9400129     	ldr	x9, [x9]
		0000000000018330:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18334: 39016b88     	strb	w8, [x28, #0x5a]
   18338: b85fc3b4     	ldur	w20, [x29, #-0x4]
   1833c: f9003389     	str	x9, [x28, #0x60]
   18340: 2a1403e0     	mov	w0, w20
   18344: b9448f68     	ldr	w8, [x27, #0x48c]
   18348: 11000508     	add	w8, w8, #0x1
   1834c: b9048f68     	str	w8, [x27, #0x48c]
   18350: 29402788     	ldp	w8, w9, [x28]
   18354: 29032788     	stp	w8, w9, [x28, #0x18]
   18358: 9400007a     	bl	0x18540 <tpd_touch_press+0x844>
		0000000000018358:  R_AARCH64_CALL26	point_report_reset
   1835c: 29418f82     	ldp	w2, w3, [x28, #0xc]
   18360: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a50
   18364: 91000000     	add	x0, x0, #0x0
		0000000000018364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a50
   18368: 2a1403e1     	mov	w1, w20
   1836c: 94000000     	bl	0x1836c <tpd_touch_press+0x670>
		000000000001836c:  R_AARCH64_CALL26	_printk
   18370: 17ffff95     	b	0x181c4 <tpd_touch_press+0x4c8>
   18374: b85fc3a1     	ldur	w1, [x29, #-0x4]
   18378: 52800028     	mov	w8, #0x1                // =1
   1837c: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		000000000001837c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x523a
   18380: 91000000     	add	x0, x0, #0x0
		0000000000018380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x523a
   18384: 12003ea2     	and	w2, w21, #0xffff
   18388: 12003e63     	and	w3, w19, #0xffff
   1838c: 39015788     	strb	w8, [x28, #0x55]
   18390: 94000000     	bl	0x18390 <tpd_touch_press+0x694>
		0000000000018390:  R_AARCH64_CALL26	_printk
   18394: 39414788     	ldrb	w8, [x28, #0x51]
   18398: 3707eaa8     	tbnz	w8, #0x0, 0x180ec <tpd_touch_press+0x3f0>
   1839c: 17ffff44     	b	0x180ac <tpd_touch_press+0x3b0>
   183a0: 52800034     	mov	w20, #0x1               // =1
   183a4: b85fc3b6     	ldur	w22, [x29, #-0x4]
   183a8: 39014f94     	strb	w20, [x28, #0x53]
   183ac: b9448f68     	ldr	w8, [x27, #0x48c]
   183b0: 2a1603e0     	mov	w0, w22
   183b4: 11000508     	add	w8, w8, #0x1
   183b8: b9048f68     	str	w8, [x27, #0x48c]
   183bc: 94000061     	bl	0x18540 <tpd_touch_press+0x844>
		00000000000183bc:  R_AARCH64_CALL26	point_report_reset
   183c0: 12003ea2     	and	w2, w21, #0xffff
   183c4: 12003e63     	and	w3, w19, #0xffff
   183c8: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		00000000000183c8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   183cc: 29030f82     	stp	w2, w3, [x28, #0x18]
   183d0: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		00000000000183d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5d6
   183d4: 91000000     	add	x0, x0, #0x0
		00000000000183d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5d6
   183d8: f9400108     	ldr	x8, [x8]
		00000000000183d8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   183dc: 39015f94     	strb	w20, [x28, #0x57]
   183e0: 2a1603e1     	mov	w1, w22
   183e4: 14000014     	b	0x18434 <tpd_touch_press+0x738>
   183e8: 52800028     	mov	w8, #0x1                // =1
   183ec: b85fc3b4     	ldur	w20, [x29, #-0x4]
   183f0: 12003eba     	and	w26, w21, #0xffff
   183f4: 39014f88     	strb	w8, [x28, #0x53]
   183f8: b9448f68     	ldr	w8, [x27, #0x48c]
   183fc: 2a1403e0     	mov	w0, w20
   18400: 11000508     	add	w8, w8, #0x1
   18404: b9048f68     	str	w8, [x27, #0x48c]
   18408: 12003e7b     	and	w27, w19, #0xffff
   1840c: 29036f9a     	stp	w26, w27, [x28, #0x18]
   18410: 9400004c     	bl	0x18540 <tpd_touch_press+0x844>
		0000000000018410:  R_AARCH64_CALL26	point_report_reset
   18414: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018414:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18418: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97f4
   1841c: 91000000     	add	x0, x0, #0x0
		000000000001841c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97f4
   18420: f9400108     	ldr	x8, [x8]
		0000000000018420:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18424: 2a1403e1     	mov	w1, w20
   18428: 2a1a03e2     	mov	w2, w26
   1842c: 2a1603fa     	mov	w26, w22
   18430: 2a1b03e3     	mov	w3, w27
   18434: f9003388     	str	x8, [x28, #0x60]
   18438: 94000000     	bl	0x18438 <tpd_touch_press+0x73c>
		0000000000018438:  R_AARCH64_CALL26	_printk
   1843c: 17ffff8c     	b	0x1826c <tpd_touch_press+0x570>
   18440: 3940d369     	ldrb	w9, [x27, #0x34]
   18444: 6b35213f     	cmp	w9, w21, uxth
   18448: 540000e8     	b.hi	0x18464 <tpd_touch_press+0x768>
   1844c: 3940d769     	ldrb	w9, [x27, #0x35]
   18450: 4b090108     	sub	w8, w8, w9
   18454: 6b0b011f     	cmp	w8, w11
   18458: 5400006b     	b.lt	0x18464 <tpd_touch_press+0x768>
   1845c: 3901639f     	strb	wzr, [x28, #0x58]
   18460: 17ffff3d     	b	0x18154 <tpd_touch_press+0x458>
   18464: 39416388     	ldrb	w8, [x28, #0x58]
   18468: 7100051f     	cmp	w8, #0x1
   1846c: 54000081     	b.ne	0x1847c <tpd_touch_press+0x780>
   18470: f9403788     	ldr	x8, [x28, #0x68]
   18474: 2a0b03f4     	mov	w20, w11
   18478: 14000009     	b	0x1849c <tpd_touch_press+0x7a0>
   1847c: 12003e68     	and	w8, w19, #0xffff
   18480: 52800029     	mov	w9, #0x1                // =1
   18484: 2a0b03f4     	mov	w20, w11
   18488: 2906238b     	stp	w11, w8, [x28, #0x30]
   1848c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		000000000001848c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18490: 39016389     	strb	w9, [x28, #0x58]
   18494: f9400108     	ldr	x8, [x8]
		0000000000018494:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18498: f9003788     	str	x8, [x28, #0x68]
   1849c: 90000009     	adrp	x9, 0x18000 <tpd_touch_press+0x304>
		000000000001849c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   184a0: f9400129     	ldr	x9, [x9]
		00000000000184a0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   184a4: cb080120     	sub	x0, x9, x8
   184a8: 94000000     	bl	0x184a8 <tpd_touch_press+0x7ac>
		00000000000184a8:  R_AARCH64_CALL26	jiffies_to_msecs
   184ac: 710c841f     	cmp	w0, #0x321
   184b0: 54ffe523     	b.lo	0x18154 <tpd_touch_press+0x458>
   184b4: b9403388     	ldr	w8, [x28, #0x30]
   184b8: 6b140108     	subs	w8, w8, w20
   184bc: 5a885508     	cneg	w8, w8, mi
   184c0: 7100551f     	cmp	w8, #0x15
   184c4: 540001eb     	b.lt	0x18500 <tpd_touch_press+0x804>
   184c8: 12003e68     	and	w8, w19, #0xffff
   184cc: 14000013     	b	0x18518 <tpd_touch_press+0x81c>
   184d0: 52800028     	mov	w8, #0x1                // =1
   184d4: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		00000000000184d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9870
   184d8: 91000000     	add	x0, x0, #0x0
		00000000000184d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9870
   184dc: 39015788     	strb	w8, [x28, #0x55]
   184e0: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		00000000000184e0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   184e4: 12003ea2     	and	w2, w21, #0xffff
   184e8: f9400108     	ldr	x8, [x8]
		00000000000184e8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   184ec: b85fc3a1     	ldur	w1, [x29, #-0x4]
   184f0: 12003e63     	and	w3, w19, #0xffff
   184f4: f9003b88     	str	x8, [x28, #0x70]
   184f8: 94000000     	bl	0x184f8 <tpd_touch_press+0x7fc>
		00000000000184f8:  R_AARCH64_CALL26	_printk
   184fc: 17fffec9     	b	0x18020 <tpd_touch_press+0x324>
   18500: b9403789     	ldr	w9, [x28, #0x34]
   18504: 12003e68     	and	w8, w19, #0xffff
   18508: 6b080129     	subs	w9, w9, w8
   1850c: 5a895529     	cneg	w9, w9, mi
   18510: 7100553f     	cmp	w9, #0x15
   18514: 540000cb     	b.lt	0x1852c <tpd_touch_press+0x830>
   18518: 29062394     	stp	w20, w8, [x28, #0x30]
   1851c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		000000000001851c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18520: f9400108     	ldr	x8, [x8]
		0000000000018520:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18524: f9003788     	str	x8, [x28, #0x68]
   18528: 17ffff0b     	b	0x18154 <tpd_touch_press+0x458>
   1852c: f9404380     	ldr	x0, [x28, #0x80]
   18530: 2a1703e1     	mov	w1, w23
   18534: 94000000     	bl	0x18534 <tpd_touch_press+0x838>
		0000000000018534:  R_AARCH64_CALL26	tpd_touch_release
   18538: 3901639f     	strb	wzr, [x28, #0x58]
   1853c: 17ffff57     	b	0x18298 <tpd_touch_press+0x59c>
