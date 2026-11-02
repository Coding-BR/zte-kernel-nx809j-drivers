
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021910 <tpd_touch_press>:
   21910: d503233f     	paciasp
   21914: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   21918: a9016ffc     	stp	x28, x27, [sp, #0x10]
   2191c: a90267fa     	stp	x26, x25, [sp, #0x20]
   21920: a9035ff8     	stp	x24, x23, [sp, #0x30]
   21924: a90457f6     	stp	x22, x21, [sp, #0x40]
   21928: a9054ff4     	stp	x20, x19, [sp, #0x50]
   2192c: 910003fd     	mov	x29, sp
   21930: 9000001c     	adrp	x28, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021930:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   21934: 12003c28     	and	w8, w1, #0xffff
   21938: 721f383f     	tst	w1, #0xfffe
   2193c: f940039b     	ldr	x27, [x28]
		000000000002193c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21940: 12003c4a     	and	w10, w2, #0xffff
   21944: 1a9f1508     	csinc	w8, w8, wzr, ne
   21948: 721f385f     	tst	w2, #0xfffe
   2194c: 2a0303f6     	mov	w22, w3
   21950: b9401369     	ldr	w9, [x27, #0x10]
   21954: 1a9f154a     	csinc	w10, w10, wzr, ne
   21958: 7100013f     	cmp	w9, #0x0
   2195c: 1a8a0053     	csel	w19, w2, w10, eq
   21960: 1a880037     	csel	w23, w1, w8, eq
   21964: b40013e0     	cbz	x0, 0x21be0 <tpd_touch_press+0x2d0>
   21968: 12003ed9     	and	w25, w22, #0xffff
   2196c: 71002b3f     	cmp	w25, #0xa
   21970: 540013a2     	b.hs	0x21be4 <tpd_touch_press+0x2d4>
   21974: 0b191328     	add	w8, w25, w25, lsl #4
   21978: 90000009     	adrp	x9, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021978:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   2197c: 91000129     	add	x9, x9, #0x0
		000000000002197c:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   21980: 2a0503f4     	mov	w20, w5
   21984: 2a0403f5     	mov	w21, w4
   21988: aa0003f8     	mov	x24, x0
   2198c: 531d7108     	lsl	w8, w8, #3
   21990: 8b08013a     	add	x26, x9, x8
   21994: 39414348     	ldrb	w8, [x26, #0x50]
   21998: f9004340     	str	x0, [x26, #0x80]
   2199c: 7100051f     	cmp	w8, #0x1
   219a0: 54000741     	b.ne	0x21a88 <tpd_touch_press+0x178>
   219a4: 39409768     	ldrb	w8, [x27, #0x25]
   219a8: 34001d08     	cbz	w8, 0x21d48 <tpd_touch_press+0x438>
   219ac: 39416748     	ldrb	w8, [x26, #0x59]
   219b0: 37001cc8     	tbnz	w8, #0x0, 0x21d48 <tpd_touch_press+0x438>
   219b4: b9401368     	ldr	w8, [x27, #0x10]
   219b8: 121e7908     	and	w8, w8, #0xfffffffd
   219bc: 7100051f     	cmp	w8, #0x1
   219c0: 54001c40     	b.eq	0x21d48 <tpd_touch_press+0x438>
   219c4: 79488768     	ldrh	w8, [x27, #0x442]
   219c8: 12003efc     	and	w28, w23, #0xffff
   219cc: 53027d09     	lsr	w9, w8, #2
   219d0: 6b1c013f     	cmp	w9, w28
   219d4: 54000102     	b.hs	0x219f4 <tpd_touch_press+0xe4>
   219d8: 0b08050a     	add	w10, w8, w8, lsl #1
   219dc: 6b4a0b9f     	cmp	w28, w10, lsr #2
   219e0: 540000a2     	b.hs	0x219f4 <tpd_touch_press+0xe4>
   219e4: 52800028     	mov	w8, #0x1                // =1
   219e8: 39016748     	strb	w8, [x26, #0x59]
   219ec: 79488768     	ldrh	w8, [x27, #0x442]
   219f0: 53027d09     	lsr	w9, w8, #2
   219f4: b9401b4a     	ldr	w10, [x26, #0x18]
   219f8: 6b09015f     	cmp	w10, w9
   219fc: 5400008b     	b.lt	0x21a0c <tpd_touch_press+0xfc>
   21a00: 0b080509     	add	w9, w8, w8, lsl #1
   21a04: 6b49095f     	cmp	w10, w9, lsr #2
   21a08: 54001a09     	b.ls	0x21d48 <tpd_touch_press+0x438>
   21a0c: 39409769     	ldrb	w9, [x27, #0x25]
   21a10: 34002ae9     	cbz	w9, 0x21f6c <tpd_touch_press+0x65c>
   21a14: b9401369     	ldr	w9, [x27, #0x10]
   21a18: 121e792a     	and	w10, w9, #0xfffffffd
   21a1c: 3940d369     	ldrb	w9, [x27, #0x34]
   21a20: 7100055f     	cmp	w10, #0x1
   21a24: 540028e1     	b.ne	0x21f40 <tpd_touch_press+0x630>
   21a28: 6b09039f     	cmp	w28, w9
   21a2c: 54002963     	b.lo	0x21f58 <tpd_touch_press+0x648>
   21a30: 3940d769     	ldrb	w9, [x27, #0x35]
   21a34: 4b090109     	sub	w9, w8, w9
   21a38: 6b1c013f     	cmp	w9, w28
   21a3c: 540028eb     	b.lt	0x21f58 <tpd_touch_press+0x648>
   21a40: 3940db6a     	ldrb	w10, [x27, #0x36]
   21a44: 12003e69     	and	w9, w19, #0xffff
   21a48: 6b0a013f     	cmp	w9, w10
   21a4c: 54002863     	b.lo	0x21f58 <tpd_touch_press+0x648>
   21a50: 79488b6a     	ldrh	w10, [x27, #0x444]
   21a54: 3940df6b     	ldrb	w11, [x27, #0x37]
   21a58: 4b0b014a     	sub	w10, w10, w11
   21a5c: 6b09015f     	cmp	w10, w9
   21a60: 540027cb     	b.lt	0x21f58 <tpd_touch_press+0x648>
   21a64: 3940e36a     	ldrb	w10, [x27, #0x38]
   21a68: 3400282a     	cbz	w10, 0x21f6c <tpd_touch_press+0x65c>
   21a6c: 79405f6a     	ldrh	w10, [x27, #0x2e]
   21a70: 6b0a013f     	cmp	w9, w10
   21a74: 540027c9     	b.ls	0x21f6c <tpd_touch_press+0x65c>
   21a78: 79405b69     	ldrh	w9, [x27, #0x2c]
   21a7c: 6b09039f     	cmp	w28, w9
   21a80: 54002662     	b.hs	0x21f4c <tpd_touch_press+0x63c>
   21a84: 14000135     	b	0x21f58 <tpd_touch_press+0x648>
   21a88: 2a1703e0     	mov	w0, w23
   21a8c: 2a1303e1     	mov	w1, w19
   21a90: 94000000     	bl	0x21a90 <tpd_touch_press+0x180>
		0000000000021a90:  R_AARCH64_CALL26	point_is_in_limit_area
   21a94: 37000580     	tbnz	w0, #0x0, 0x21b44 <tpd_touch_press+0x234>
   21a98: f9400388     	ldr	x8, [x28]
		0000000000021a98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21a9c: 39409509     	ldrb	w9, [x8, #0x25]
   21aa0: 340013e9     	cbz	w9, 0x21d1c <tpd_touch_press+0x40c>
   21aa4: b9401109     	ldr	w9, [x8, #0x10]
   21aa8: 121e7929     	and	w9, w9, #0xfffffffd
   21aac: 7100053f     	cmp	w9, #0x1
   21ab0: 54000381     	b.ne	0x21b20 <tpd_touch_press+0x210>
   21ab4: 3940d10a     	ldrb	w10, [x8, #0x34]
   21ab8: 12003ee9     	and	w9, w23, #0xffff
   21abc: 6b0a013f     	cmp	w9, w10
   21ac0: 54000423     	b.lo	0x21b44 <tpd_touch_press+0x234>
   21ac4: 7948850a     	ldrh	w10, [x8, #0x442]
   21ac8: 3940d50b     	ldrb	w11, [x8, #0x35]
   21acc: 4b0b014b     	sub	w11, w10, w11
   21ad0: 6b09017f     	cmp	w11, w9
   21ad4: 5400038b     	b.lt	0x21b44 <tpd_touch_press+0x234>
   21ad8: 3940d90c     	ldrb	w12, [x8, #0x36]
   21adc: 12003e6b     	and	w11, w19, #0xffff
   21ae0: 6b0c017f     	cmp	w11, w12
   21ae4: 54000303     	b.lo	0x21b44 <tpd_touch_press+0x234>
   21ae8: 7948890c     	ldrh	w12, [x8, #0x444]
   21aec: 3940dd0d     	ldrb	w13, [x8, #0x37]
   21af0: 4b0d018c     	sub	w12, w12, w13
   21af4: 6b0b019f     	cmp	w12, w11
   21af8: 5400026b     	b.lt	0x21b44 <tpd_touch_press+0x234>
   21afc: 3940e10c     	ldrb	w12, [x8, #0x38]
   21b00: 340010ec     	cbz	w12, 0x21d1c <tpd_touch_press+0x40c>
   21b04: 79405d0c     	ldrh	w12, [x8, #0x2e]
   21b08: 6b0c017f     	cmp	w11, w12
   21b0c: 54001089     	b.ls	0x21d1c <tpd_touch_press+0x40c>
   21b10: 79405908     	ldrh	w8, [x8, #0x2c]
   21b14: 6b08013f     	cmp	w9, w8
   21b18: 54000102     	b.hs	0x21b38 <tpd_touch_press+0x228>
   21b1c: 1400000a     	b	0x21b44 <tpd_touch_press+0x234>
   21b20: 3940d10a     	ldrb	w10, [x8, #0x34]
   21b24: 12003ee9     	and	w9, w23, #0xffff
   21b28: 6b0a013f     	cmp	w9, w10
   21b2c: 540000c3     	b.lo	0x21b44 <tpd_touch_press+0x234>
   21b30: 7948850a     	ldrh	w10, [x8, #0x442]
   21b34: 3940d508     	ldrb	w8, [x8, #0x35]
   21b38: 4b080148     	sub	w8, w10, w8
   21b3c: 6b09011f     	cmp	w8, w9
   21b40: 54000eea     	b.ge	0x21d1c <tpd_touch_press+0x40c>
   21b44: 2a1703e0     	mov	w0, w23
   21b48: 2a1303e1     	mov	w1, w19
   21b4c: 94000000     	bl	0x21b4c <tpd_touch_press+0x23c>
		0000000000021b4c:  R_AARCH64_CALL26	point_is_in_limit_area
   21b50: 93407c00     	sxtw	x0, w0
   21b54: 370006a0     	tbnz	w0, #0x0, 0x21c28 <tpd_touch_press+0x318>
   21b58: f9400388     	ldr	x8, [x28]
		0000000000021b58:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21b5c: 39409509     	ldrb	w9, [x8, #0x25]
   21b60: 34000649     	cbz	w9, 0x21c28 <tpd_touch_press+0x318>
   21b64: b9401109     	ldr	w9, [x8, #0x10]
   21b68: 121e7929     	and	w9, w9, #0xfffffffd
   21b6c: 7100053f     	cmp	w9, #0x1
   21b70: 540004a1     	b.ne	0x21c04 <tpd_touch_press+0x2f4>
   21b74: 3940d10a     	ldrb	w10, [x8, #0x34]
   21b78: 12003ee9     	and	w9, w23, #0xffff
   21b7c: 6b0a013f     	cmp	w9, w10
   21b80: 540006c3     	b.lo	0x21c58 <tpd_touch_press+0x348>
   21b84: 7948850a     	ldrh	w10, [x8, #0x442]
   21b88: 3940d50b     	ldrb	w11, [x8, #0x35]
   21b8c: 4b0b014b     	sub	w11, w10, w11
   21b90: 6b09017f     	cmp	w11, w9
   21b94: 5400062b     	b.lt	0x21c58 <tpd_touch_press+0x348>
   21b98: 3940d90c     	ldrb	w12, [x8, #0x36]
   21b9c: 12003e6b     	and	w11, w19, #0xffff
   21ba0: 6b0c017f     	cmp	w11, w12
   21ba4: 540005a3     	b.lo	0x21c58 <tpd_touch_press+0x348>
   21ba8: 7948890c     	ldrh	w12, [x8, #0x444]
   21bac: 3940dd0d     	ldrb	w13, [x8, #0x37]
   21bb0: 4b0d018c     	sub	w12, w12, w13
   21bb4: 6b0b019f     	cmp	w12, w11
   21bb8: 5400050b     	b.lt	0x21c58 <tpd_touch_press+0x348>
   21bbc: 3940e10c     	ldrb	w12, [x8, #0x38]
   21bc0: 3400034c     	cbz	w12, 0x21c28 <tpd_touch_press+0x318>
   21bc4: 79405d0c     	ldrh	w12, [x8, #0x2e]
   21bc8: 6b0c017f     	cmp	w11, w12
   21bcc: 540002e9     	b.ls	0x21c28 <tpd_touch_press+0x318>
   21bd0: 79405908     	ldrh	w8, [x8, #0x2c]
   21bd4: 6b08013f     	cmp	w9, w8
   21bd8: 54000222     	b.hs	0x21c1c <tpd_touch_press+0x30c>
   21bdc: 1400001f     	b	0x21c58 <tpd_touch_press+0x348>
   21be0: 12003ed9     	and	w25, w22, #0xffff
   21be4: 90000000     	adrp	x0, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021be4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A160
   21be8: 91000000     	add	x0, x0, #0x0
		0000000000021be8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A160
   21bec: 90000001     	adrp	x1, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x258f
   21bf0: 91000021     	add	x1, x1, #0x0
		0000000000021bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x258f
   21bf4: 2a1903e2     	mov	w2, w25
   21bf8: 94000000     	bl	0x21bf8 <tpd_touch_press+0x2e8>
		0000000000021bf8:  R_AARCH64_CALL26	_printk
   21bfc: 93407c00     	sxtw	x0, w0
   21c00: 140000a0     	b	0x21e80 <tpd_touch_press+0x570>
   21c04: 3940d10a     	ldrb	w10, [x8, #0x34]
   21c08: 12003ee9     	and	w9, w23, #0xffff
   21c0c: 6b0a013f     	cmp	w9, w10
   21c10: 54000243     	b.lo	0x21c58 <tpd_touch_press+0x348>
   21c14: 7948850a     	ldrh	w10, [x8, #0x442]
   21c18: 3940d508     	ldrb	w8, [x8, #0x35]
   21c1c: 4b080148     	sub	w8, w10, w8
   21c20: 6b09011f     	cmp	w8, w9
   21c24: 540001ab     	b.lt	0x21c58 <tpd_touch_press+0x348>
   21c28: 39415748     	ldrb	w8, [x26, #0x55]
   21c2c: 36001a48     	tbz	w8, #0x0, 0x21f74 <tpd_touch_press+0x664>
   21c30: 39414748     	ldrb	w8, [x26, #0x51]
   21c34: 370005c8     	tbnz	w8, #0x0, 0x21cec <tpd_touch_press+0x3dc>
   21c38: 12003ee8     	and	w8, w23, #0xffff
   21c3c: 12003e69     	and	w9, w19, #0xffff
   21c40: 39002355     	strb	w21, [x26, #0x8]
   21c44: 29002748     	stp	w8, w9, [x26]
   21c48: 52800028     	mov	w8, #0x1                // =1
   21c4c: 39002754     	strb	w20, [x26, #0x9]
   21c50: 39014748     	strb	w8, [x26, #0x51]
   21c54: 1400008b     	b	0x21e80 <tpd_touch_press+0x570>
   21c58: 39415748     	ldrb	w8, [x26, #0x55]
   21c5c: 36002328     	tbz	w8, #0x0, 0x220c0 <tpd_touch_press+0x7b0>
   21c60: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021c60:  R_AARCH64_ADR_PREL_PG_HI21	byte_30EFB
   21c64: 39400108     	ldrb	w8, [x8]
		0000000000021c64:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30EFB
   21c68: 370003a8     	tbnz	w8, #0x0, 0x21cdc <tpd_touch_press+0x3cc>
   21c6c: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021c6c:  R_AARCH64_ADR_PREL_PG_HI21	byte_30F83
   21c70: 39400108     	ldrb	w8, [x8]
		0000000000021c70:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30F83
   21c74: 37000348     	tbnz	w8, #0x0, 0x21cdc <tpd_touch_press+0x3cc>
   21c78: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021c78:  R_AARCH64_ADR_PREL_PG_HI21	byte_3100B
   21c7c: 39400108     	ldrb	w8, [x8]
		0000000000021c7c:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3100B
   21c80: 370002e8     	tbnz	w8, #0x0, 0x21cdc <tpd_touch_press+0x3cc>
   21c84: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021c84:  R_AARCH64_ADR_PREL_PG_HI21	byte_31093
   21c88: 39400108     	ldrb	w8, [x8]
		0000000000021c88:  R_AARCH64_LDST8_ABS_LO12_NC	byte_31093
   21c8c: 37000288     	tbnz	w8, #0x0, 0x21cdc <tpd_touch_press+0x3cc>
   21c90: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021c90:  R_AARCH64_ADR_PREL_PG_HI21	byte_3111B
   21c94: 39400108     	ldrb	w8, [x8]
		0000000000021c94:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3111B
   21c98: 37000228     	tbnz	w8, #0x0, 0x21cdc <tpd_touch_press+0x3cc>
   21c9c: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021c9c:  R_AARCH64_ADR_PREL_PG_HI21	byte_311A3
   21ca0: 39400108     	ldrb	w8, [x8]
		0000000000021ca0:  R_AARCH64_LDST8_ABS_LO12_NC	byte_311A3
   21ca4: 370001c8     	tbnz	w8, #0x0, 0x21cdc <tpd_touch_press+0x3cc>
   21ca8: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021ca8:  R_AARCH64_ADR_PREL_PG_HI21	byte_3122B
   21cac: 39400108     	ldrb	w8, [x8]
		0000000000021cac:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3122B
   21cb0: 37000168     	tbnz	w8, #0x0, 0x21cdc <tpd_touch_press+0x3cc>
   21cb4: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021cb4:  R_AARCH64_ADR_PREL_PG_HI21	byte_312B3
   21cb8: 39400108     	ldrb	w8, [x8]
		0000000000021cb8:  R_AARCH64_LDST8_ABS_LO12_NC	byte_312B3
   21cbc: 37000108     	tbnz	w8, #0x0, 0x21cdc <tpd_touch_press+0x3cc>
   21cc0: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021cc0:  R_AARCH64_ADR_PREL_PG_HI21	byte_3133B
   21cc4: 39400108     	ldrb	w8, [x8]
		0000000000021cc4:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3133B
   21cc8: 370000a8     	tbnz	w8, #0x0, 0x21cdc <tpd_touch_press+0x3cc>
   21ccc: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021ccc:  R_AARCH64_ADR_PREL_PG_HI21	byte_313C3
   21cd0: 39400108     	ldrb	w8, [x8]
		0000000000021cd0:  R_AARCH64_LDST8_ABS_LO12_NC	byte_313C3
   21cd4: 7100051f     	cmp	w8, #0x1
   21cd8: 54fffac1     	b.ne	0x21c30 <tpd_touch_press+0x320>
   21cdc: 39414748     	ldrb	w8, [x26, #0x51]
   21ce0: 52800029     	mov	w9, #0x1                // =1
   21ce4: 39015b49     	strb	w9, [x26, #0x56]
   21ce8: 3607fa88     	tbz	w8, #0x0, 0x21c38 <tpd_touch_press+0x328>
   21cec: b9400348     	ldr	w8, [x26]
   21cf0: 4b372108     	sub	w8, w8, w23, uxth
   21cf4: 7100011f     	cmp	w8, #0x0
   21cf8: 5a885508     	cneg	w8, w8, mi
   21cfc: 7101911f     	cmp	w8, #0x64
   21d00: 540000ec     	b.gt	0x21d1c <tpd_touch_press+0x40c>
   21d04: b9400748     	ldr	w8, [x26, #0x4]
   21d08: 4b332108     	sub	w8, w8, w19, uxth
   21d0c: 7100011f     	cmp	w8, #0x0
   21d10: 5a885508     	cneg	w8, w8, mi
   21d14: 7101911f     	cmp	w8, #0x64
   21d18: 54000b4d     	b.le	0x21e80 <tpd_touch_press+0x570>
   21d1c: 39414748     	ldrb	w8, [x26, #0x51]
   21d20: 37000068     	tbnz	w8, #0x0, 0x21d2c <tpd_touch_press+0x41c>
   21d24: 39014b5f     	strb	wzr, [x26, #0x52]
   21d28: 14000008     	b	0x21d48 <tpd_touch_press+0x438>
   21d2c: 12003ee8     	and	w8, w23, #0xffff
   21d30: 12003e69     	and	w9, w19, #0xffff
   21d34: 39005355     	strb	w21, [x26, #0x14]
   21d38: 2901a748     	stp	w8, w9, [x26, #0xc]
   21d3c: 52800028     	mov	w8, #0x1                // =1
   21d40: 39005754     	strb	w20, [x26, #0x15]
   21d44: 39014b48     	strb	w8, [x26, #0x52]
   21d48: 39414b48     	ldrb	w8, [x26, #0x52]
   21d4c: 52800029     	mov	w9, #0x1                // =1
   21d50: 39014349     	strb	w9, [x26, #0x50]
   21d54: 7100051f     	cmp	w8, #0x1
   21d58: 540002c1     	b.ne	0x21db0 <tpd_touch_press+0x4a0>
   21d5c: 39414f48     	ldrb	w8, [x26, #0x53]
   21d60: 36000a48     	tbz	w8, #0x0, 0x21ea8 <tpd_touch_press+0x598>
   21d64: 29400b41     	ldp	w1, w2, [x26]
   21d68: aa1803e0     	mov	x0, x24
   21d6c: 2a1603e3     	mov	w3, w22
   21d70: 2a1503e4     	mov	w4, w21
   21d74: 2a1403e5     	mov	w5, w20
   21d78: 94000000     	bl	0x21d78 <tpd_touch_press+0x468>
		0000000000021d78:  R_AARCH64_CALL26	tpd_touch_report
   21d7c: aa1803e0     	mov	x0, x24
   21d80: 2a1f03e1     	mov	w1, wzr
   21d84: 2a1f03e2     	mov	w2, wzr
   21d88: 2a1f03e3     	mov	w3, wzr
   21d8c: 94000000     	bl	0x21d8c <tpd_touch_press+0x47c>
		0000000000021d8c:  R_AARCH64_CALL26	input_event
   21d90: 52807d00     	mov	w0, #0x3e8              // =1000
   21d94: 5280bb81     	mov	w1, #0x5dc              // =1500
   21d98: 52800042     	mov	w2, #0x2                // =2
   21d9c: 94000000     	bl	0x21d9c <tpd_touch_press+0x48c>
		0000000000021d9c:  R_AARCH64_CALL26	usleep_range_state
   21da0: 39414f48     	ldrb	w8, [x26, #0x53]
   21da4: 36000a88     	tbz	w8, #0x0, 0x21ef4 <tpd_touch_press+0x5e4>
   21da8: 2941a748     	ldp	w8, w9, [x26, #0xc]
   21dac: 14000029     	b	0x21e50 <tpd_touch_press+0x540>
   21db0: 39409369     	ldrb	w9, [x27, #0x24]
   21db4: 39414f48     	ldrb	w8, [x26, #0x53]
   21db8: 34000469     	cbz	w9, 0x21e44 <tpd_touch_press+0x534>
   21dbc: 36001308     	tbz	w8, #0x0, 0x2201c <tpd_touch_press+0x70c>
   21dc0: 39415f48     	ldrb	w8, [x26, #0x57]
   21dc4: 7100051f     	cmp	w8, #0x1
   21dc8: 54000401     	b.ne	0x21e48 <tpd_touch_press+0x538>
   21dcc: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021dcc:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   21dd0: f9400108     	ldr	x8, [x8]
		0000000000021dd0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   21dd4: f9403349     	ldr	x9, [x26, #0x60]
   21dd8: cb090100     	sub	x0, x8, x9
   21ddc: 94000000     	bl	0x21ddc <tpd_touch_press+0x4cc>
		0000000000021ddc:  R_AARCH64_CALL26	jiffies_to_msecs
   21de0: b9401b48     	ldr	w8, [x26, #0x18]
   21de4: 39409369     	ldrb	w9, [x27, #0x24]
   21de8: 12003ef9     	and	w25, w23, #0xffff
   21dec: 6b190108     	subs	w8, w8, w25
   21df0: 0b09052a     	add	w10, w9, w9, lsl #1
   21df4: 5a88550b     	cneg	w11, w8, mi
   21df8: 7101941f     	cmp	w0, #0x65
   21dfc: 1a893148     	csel	w8, w10, w9, lo
   21e00: 6b08017f     	cmp	w11, w8
   21e04: 540000ec     	b.gt	0x21e20 <tpd_touch_press+0x510>
   21e08: b9401f49     	ldr	w9, [x26, #0x1c]
   21e0c: 4b332129     	sub	w9, w9, w19, uxth
   21e10: 7100013f     	cmp	w9, #0x0
   21e14: 5a895529     	cneg	w9, w9, mi
   21e18: 6b08013f     	cmp	w9, w8
   21e1c: 5400042d     	b.le	0x21ea0 <tpd_touch_press+0x590>
   21e20: aa1803e0     	mov	x0, x24
   21e24: 2a1703e1     	mov	w1, w23
   21e28: 2a1303e2     	mov	w2, w19
   21e2c: 2a1603e3     	mov	w3, w22
   21e30: 2a1503e4     	mov	w4, w21
   21e34: 2a1403e5     	mov	w5, w20
   21e38: 94000000     	bl	0x21e38 <tpd_touch_press+0x528>
		0000000000021e38:  R_AARCH64_CALL26	tpd_touch_report
   21e3c: 39015f5f     	strb	wzr, [x26, #0x57]
   21e40: 1400000c     	b	0x21e70 <tpd_touch_press+0x560>
   21e44: 36001188     	tbz	w8, #0x0, 0x22074 <tpd_touch_press+0x764>
   21e48: 2a1703e8     	mov	w8, w23
   21e4c: 2a1303e9     	mov	w9, w19
   21e50: 2a0903e2     	mov	w2, w9
   21e54: 2a0803e1     	mov	w1, w8
   21e58: aa1803e0     	mov	x0, x24
   21e5c: 2a1603e3     	mov	w3, w22
   21e60: 2a1503e4     	mov	w4, w21
   21e64: 2a1403e5     	mov	w5, w20
   21e68: 94000000     	bl	0x21e68 <tpd_touch_press+0x558>
		0000000000021e68:  R_AARCH64_CALL26	tpd_touch_report
   21e6c: 12003ef9     	and	w25, w23, #0xffff
   21e70: 93407c00     	sxtw	x0, w0
   21e74: 12003e68     	and	w8, w19, #0xffff
   21e78: 39014b5f     	strb	wzr, [x26, #0x52]
   21e7c: 2904a359     	stp	w25, w8, [x26, #0x24]
   21e80: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   21e84: a94457f6     	ldp	x22, x21, [sp, #0x40]
   21e88: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   21e8c: a94267fa     	ldp	x26, x25, [sp, #0x20]
   21e90: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   21e94: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   21e98: d50323bf     	autiasp
   21e9c: d65f03c0     	ret
   21ea0: 2a0003e0     	mov	w0, w0
   21ea4: 17fffff4     	b	0x21e74 <tpd_touch_press+0x564>
   21ea8: 52800028     	mov	w8, #0x1                // =1
   21eac: 90000009     	adrp	x9, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021eac:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   21eb0: 2a1903e0     	mov	w0, w25
   21eb4: 39014f48     	strb	w8, [x26, #0x53]
   21eb8: f9400129     	ldr	x9, [x9]
		0000000000021eb8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   21ebc: 39016b48     	strb	w8, [x26, #0x5a]
   21ec0: f9003349     	str	x9, [x26, #0x60]
   21ec4: b9448f68     	ldr	w8, [x27, #0x48c]
   21ec8: 11000508     	add	w8, w8, #0x1
   21ecc: b9048f68     	str	w8, [x27, #0x48c]
   21ed0: 29402748     	ldp	w8, w9, [x26]
   21ed4: 29032748     	stp	w8, w9, [x26, #0x18]
   21ed8: 94000000     	bl	0x21ed8 <tpd_touch_press+0x5c8>
		0000000000021ed8:  R_AARCH64_CALL26	point_report_reset
   21edc: b9400342     	ldr	w2, [x26]
   21ee0: 90000000     	adrp	x0, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021ee0:  R_AARCH64_ADR_PREL_PG_HI21	unk_37C4E
   21ee4: 91000000     	add	x0, x0, #0x0
		0000000000021ee4:  R_AARCH64_ADD_ABS_LO12_NC	unk_37C4E
   21ee8: 2a1903e1     	mov	w1, w25
   21eec: 94000000     	bl	0x21eec <tpd_touch_press+0x5dc>
		0000000000021eec:  R_AARCH64_CALL26	_printk
   21ef0: 17ffff9d     	b	0x21d64 <tpd_touch_press+0x454>
   21ef4: 52800028     	mov	w8, #0x1                // =1
   21ef8: 90000009     	adrp	x9, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021ef8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   21efc: 2a1903e0     	mov	w0, w25
   21f00: 39014f48     	strb	w8, [x26, #0x53]
   21f04: f9400129     	ldr	x9, [x9]
		0000000000021f04:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   21f08: 39016b48     	strb	w8, [x26, #0x5a]
   21f0c: f9003349     	str	x9, [x26, #0x60]
   21f10: b9448f68     	ldr	w8, [x27, #0x48c]
   21f14: 11000508     	add	w8, w8, #0x1
   21f18: b9048f68     	str	w8, [x27, #0x48c]
   21f1c: 29402748     	ldp	w8, w9, [x26]
   21f20: 29032748     	stp	w8, w9, [x26, #0x18]
   21f24: 94000000     	bl	0x21f24 <tpd_touch_press+0x614>
		0000000000021f24:  R_AARCH64_CALL26	point_report_reset
   21f28: b9400f42     	ldr	w2, [x26, #0xc]
   21f2c: 90000000     	adrp	x0, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021f2c:  R_AARCH64_ADR_PREL_PG_HI21	unk_37C4E
   21f30: 91000000     	add	x0, x0, #0x0
		0000000000021f30:  R_AARCH64_ADD_ABS_LO12_NC	unk_37C4E
   21f34: 2a1903e1     	mov	w1, w25
   21f38: 94000000     	bl	0x21f38 <tpd_touch_press+0x628>
		0000000000021f38:  R_AARCH64_CALL26	_printk
   21f3c: 17ffff9b     	b	0x21da8 <tpd_touch_press+0x498>
   21f40: 6b09039f     	cmp	w28, w9
   21f44: 540000a3     	b.lo	0x21f58 <tpd_touch_press+0x648>
   21f48: 3940d769     	ldrb	w9, [x27, #0x35]
   21f4c: 4b090108     	sub	w8, w8, w9
   21f50: 6b1c011f     	cmp	w8, w28
   21f54: 540000ca     	b.ge	0x21f6c <tpd_touch_press+0x65c>
   21f58: 39416348     	ldrb	w8, [x26, #0x58]
   21f5c: 7100051f     	cmp	w8, #0x1
   21f60: 54000201     	b.ne	0x21fa0 <tpd_touch_press+0x690>
   21f64: f9403748     	ldr	x8, [x26, #0x68]
   21f68: 14000016     	b	0x21fc0 <tpd_touch_press+0x6b0>
   21f6c: 3901635f     	strb	wzr, [x26, #0x58]
   21f70: 17ffff76     	b	0x21d48 <tpd_touch_press+0x438>
   21f74: 52800028     	mov	w8, #0x1                // =1
   21f78: 90000000     	adrp	x0, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021f78:  R_AARCH64_ADR_PREL_PG_HI21	unk_36572
   21f7c: 91000000     	add	x0, x0, #0x0
		0000000000021f7c:  R_AARCH64_ADD_ABS_LO12_NC	unk_36572
   21f80: 12003ee2     	and	w2, w23, #0xffff
   21f84: 2a1903e1     	mov	w1, w25
   21f88: 39015748     	strb	w8, [x26, #0x55]
   21f8c: 94000000     	bl	0x21f8c <tpd_touch_press+0x67c>
		0000000000021f8c:  R_AARCH64_CALL26	_printk
   21f90: 39414748     	ldrb	w8, [x26, #0x51]
   21f94: 93407c00     	sxtw	x0, w0
   21f98: 3707eaa8     	tbnz	w8, #0x0, 0x21cec <tpd_touch_press+0x3dc>
   21f9c: 17ffff27     	b	0x21c38 <tpd_touch_press+0x328>
   21fa0: 12003e68     	and	w8, w19, #0xffff
   21fa4: 52800029     	mov	w9, #0x1                // =1
   21fa8: 9000000a     	adrp	x10, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021fa8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   21fac: 2906235c     	stp	w28, w8, [x26, #0x30]
   21fb0: 39016349     	strb	w9, [x26, #0x58]
   21fb4: f9400148     	ldr	x8, [x10]
		0000000000021fb4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   21fb8: f9400149     	ldr	x9, [x10]
		0000000000021fb8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   21fbc: f9003749     	str	x9, [x26, #0x68]
   21fc0: 90000009     	adrp	x9, 0x21000 <tpd_set_rotation_limit_level+0x8>
		0000000000021fc0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   21fc4: f9400129     	ldr	x9, [x9]
		0000000000021fc4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   21fc8: cb080120     	sub	x0, x9, x8
   21fcc: 94000000     	bl	0x21fcc <tpd_touch_press+0x6bc>
		0000000000021fcc:  R_AARCH64_CALL26	jiffies_to_msecs
   21fd0: 710c841f     	cmp	w0, #0x321
   21fd4: 54ffeba3     	b.lo	0x21d48 <tpd_touch_press+0x438>
   21fd8: b9403348     	ldr	w8, [x26, #0x30]
   21fdc: 6b1c0108     	subs	w8, w8, w28
   21fe0: 5a885508     	cneg	w8, w8, mi
   21fe4: 7100511f     	cmp	w8, #0x14
   21fe8: 12003e68     	and	w8, w19, #0xffff
   21fec: 540003ac     	b.gt	0x22060 <tpd_touch_press+0x750>
   21ff0: b9403749     	ldr	w9, [x26, #0x34]
   21ff4: 6b080129     	subs	w9, w9, w8
   21ff8: 5a895529     	cneg	w9, w9, mi
   21ffc: 7100513f     	cmp	w9, #0x14
   22000: 5400030c     	b.gt	0x22060 <tpd_touch_press+0x750>
   22004: f9404340     	ldr	x0, [x26, #0x80]
   22008: 2a1603e1     	mov	w1, w22
   2200c: 2a1f03e2     	mov	w2, wzr
   22010: 94000000     	bl	0x22010 <tpd_touch_press+0x700>
		0000000000022010:  R_AARCH64_CALL26	tpd_touch_release
   22014: 3901635f     	strb	wzr, [x26, #0x58]
   22018: 17ffff9a     	b	0x21e80 <tpd_touch_press+0x570>
   2201c: 52800028     	mov	w8, #0x1                // =1
   22020: 2a1903e0     	mov	w0, w25
   22024: 39014f48     	strb	w8, [x26, #0x53]
   22028: b9448f68     	ldr	w8, [x27, #0x48c]
   2202c: 11000508     	add	w8, w8, #0x1
   22030: b9048f68     	str	w8, [x27, #0x48c]
   22034: 94000000     	bl	0x22034 <tpd_touch_press+0x724>
		0000000000022034:  R_AARCH64_CALL26	point_report_reset
   22038: 12003efc     	and	w28, w23, #0xffff
   2203c: 12003e68     	and	w8, w19, #0xffff
   22040: 52800029     	mov	w9, #0x1                // =1
   22044: 2903235c     	stp	w28, w8, [x26, #0x18]
   22048: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022048:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   2204c: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		000000000002204c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C42D
   22050: 91000000     	add	x0, x0, #0x0
		0000000000022050:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C42D
   22054: f9400108     	ldr	x8, [x8]
		0000000000022054:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22058: 39015f49     	strb	w9, [x26, #0x57]
   2205c: 14000014     	b	0x220ac <tpd_touch_press+0x79c>
   22060: 2906235c     	stp	w28, w8, [x26, #0x30]
   22064: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022064:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   22068: f9400108     	ldr	x8, [x8]
		0000000000022068:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2206c: f9003748     	str	x8, [x26, #0x68]
   22070: 17ffff36     	b	0x21d48 <tpd_touch_press+0x438>
   22074: 52800028     	mov	w8, #0x1                // =1
   22078: 12003efc     	and	w28, w23, #0xffff
   2207c: 2a1903e0     	mov	w0, w25
   22080: 39014f48     	strb	w8, [x26, #0x53]
   22084: b9448f68     	ldr	w8, [x27, #0x48c]
   22088: 11000508     	add	w8, w8, #0x1
   2208c: b9048f68     	str	w8, [x27, #0x48c]
   22090: 12003e68     	and	w8, w19, #0xffff
   22094: 2903235c     	stp	w28, w8, [x26, #0x18]
   22098: 94000000     	bl	0x22098 <tpd_touch_press+0x788>
		0000000000022098:  R_AARCH64_CALL26	point_report_reset
   2209c: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		000000000002209c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   220a0: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000220a0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A78C
   220a4: 91000000     	add	x0, x0, #0x0
		00000000000220a4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A78C
   220a8: f9400108     	ldr	x8, [x8]
		00000000000220a8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   220ac: 2a1c03e2     	mov	w2, w28
   220b0: aa1903e1     	mov	x1, x25
   220b4: f9003348     	str	x8, [x26, #0x60]
   220b8: 94000000     	bl	0x220b8 <tpd_touch_press+0x7a8>
		00000000000220b8:  R_AARCH64_CALL26	_printk
   220bc: 17ffff63     	b	0x21e48 <tpd_touch_press+0x538>
   220c0: 52800028     	mov	w8, #0x1                // =1
   220c4: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000220c4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A806
   220c8: 91000000     	add	x0, x0, #0x0
		00000000000220c8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A806
   220cc: 39015748     	strb	w8, [x26, #0x55]
   220d0: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		00000000000220d0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   220d4: 12003ee2     	and	w2, w23, #0xffff
   220d8: f9400108     	ldr	x8, [x8]
		00000000000220d8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   220dc: 2a1903e1     	mov	w1, w25
   220e0: f9003b48     	str	x8, [x26, #0x70]
   220e4: 94000000     	bl	0x220e4 <tpd_touch_press+0x7d4>
		00000000000220e4:  R_AARCH64_CALL26	_printk
   220e8: 93407c00     	sxtw	x0, w0
   220ec: 17fffedd     	b	0x21c60 <tpd_touch_press+0x350>
