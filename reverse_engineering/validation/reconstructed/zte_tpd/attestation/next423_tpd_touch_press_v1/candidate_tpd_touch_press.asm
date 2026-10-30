
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021a14 <tpd_touch_press>:
   21a14: d503233f     	paciasp
   21a18: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   21a1c: a9016ffc     	stp	x28, x27, [sp, #0x10]
   21a20: a90267fa     	stp	x26, x25, [sp, #0x20]
   21a24: a9035ff8     	stp	x24, x23, [sp, #0x30]
   21a28: a90457f6     	stp	x22, x21, [sp, #0x40]
   21a2c: a9054ff4     	stp	x20, x19, [sp, #0x50]
   21a30: 910003fd     	mov	x29, sp
   21a34: 9000001c     	adrp	x28, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021a34:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   21a38: 12003c28     	and	w8, w1, #0xffff
   21a3c: 721f383f     	tst	w1, #0xfffe
   21a40: f940039b     	ldr	x27, [x28]
		0000000000021a40:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21a44: 12003c4a     	and	w10, w2, #0xffff
   21a48: 1a9f1508     	csinc	w8, w8, wzr, ne
   21a4c: 721f385f     	tst	w2, #0xfffe
   21a50: 2a0303f6     	mov	w22, w3
   21a54: b9401369     	ldr	w9, [x27, #0x10]
   21a58: 1a9f154a     	csinc	w10, w10, wzr, ne
   21a5c: 7100013f     	cmp	w9, #0x0
   21a60: 1a8a0053     	csel	w19, w2, w10, eq
   21a64: 1a880037     	csel	w23, w1, w8, eq
   21a68: b40013e0     	cbz	x0, 0x21ce4 <tpd_touch_press+0x2d0>
   21a6c: 12003ed9     	and	w25, w22, #0xffff
   21a70: 71002b3f     	cmp	w25, #0xa
   21a74: 540013a2     	b.hs	0x21ce8 <tpd_touch_press+0x2d4>
   21a78: 0b191328     	add	w8, w25, w25, lsl #4
   21a7c: 90000009     	adrp	x9, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021a7c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   21a80: 91000129     	add	x9, x9, #0x0
		0000000000021a80:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   21a84: 2a0503f4     	mov	w20, w5
   21a88: 2a0403f5     	mov	w21, w4
   21a8c: aa0003f8     	mov	x24, x0
   21a90: 531d7108     	lsl	w8, w8, #3
   21a94: 8b08013a     	add	x26, x9, x8
   21a98: 39414348     	ldrb	w8, [x26, #0x50]
   21a9c: f9004340     	str	x0, [x26, #0x80]
   21aa0: 7100051f     	cmp	w8, #0x1
   21aa4: 54000741     	b.ne	0x21b8c <tpd_touch_press+0x178>
   21aa8: 39409768     	ldrb	w8, [x27, #0x25]
   21aac: 34001d08     	cbz	w8, 0x21e4c <tpd_touch_press+0x438>
   21ab0: 39416748     	ldrb	w8, [x26, #0x59]
   21ab4: 37001cc8     	tbnz	w8, #0x0, 0x21e4c <tpd_touch_press+0x438>
   21ab8: b9401368     	ldr	w8, [x27, #0x10]
   21abc: 121e7908     	and	w8, w8, #0xfffffffd
   21ac0: 7100051f     	cmp	w8, #0x1
   21ac4: 54001c40     	b.eq	0x21e4c <tpd_touch_press+0x438>
   21ac8: 79488768     	ldrh	w8, [x27, #0x442]
   21acc: 12003efc     	and	w28, w23, #0xffff
   21ad0: 53027d09     	lsr	w9, w8, #2
   21ad4: 6b1c013f     	cmp	w9, w28
   21ad8: 54000102     	b.hs	0x21af8 <tpd_touch_press+0xe4>
   21adc: 0b08050a     	add	w10, w8, w8, lsl #1
   21ae0: 6b4a0b9f     	cmp	w28, w10, lsr #2
   21ae4: 540000a2     	b.hs	0x21af8 <tpd_touch_press+0xe4>
   21ae8: 52800028     	mov	w8, #0x1                // =1
   21aec: 39016748     	strb	w8, [x26, #0x59]
   21af0: 79488768     	ldrh	w8, [x27, #0x442]
   21af4: 53027d09     	lsr	w9, w8, #2
   21af8: b9401b4a     	ldr	w10, [x26, #0x18]
   21afc: 6b09015f     	cmp	w10, w9
   21b00: 5400008b     	b.lt	0x21b10 <tpd_touch_press+0xfc>
   21b04: 0b080509     	add	w9, w8, w8, lsl #1
   21b08: 6b49095f     	cmp	w10, w9, lsr #2
   21b0c: 54001a09     	b.ls	0x21e4c <tpd_touch_press+0x438>
   21b10: 39409769     	ldrb	w9, [x27, #0x25]
   21b14: 34002ae9     	cbz	w9, 0x22070 <tpd_touch_press+0x65c>
   21b18: b9401369     	ldr	w9, [x27, #0x10]
   21b1c: 121e792a     	and	w10, w9, #0xfffffffd
   21b20: 3940d369     	ldrb	w9, [x27, #0x34]
   21b24: 7100055f     	cmp	w10, #0x1
   21b28: 540028e1     	b.ne	0x22044 <tpd_touch_press+0x630>
   21b2c: 6b09039f     	cmp	w28, w9
   21b30: 54002963     	b.lo	0x2205c <tpd_touch_press+0x648>
   21b34: 3940d769     	ldrb	w9, [x27, #0x35]
   21b38: 4b090109     	sub	w9, w8, w9
   21b3c: 6b1c013f     	cmp	w9, w28
   21b40: 540028eb     	b.lt	0x2205c <tpd_touch_press+0x648>
   21b44: 3940db6a     	ldrb	w10, [x27, #0x36]
   21b48: 12003e69     	and	w9, w19, #0xffff
   21b4c: 6b0a013f     	cmp	w9, w10
   21b50: 54002863     	b.lo	0x2205c <tpd_touch_press+0x648>
   21b54: 79488b6a     	ldrh	w10, [x27, #0x444]
   21b58: 3940df6b     	ldrb	w11, [x27, #0x37]
   21b5c: 4b0b014a     	sub	w10, w10, w11
   21b60: 6b09015f     	cmp	w10, w9
   21b64: 540027cb     	b.lt	0x2205c <tpd_touch_press+0x648>
   21b68: 3940e36a     	ldrb	w10, [x27, #0x38]
   21b6c: 3400282a     	cbz	w10, 0x22070 <tpd_touch_press+0x65c>
   21b70: 79405f6a     	ldrh	w10, [x27, #0x2e]
   21b74: 6b0a013f     	cmp	w9, w10
   21b78: 540027c9     	b.ls	0x22070 <tpd_touch_press+0x65c>
   21b7c: 79405b69     	ldrh	w9, [x27, #0x2c]
   21b80: 6b09039f     	cmp	w28, w9
   21b84: 54002662     	b.hs	0x22050 <tpd_touch_press+0x63c>
   21b88: 14000135     	b	0x2205c <tpd_touch_press+0x648>
   21b8c: 2a1703e0     	mov	w0, w23
   21b90: 2a1303e1     	mov	w1, w19
   21b94: 94000000     	bl	0x21b94 <tpd_touch_press+0x180>
		0000000000021b94:  R_AARCH64_CALL26	point_is_in_limit_area
   21b98: 37000580     	tbnz	w0, #0x0, 0x21c48 <tpd_touch_press+0x234>
   21b9c: f9400388     	ldr	x8, [x28]
		0000000000021b9c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21ba0: 39409509     	ldrb	w9, [x8, #0x25]
   21ba4: 340013e9     	cbz	w9, 0x21e20 <tpd_touch_press+0x40c>
   21ba8: b9401109     	ldr	w9, [x8, #0x10]
   21bac: 121e7929     	and	w9, w9, #0xfffffffd
   21bb0: 7100053f     	cmp	w9, #0x1
   21bb4: 54000381     	b.ne	0x21c24 <tpd_touch_press+0x210>
   21bb8: 3940d10a     	ldrb	w10, [x8, #0x34]
   21bbc: 12003ee9     	and	w9, w23, #0xffff
   21bc0: 6b0a013f     	cmp	w9, w10
   21bc4: 54000423     	b.lo	0x21c48 <tpd_touch_press+0x234>
   21bc8: 7948850a     	ldrh	w10, [x8, #0x442]
   21bcc: 3940d50b     	ldrb	w11, [x8, #0x35]
   21bd0: 4b0b014b     	sub	w11, w10, w11
   21bd4: 6b09017f     	cmp	w11, w9
   21bd8: 5400038b     	b.lt	0x21c48 <tpd_touch_press+0x234>
   21bdc: 3940d90c     	ldrb	w12, [x8, #0x36]
   21be0: 12003e6b     	and	w11, w19, #0xffff
   21be4: 6b0c017f     	cmp	w11, w12
   21be8: 54000303     	b.lo	0x21c48 <tpd_touch_press+0x234>
   21bec: 7948890c     	ldrh	w12, [x8, #0x444]
   21bf0: 3940dd0d     	ldrb	w13, [x8, #0x37]
   21bf4: 4b0d018c     	sub	w12, w12, w13
   21bf8: 6b0b019f     	cmp	w12, w11
   21bfc: 5400026b     	b.lt	0x21c48 <tpd_touch_press+0x234>
   21c00: 3940e10c     	ldrb	w12, [x8, #0x38]
   21c04: 340010ec     	cbz	w12, 0x21e20 <tpd_touch_press+0x40c>
   21c08: 79405d0c     	ldrh	w12, [x8, #0x2e]
   21c0c: 6b0c017f     	cmp	w11, w12
   21c10: 54001089     	b.ls	0x21e20 <tpd_touch_press+0x40c>
   21c14: 79405908     	ldrh	w8, [x8, #0x2c]
   21c18: 6b08013f     	cmp	w9, w8
   21c1c: 54000102     	b.hs	0x21c3c <tpd_touch_press+0x228>
   21c20: 1400000a     	b	0x21c48 <tpd_touch_press+0x234>
   21c24: 3940d10a     	ldrb	w10, [x8, #0x34]
   21c28: 12003ee9     	and	w9, w23, #0xffff
   21c2c: 6b0a013f     	cmp	w9, w10
   21c30: 540000c3     	b.lo	0x21c48 <tpd_touch_press+0x234>
   21c34: 7948850a     	ldrh	w10, [x8, #0x442]
   21c38: 3940d508     	ldrb	w8, [x8, #0x35]
   21c3c: 4b080148     	sub	w8, w10, w8
   21c40: 6b09011f     	cmp	w8, w9
   21c44: 54000eea     	b.ge	0x21e20 <tpd_touch_press+0x40c>
   21c48: 2a1703e0     	mov	w0, w23
   21c4c: 2a1303e1     	mov	w1, w19
   21c50: 94000000     	bl	0x21c50 <tpd_touch_press+0x23c>
		0000000000021c50:  R_AARCH64_CALL26	point_is_in_limit_area
   21c54: 93407c00     	sxtw	x0, w0
   21c58: 370006a0     	tbnz	w0, #0x0, 0x21d2c <tpd_touch_press+0x318>
   21c5c: f9400388     	ldr	x8, [x28]
		0000000000021c5c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21c60: 39409509     	ldrb	w9, [x8, #0x25]
   21c64: 34000649     	cbz	w9, 0x21d2c <tpd_touch_press+0x318>
   21c68: b9401109     	ldr	w9, [x8, #0x10]
   21c6c: 121e7929     	and	w9, w9, #0xfffffffd
   21c70: 7100053f     	cmp	w9, #0x1
   21c74: 540004a1     	b.ne	0x21d08 <tpd_touch_press+0x2f4>
   21c78: 3940d10a     	ldrb	w10, [x8, #0x34]
   21c7c: 12003ee9     	and	w9, w23, #0xffff
   21c80: 6b0a013f     	cmp	w9, w10
   21c84: 540006c3     	b.lo	0x21d5c <tpd_touch_press+0x348>
   21c88: 7948850a     	ldrh	w10, [x8, #0x442]
   21c8c: 3940d50b     	ldrb	w11, [x8, #0x35]
   21c90: 4b0b014b     	sub	w11, w10, w11
   21c94: 6b09017f     	cmp	w11, w9
   21c98: 5400062b     	b.lt	0x21d5c <tpd_touch_press+0x348>
   21c9c: 3940d90c     	ldrb	w12, [x8, #0x36]
   21ca0: 12003e6b     	and	w11, w19, #0xffff
   21ca4: 6b0c017f     	cmp	w11, w12
   21ca8: 540005a3     	b.lo	0x21d5c <tpd_touch_press+0x348>
   21cac: 7948890c     	ldrh	w12, [x8, #0x444]
   21cb0: 3940dd0d     	ldrb	w13, [x8, #0x37]
   21cb4: 4b0d018c     	sub	w12, w12, w13
   21cb8: 6b0b019f     	cmp	w12, w11
   21cbc: 5400050b     	b.lt	0x21d5c <tpd_touch_press+0x348>
   21cc0: 3940e10c     	ldrb	w12, [x8, #0x38]
   21cc4: 3400034c     	cbz	w12, 0x21d2c <tpd_touch_press+0x318>
   21cc8: 79405d0c     	ldrh	w12, [x8, #0x2e]
   21ccc: 6b0c017f     	cmp	w11, w12
   21cd0: 540002e9     	b.ls	0x21d2c <tpd_touch_press+0x318>
   21cd4: 79405908     	ldrh	w8, [x8, #0x2c]
   21cd8: 6b08013f     	cmp	w9, w8
   21cdc: 54000222     	b.hs	0x21d20 <tpd_touch_press+0x30c>
   21ce0: 1400001f     	b	0x21d5c <tpd_touch_press+0x348>
   21ce4: 12003ed9     	and	w25, w22, #0xffff
   21ce8: 90000000     	adrp	x0, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021ce8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A160
   21cec: 91000000     	add	x0, x0, #0x0
		0000000000021cec:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A160
   21cf0: 90000001     	adrp	x1, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23a5
   21cf4: 91000021     	add	x1, x1, #0x0
		0000000000021cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23a5
   21cf8: 2a1903e2     	mov	w2, w25
   21cfc: 94000000     	bl	0x21cfc <tpd_touch_press+0x2e8>
		0000000000021cfc:  R_AARCH64_CALL26	_printk
   21d00: 93407c00     	sxtw	x0, w0
   21d04: 140000a0     	b	0x21f84 <tpd_touch_press+0x570>
   21d08: 3940d10a     	ldrb	w10, [x8, #0x34]
   21d0c: 12003ee9     	and	w9, w23, #0xffff
   21d10: 6b0a013f     	cmp	w9, w10
   21d14: 54000243     	b.lo	0x21d5c <tpd_touch_press+0x348>
   21d18: 7948850a     	ldrh	w10, [x8, #0x442]
   21d1c: 3940d508     	ldrb	w8, [x8, #0x35]
   21d20: 4b080148     	sub	w8, w10, w8
   21d24: 6b09011f     	cmp	w8, w9
   21d28: 540001ab     	b.lt	0x21d5c <tpd_touch_press+0x348>
   21d2c: 39415748     	ldrb	w8, [x26, #0x55]
   21d30: 36001a48     	tbz	w8, #0x0, 0x22078 <tpd_touch_press+0x664>
   21d34: 39414748     	ldrb	w8, [x26, #0x51]
   21d38: 370005c8     	tbnz	w8, #0x0, 0x21df0 <tpd_touch_press+0x3dc>
   21d3c: 12003ee8     	and	w8, w23, #0xffff
   21d40: 12003e69     	and	w9, w19, #0xffff
   21d44: 39002355     	strb	w21, [x26, #0x8]
   21d48: 29002748     	stp	w8, w9, [x26]
   21d4c: 52800028     	mov	w8, #0x1                // =1
   21d50: 39002754     	strb	w20, [x26, #0x9]
   21d54: 39014748     	strb	w8, [x26, #0x51]
   21d58: 1400008b     	b	0x21f84 <tpd_touch_press+0x570>
   21d5c: 39415748     	ldrb	w8, [x26, #0x55]
   21d60: 36002328     	tbz	w8, #0x0, 0x221c4 <tpd_touch_press+0x7b0>
   21d64: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021d64:  R_AARCH64_ADR_PREL_PG_HI21	byte_30EFB
   21d68: 39400108     	ldrb	w8, [x8]
		0000000000021d68:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30EFB
   21d6c: 370003a8     	tbnz	w8, #0x0, 0x21de0 <tpd_touch_press+0x3cc>
   21d70: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021d70:  R_AARCH64_ADR_PREL_PG_HI21	byte_30F83
   21d74: 39400108     	ldrb	w8, [x8]
		0000000000021d74:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30F83
   21d78: 37000348     	tbnz	w8, #0x0, 0x21de0 <tpd_touch_press+0x3cc>
   21d7c: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021d7c:  R_AARCH64_ADR_PREL_PG_HI21	byte_3100B
   21d80: 39400108     	ldrb	w8, [x8]
		0000000000021d80:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3100B
   21d84: 370002e8     	tbnz	w8, #0x0, 0x21de0 <tpd_touch_press+0x3cc>
   21d88: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021d88:  R_AARCH64_ADR_PREL_PG_HI21	byte_31093
   21d8c: 39400108     	ldrb	w8, [x8]
		0000000000021d8c:  R_AARCH64_LDST8_ABS_LO12_NC	byte_31093
   21d90: 37000288     	tbnz	w8, #0x0, 0x21de0 <tpd_touch_press+0x3cc>
   21d94: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021d94:  R_AARCH64_ADR_PREL_PG_HI21	byte_3111B
   21d98: 39400108     	ldrb	w8, [x8]
		0000000000021d98:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3111B
   21d9c: 37000228     	tbnz	w8, #0x0, 0x21de0 <tpd_touch_press+0x3cc>
   21da0: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021da0:  R_AARCH64_ADR_PREL_PG_HI21	byte_311A3
   21da4: 39400108     	ldrb	w8, [x8]
		0000000000021da4:  R_AARCH64_LDST8_ABS_LO12_NC	byte_311A3
   21da8: 370001c8     	tbnz	w8, #0x0, 0x21de0 <tpd_touch_press+0x3cc>
   21dac: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021dac:  R_AARCH64_ADR_PREL_PG_HI21	byte_3122B
   21db0: 39400108     	ldrb	w8, [x8]
		0000000000021db0:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3122B
   21db4: 37000168     	tbnz	w8, #0x0, 0x21de0 <tpd_touch_press+0x3cc>
   21db8: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021db8:  R_AARCH64_ADR_PREL_PG_HI21	byte_312B3
   21dbc: 39400108     	ldrb	w8, [x8]
		0000000000021dbc:  R_AARCH64_LDST8_ABS_LO12_NC	byte_312B3
   21dc0: 37000108     	tbnz	w8, #0x0, 0x21de0 <tpd_touch_press+0x3cc>
   21dc4: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021dc4:  R_AARCH64_ADR_PREL_PG_HI21	byte_3133B
   21dc8: 39400108     	ldrb	w8, [x8]
		0000000000021dc8:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3133B
   21dcc: 370000a8     	tbnz	w8, #0x0, 0x21de0 <tpd_touch_press+0x3cc>
   21dd0: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021dd0:  R_AARCH64_ADR_PREL_PG_HI21	byte_313C3
   21dd4: 39400108     	ldrb	w8, [x8]
		0000000000021dd4:  R_AARCH64_LDST8_ABS_LO12_NC	byte_313C3
   21dd8: 7100051f     	cmp	w8, #0x1
   21ddc: 54fffac1     	b.ne	0x21d34 <tpd_touch_press+0x320>
   21de0: 39414748     	ldrb	w8, [x26, #0x51]
   21de4: 52800029     	mov	w9, #0x1                // =1
   21de8: 39015b49     	strb	w9, [x26, #0x56]
   21dec: 3607fa88     	tbz	w8, #0x0, 0x21d3c <tpd_touch_press+0x328>
   21df0: b9400348     	ldr	w8, [x26]
   21df4: 4b372108     	sub	w8, w8, w23, uxth
   21df8: 7100011f     	cmp	w8, #0x0
   21dfc: 5a885508     	cneg	w8, w8, mi
   21e00: 7101911f     	cmp	w8, #0x64
   21e04: 540000ec     	b.gt	0x21e20 <tpd_touch_press+0x40c>
   21e08: b9400748     	ldr	w8, [x26, #0x4]
   21e0c: 4b332108     	sub	w8, w8, w19, uxth
   21e10: 7100011f     	cmp	w8, #0x0
   21e14: 5a885508     	cneg	w8, w8, mi
   21e18: 7101911f     	cmp	w8, #0x64
   21e1c: 54000b4d     	b.le	0x21f84 <tpd_touch_press+0x570>
   21e20: 39414748     	ldrb	w8, [x26, #0x51]
   21e24: 37000068     	tbnz	w8, #0x0, 0x21e30 <tpd_touch_press+0x41c>
   21e28: 39014b5f     	strb	wzr, [x26, #0x52]
   21e2c: 14000008     	b	0x21e4c <tpd_touch_press+0x438>
   21e30: 12003ee8     	and	w8, w23, #0xffff
   21e34: 12003e69     	and	w9, w19, #0xffff
   21e38: 39005355     	strb	w21, [x26, #0x14]
   21e3c: 2901a748     	stp	w8, w9, [x26, #0xc]
   21e40: 52800028     	mov	w8, #0x1                // =1
   21e44: 39005754     	strb	w20, [x26, #0x15]
   21e48: 39014b48     	strb	w8, [x26, #0x52]
   21e4c: 39414b48     	ldrb	w8, [x26, #0x52]
   21e50: 52800029     	mov	w9, #0x1                // =1
   21e54: 39014349     	strb	w9, [x26, #0x50]
   21e58: 7100051f     	cmp	w8, #0x1
   21e5c: 540002c1     	b.ne	0x21eb4 <tpd_touch_press+0x4a0>
   21e60: 39414f48     	ldrb	w8, [x26, #0x53]
   21e64: 36000a48     	tbz	w8, #0x0, 0x21fac <tpd_touch_press+0x598>
   21e68: 29400b41     	ldp	w1, w2, [x26]
   21e6c: aa1803e0     	mov	x0, x24
   21e70: 2a1603e3     	mov	w3, w22
   21e74: 2a1503e4     	mov	w4, w21
   21e78: 2a1403e5     	mov	w5, w20
   21e7c: 94000000     	bl	0x21e7c <tpd_touch_press+0x468>
		0000000000021e7c:  R_AARCH64_CALL26	tpd_touch_report
   21e80: aa1803e0     	mov	x0, x24
   21e84: 2a1f03e1     	mov	w1, wzr
   21e88: 2a1f03e2     	mov	w2, wzr
   21e8c: 2a1f03e3     	mov	w3, wzr
   21e90: 94000000     	bl	0x21e90 <tpd_touch_press+0x47c>
		0000000000021e90:  R_AARCH64_CALL26	input_event
   21e94: 52807d00     	mov	w0, #0x3e8              // =1000
   21e98: 5280bb81     	mov	w1, #0x5dc              // =1500
   21e9c: 52800042     	mov	w2, #0x2                // =2
   21ea0: 94000000     	bl	0x21ea0 <tpd_touch_press+0x48c>
		0000000000021ea0:  R_AARCH64_CALL26	usleep_range_state
   21ea4: 39414f48     	ldrb	w8, [x26, #0x53]
   21ea8: 36000a88     	tbz	w8, #0x0, 0x21ff8 <tpd_touch_press+0x5e4>
   21eac: 2941a748     	ldp	w8, w9, [x26, #0xc]
   21eb0: 14000029     	b	0x21f54 <tpd_touch_press+0x540>
   21eb4: 39409369     	ldrb	w9, [x27, #0x24]
   21eb8: 39414f48     	ldrb	w8, [x26, #0x53]
   21ebc: 34000469     	cbz	w9, 0x21f48 <tpd_touch_press+0x534>
   21ec0: 36001308     	tbz	w8, #0x0, 0x22120 <tpd_touch_press+0x70c>
   21ec4: 39415f48     	ldrb	w8, [x26, #0x57]
   21ec8: 7100051f     	cmp	w8, #0x1
   21ecc: 54000401     	b.ne	0x21f4c <tpd_touch_press+0x538>
   21ed0: 90000008     	adrp	x8, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021ed0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   21ed4: f9400108     	ldr	x8, [x8]
		0000000000021ed4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   21ed8: f9403349     	ldr	x9, [x26, #0x60]
   21edc: cb090100     	sub	x0, x8, x9
   21ee0: 94000000     	bl	0x21ee0 <tpd_touch_press+0x4cc>
		0000000000021ee0:  R_AARCH64_CALL26	jiffies_to_msecs
   21ee4: b9401b48     	ldr	w8, [x26, #0x18]
   21ee8: 39409369     	ldrb	w9, [x27, #0x24]
   21eec: 12003ef9     	and	w25, w23, #0xffff
   21ef0: 6b190108     	subs	w8, w8, w25
   21ef4: 0b09052a     	add	w10, w9, w9, lsl #1
   21ef8: 5a88550b     	cneg	w11, w8, mi
   21efc: 7101941f     	cmp	w0, #0x65
   21f00: 1a893148     	csel	w8, w10, w9, lo
   21f04: 6b08017f     	cmp	w11, w8
   21f08: 540000ec     	b.gt	0x21f24 <tpd_touch_press+0x510>
   21f0c: b9401f49     	ldr	w9, [x26, #0x1c]
   21f10: 4b332129     	sub	w9, w9, w19, uxth
   21f14: 7100013f     	cmp	w9, #0x0
   21f18: 5a895529     	cneg	w9, w9, mi
   21f1c: 6b08013f     	cmp	w9, w8
   21f20: 5400042d     	b.le	0x21fa4 <tpd_touch_press+0x590>
   21f24: aa1803e0     	mov	x0, x24
   21f28: 2a1703e1     	mov	w1, w23
   21f2c: 2a1303e2     	mov	w2, w19
   21f30: 2a1603e3     	mov	w3, w22
   21f34: 2a1503e4     	mov	w4, w21
   21f38: 2a1403e5     	mov	w5, w20
   21f3c: 94000000     	bl	0x21f3c <tpd_touch_press+0x528>
		0000000000021f3c:  R_AARCH64_CALL26	tpd_touch_report
   21f40: 39015f5f     	strb	wzr, [x26, #0x57]
   21f44: 1400000c     	b	0x21f74 <tpd_touch_press+0x560>
   21f48: 36001188     	tbz	w8, #0x0, 0x22178 <tpd_touch_press+0x764>
   21f4c: 2a1703e8     	mov	w8, w23
   21f50: 2a1303e9     	mov	w9, w19
   21f54: 2a0903e2     	mov	w2, w9
   21f58: 2a0803e1     	mov	w1, w8
   21f5c: aa1803e0     	mov	x0, x24
   21f60: 2a1603e3     	mov	w3, w22
   21f64: 2a1503e4     	mov	w4, w21
   21f68: 2a1403e5     	mov	w5, w20
   21f6c: 94000000     	bl	0x21f6c <tpd_touch_press+0x558>
		0000000000021f6c:  R_AARCH64_CALL26	tpd_touch_report
   21f70: 12003ef9     	and	w25, w23, #0xffff
   21f74: 93407c00     	sxtw	x0, w0
   21f78: 12003e68     	and	w8, w19, #0xffff
   21f7c: 39014b5f     	strb	wzr, [x26, #0x52]
   21f80: 2904a359     	stp	w25, w8, [x26, #0x24]
   21f84: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   21f88: a94457f6     	ldp	x22, x21, [sp, #0x40]
   21f8c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   21f90: a94267fa     	ldp	x26, x25, [sp, #0x20]
   21f94: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   21f98: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   21f9c: d50323bf     	autiasp
   21fa0: d65f03c0     	ret
   21fa4: 2a0003e0     	mov	w0, w0
   21fa8: 17fffff4     	b	0x21f78 <tpd_touch_press+0x564>
   21fac: 52800028     	mov	w8, #0x1                // =1
   21fb0: 90000009     	adrp	x9, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021fb0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   21fb4: 2a1903e0     	mov	w0, w25
   21fb8: 39014f48     	strb	w8, [x26, #0x53]
   21fbc: f9400129     	ldr	x9, [x9]
		0000000000021fbc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   21fc0: 39016b48     	strb	w8, [x26, #0x5a]
   21fc4: f9003349     	str	x9, [x26, #0x60]
   21fc8: b9448f68     	ldr	w8, [x27, #0x48c]
   21fcc: 11000508     	add	w8, w8, #0x1
   21fd0: b9048f68     	str	w8, [x27, #0x48c]
   21fd4: 29402748     	ldp	w8, w9, [x26]
   21fd8: 29032748     	stp	w8, w9, [x26, #0x18]
   21fdc: 94000000     	bl	0x21fdc <tpd_touch_press+0x5c8>
		0000000000021fdc:  R_AARCH64_CALL26	point_report_reset
   21fe0: b9400342     	ldr	w2, [x26]
   21fe4: 90000000     	adrp	x0, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021fe4:  R_AARCH64_ADR_PREL_PG_HI21	unk_37C4E
   21fe8: 91000000     	add	x0, x0, #0x0
		0000000000021fe8:  R_AARCH64_ADD_ABS_LO12_NC	unk_37C4E
   21fec: 2a1903e1     	mov	w1, w25
   21ff0: 94000000     	bl	0x21ff0 <tpd_touch_press+0x5dc>
		0000000000021ff0:  R_AARCH64_CALL26	_printk
   21ff4: 17ffff9d     	b	0x21e68 <tpd_touch_press+0x454>
   21ff8: 52800028     	mov	w8, #0x1                // =1
   21ffc: 90000009     	adrp	x9, 0x21000 <tpd_set_palm_mode+0x20>
		0000000000021ffc:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   22000: 2a1903e0     	mov	w0, w25
   22004: 39014f48     	strb	w8, [x26, #0x53]
   22008: f9400129     	ldr	x9, [x9]
		0000000000022008:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2200c: 39016b48     	strb	w8, [x26, #0x5a]
   22010: f9003349     	str	x9, [x26, #0x60]
   22014: b9448f68     	ldr	w8, [x27, #0x48c]
   22018: 11000508     	add	w8, w8, #0x1
   2201c: b9048f68     	str	w8, [x27, #0x48c]
   22020: 29402748     	ldp	w8, w9, [x26]
   22024: 29032748     	stp	w8, w9, [x26, #0x18]
   22028: 94000000     	bl	0x22028 <tpd_touch_press+0x614>
		0000000000022028:  R_AARCH64_CALL26	point_report_reset
   2202c: b9400f42     	ldr	w2, [x26, #0xc]
   22030: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022030:  R_AARCH64_ADR_PREL_PG_HI21	unk_37C4E
   22034: 91000000     	add	x0, x0, #0x0
		0000000000022034:  R_AARCH64_ADD_ABS_LO12_NC	unk_37C4E
   22038: 2a1903e1     	mov	w1, w25
   2203c: 94000000     	bl	0x2203c <tpd_touch_press+0x628>
		000000000002203c:  R_AARCH64_CALL26	_printk
   22040: 17ffff9b     	b	0x21eac <tpd_touch_press+0x498>
   22044: 6b09039f     	cmp	w28, w9
   22048: 540000a3     	b.lo	0x2205c <tpd_touch_press+0x648>
   2204c: 3940d769     	ldrb	w9, [x27, #0x35]
   22050: 4b090108     	sub	w8, w8, w9
   22054: 6b1c011f     	cmp	w8, w28
   22058: 540000ca     	b.ge	0x22070 <tpd_touch_press+0x65c>
   2205c: 39416348     	ldrb	w8, [x26, #0x58]
   22060: 7100051f     	cmp	w8, #0x1
   22064: 54000201     	b.ne	0x220a4 <tpd_touch_press+0x690>
   22068: f9403748     	ldr	x8, [x26, #0x68]
   2206c: 14000016     	b	0x220c4 <tpd_touch_press+0x6b0>
   22070: 3901635f     	strb	wzr, [x26, #0x58]
   22074: 17ffff76     	b	0x21e4c <tpd_touch_press+0x438>
   22078: 52800028     	mov	w8, #0x1                // =1
   2207c: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		000000000002207c:  R_AARCH64_ADR_PREL_PG_HI21	unk_36572
   22080: 91000000     	add	x0, x0, #0x0
		0000000000022080:  R_AARCH64_ADD_ABS_LO12_NC	unk_36572
   22084: 12003ee2     	and	w2, w23, #0xffff
   22088: 2a1903e1     	mov	w1, w25
   2208c: 39015748     	strb	w8, [x26, #0x55]
   22090: 94000000     	bl	0x22090 <tpd_touch_press+0x67c>
		0000000000022090:  R_AARCH64_CALL26	_printk
   22094: 39414748     	ldrb	w8, [x26, #0x51]
   22098: 93407c00     	sxtw	x0, w0
   2209c: 3707eaa8     	tbnz	w8, #0x0, 0x21df0 <tpd_touch_press+0x3dc>
   220a0: 17ffff27     	b	0x21d3c <tpd_touch_press+0x328>
   220a4: 12003e68     	and	w8, w19, #0xffff
   220a8: 52800029     	mov	w9, #0x1                // =1
   220ac: 9000000a     	adrp	x10, 0x22000 <tpd_touch_press+0x5ec>
		00000000000220ac:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   220b0: 2906235c     	stp	w28, w8, [x26, #0x30]
   220b4: 39016349     	strb	w9, [x26, #0x58]
   220b8: f9400148     	ldr	x8, [x10]
		00000000000220b8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   220bc: f9400149     	ldr	x9, [x10]
		00000000000220bc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   220c0: f9003749     	str	x9, [x26, #0x68]
   220c4: 90000009     	adrp	x9, 0x22000 <tpd_touch_press+0x5ec>
		00000000000220c4:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   220c8: f9400129     	ldr	x9, [x9]
		00000000000220c8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   220cc: cb080120     	sub	x0, x9, x8
   220d0: 94000000     	bl	0x220d0 <tpd_touch_press+0x6bc>
		00000000000220d0:  R_AARCH64_CALL26	jiffies_to_msecs
   220d4: 710c841f     	cmp	w0, #0x321
   220d8: 54ffeba3     	b.lo	0x21e4c <tpd_touch_press+0x438>
   220dc: b9403348     	ldr	w8, [x26, #0x30]
   220e0: 6b1c0108     	subs	w8, w8, w28
   220e4: 5a885508     	cneg	w8, w8, mi
   220e8: 7100511f     	cmp	w8, #0x14
   220ec: 12003e68     	and	w8, w19, #0xffff
   220f0: 540003ac     	b.gt	0x22164 <tpd_touch_press+0x750>
   220f4: b9403749     	ldr	w9, [x26, #0x34]
   220f8: 6b080129     	subs	w9, w9, w8
   220fc: 5a895529     	cneg	w9, w9, mi
   22100: 7100513f     	cmp	w9, #0x14
   22104: 5400030c     	b.gt	0x22164 <tpd_touch_press+0x750>
   22108: f9404340     	ldr	x0, [x26, #0x80]
   2210c: 2a1603e1     	mov	w1, w22
   22110: 2a1f03e2     	mov	w2, wzr
   22114: 94000000     	bl	0x22114 <tpd_touch_press+0x700>
		0000000000022114:  R_AARCH64_CALL26	tpd_touch_release
   22118: 3901635f     	strb	wzr, [x26, #0x58]
   2211c: 17ffff9a     	b	0x21f84 <tpd_touch_press+0x570>
   22120: 52800028     	mov	w8, #0x1                // =1
   22124: 2a1903e0     	mov	w0, w25
   22128: 39014f48     	strb	w8, [x26, #0x53]
   2212c: b9448f68     	ldr	w8, [x27, #0x48c]
   22130: 11000508     	add	w8, w8, #0x1
   22134: b9048f68     	str	w8, [x27, #0x48c]
   22138: 94000000     	bl	0x22138 <tpd_touch_press+0x724>
		0000000000022138:  R_AARCH64_CALL26	point_report_reset
   2213c: 12003efc     	and	w28, w23, #0xffff
   22140: 12003e68     	and	w8, w19, #0xffff
   22144: 52800029     	mov	w9, #0x1                // =1
   22148: 2903235c     	stp	w28, w8, [x26, #0x18]
   2214c: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		000000000002214c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   22150: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022150:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C42D
   22154: 91000000     	add	x0, x0, #0x0
		0000000000022154:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C42D
   22158: f9400108     	ldr	x8, [x8]
		0000000000022158:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2215c: 39015f49     	strb	w9, [x26, #0x57]
   22160: 14000014     	b	0x221b0 <tpd_touch_press+0x79c>
   22164: 2906235c     	stp	w28, w8, [x26, #0x30]
   22168: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022168:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   2216c: f9400108     	ldr	x8, [x8]
		000000000002216c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22170: f9003748     	str	x8, [x26, #0x68]
   22174: 17ffff36     	b	0x21e4c <tpd_touch_press+0x438>
   22178: 52800028     	mov	w8, #0x1                // =1
   2217c: 12003efc     	and	w28, w23, #0xffff
   22180: 2a1903e0     	mov	w0, w25
   22184: 39014f48     	strb	w8, [x26, #0x53]
   22188: b9448f68     	ldr	w8, [x27, #0x48c]
   2218c: 11000508     	add	w8, w8, #0x1
   22190: b9048f68     	str	w8, [x27, #0x48c]
   22194: 12003e68     	and	w8, w19, #0xffff
   22198: 2903235c     	stp	w28, w8, [x26, #0x18]
   2219c: 94000000     	bl	0x2219c <tpd_touch_press+0x788>
		000000000002219c:  R_AARCH64_CALL26	point_report_reset
   221a0: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		00000000000221a0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   221a4: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000221a4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A78C
   221a8: 91000000     	add	x0, x0, #0x0
		00000000000221a8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A78C
   221ac: f9400108     	ldr	x8, [x8]
		00000000000221ac:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   221b0: 2a1c03e2     	mov	w2, w28
   221b4: aa1903e1     	mov	x1, x25
   221b8: f9003348     	str	x8, [x26, #0x60]
   221bc: 94000000     	bl	0x221bc <tpd_touch_press+0x7a8>
		00000000000221bc:  R_AARCH64_CALL26	_printk
   221c0: 17ffff63     	b	0x21f4c <tpd_touch_press+0x538>
   221c4: 52800028     	mov	w8, #0x1                // =1
   221c8: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000221c8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A806
   221cc: 91000000     	add	x0, x0, #0x0
		00000000000221cc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A806
   221d0: 39015748     	strb	w8, [x26, #0x55]
   221d4: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		00000000000221d4:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   221d8: 12003ee2     	and	w2, w23, #0xffff
   221dc: f9400108     	ldr	x8, [x8]
		00000000000221dc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   221e0: 2a1903e1     	mov	w1, w25
   221e4: f9003b48     	str	x8, [x26, #0x70]
   221e8: 94000000     	bl	0x221e8 <tpd_touch_press+0x7d4>
		00000000000221e8:  R_AARCH64_CALL26	_printk
   221ec: 93407c00     	sxtw	x0, w0
   221f0: 17fffedd     	b	0x21d64 <tpd_touch_press+0x350>
