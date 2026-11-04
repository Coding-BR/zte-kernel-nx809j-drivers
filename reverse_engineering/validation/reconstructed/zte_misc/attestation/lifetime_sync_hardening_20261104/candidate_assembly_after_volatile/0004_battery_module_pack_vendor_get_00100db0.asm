
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000acc <battery_module_pack_vendor_get>:
     acc: d503233f     	paciasp
     ad0: d10103ff     	sub	sp, sp, #0x40
     ad4: a9027bfd     	stp	x29, x30, [sp, #0x20]
     ad8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     adc: 910083fd     	add	x29, sp, #0x20
     ae0: d5384108     	mrs	x8, SP_EL0
     ae4: aa0003f3     	mov	x19, x0
     ae8: 910023e0     	add	x0, sp, #0x8
     aec: f9438908     	ldr	x8, [x8, #0x710]
     af0: 910013e2     	add	x2, sp, #0x4
     af4: 52800141     	mov	w1, #0xa                // =10
     af8: f81f83a8     	stur	x8, [x29, #-0x8]
     afc: b90007ff     	str	wzr, [sp, #0x4]
     b00: 790023ff     	strh	wzr, [sp, #0x10]
     b04: f90007ff     	str	xzr, [sp, #0x8]
     b08: 94000000     	bl	0xb08 <battery_module_pack_vendor_get+0x3c>
		0000000000000b08:  R_AARCH64_CALL26	kstrtoint
     b0c: 34000180     	cbz	w0, 0xb3c <battery_module_pack_vendor_get+0x70>
     b10: 12800000     	mov	w0, #-0x1               // =-1
     b14: d5384108     	mrs	x8, SP_EL0
     b18: f9438908     	ldr	x8, [x8, #0x710]
     b1c: f85f83a9     	ldur	x9, [x29, #-0x8]
     b20: eb09011f     	cmp	x8, x9
     b24: 54001be1     	b.ne	0xea0 <battery_module_pack_vendor_get+0x3d4>
     b28: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     b2c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     b30: 910103ff     	add	sp, sp, #0x40
     b34: d50323bf     	autiasp
     b38: d65f03c0     	ret
     b3c: b94007e1     	ldr	w1, [sp, #0x4]
     b40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x389
     b44: 91000000     	add	x0, x0, #0x0
		0000000000000b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x389
     b48: 94000000     	bl	0xb48 <battery_module_pack_vendor_get+0x7c>
		0000000000000b48:  R_AARCH64_CALL26	_printk
     b4c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b4c:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x20
     b50: 52800da9     	mov	w9, #0x6d               // =109
     b54: b98007ea     	ldrsw	x10, [sp, #0x4]
     b58: b9400108     	ldr	w8, [x8]
		0000000000000b58:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x20
     b5c: 1b097d09     	mul	w9, w8, w9
     b60: 5289ba68     	mov	w8, #0x4dd3             // =19923
     b64: 72a20c48     	movk	w8, #0x1062, lsl #16
     b68: 9b287d4a     	smull	x10, w10, w8
     b6c: 5290a3e8     	mov	w8, #0x851f             // =34079
     b70: 72aa3d68     	movk	w8, #0x51eb, lsl #16
     b74: 9b287d29     	smull	x9, w9, w8
     b78: d360fd4b     	lsr	x11, x10, #32
     b7c: d37ffd4a     	lsr	x10, x10, #63
     b80: d360fd2c     	lsr	x12, x9, #32
     b84: d37ffd29     	lsr	x9, x9, #63
     b88: 0b8b1941     	add	w1, w10, w11, asr #6
     b8c: 0b8c1529     	add	w9, w9, w12, asr #5
     b90: b90007e1     	str	w1, [sp, #0x4]
     b94: 6b09003f     	cmp	w1, w9
     b98: 5400016c     	b.gt	0xbc4 <battery_module_pack_vendor_get+0xf8>
     b9c: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000b9c:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm
     ba0: b940012a     	ldr	w10, [x9]
		0000000000000ba0:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm
     ba4: 52800b69     	mov	w9, #0x5b               // =91
     ba8: 1b097d49     	mul	w9, w10, w9
     bac: 9b287d28     	smull	x8, w9, w8
     bb0: d37ffd09     	lsr	x9, x8, #63
     bb4: 9365fd08     	asr	x8, x8, #37
     bb8: 0b090108     	add	w8, w8, w9
     bbc: 6b08003f     	cmp	w1, w8
     bc0: 540000aa     	b.ge	0xbd4 <battery_module_pack_vendor_get+0x108>
     bc4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ad
     bc8: 91000000     	add	x0, x0, #0x0
		0000000000000bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ad
     bcc: 94000000     	bl	0xbcc <battery_module_pack_vendor_get+0x100>
		0000000000000bcc:  R_AARCH64_CALL26	_printk
     bd0: 17ffffd0     	b	0xb10 <battery_module_pack_vendor_get+0x44>
     bd4: 52800da9     	mov	w9, #0x6d               // =109
     bd8: 1b097d4b     	mul	w11, w10, w9
     bdc: 5290a3ea     	mov	w10, #0x851f            // =34079
     be0: 72aa3d6a     	movk	w10, #0x51eb, lsl #16
     be4: 9b2a7d6b     	smull	x11, w11, w10
     be8: d37ffd6c     	lsr	x12, x11, #63
     bec: 9365fd6b     	asr	x11, x11, #37
     bf0: 0b0c016b     	add	w11, w11, w12
     bf4: 6b0b003f     	cmp	w1, w11
     bf8: 5400024a     	b.ge	0xc40 <battery_module_pack_vendor_get+0x174>
     bfc: 6b08003f     	cmp	w1, w8
     c00: 5400020d     	b.le	0xc40 <battery_module_pack_vendor_get+0x174>
     c04: aa1f03e8     	mov	x8, xzr
     c08: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c08:  R_AARCH64_ADR_PREL_PG_HI21	battery_vendor_id
     c0c: 91000129     	add	x9, x9, #0x0
		0000000000000c0c:  R_AARCH64_ADD_ABS_LO12_NC	battery_vendor_id
     c10: b8687934     	ldr	w20, [x9, x8, lsl #2]
     c14: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3
     c18: 91000000     	add	x0, x0, #0x0
		0000000000000c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3
     c1c: 2a1403e2     	mov	w2, w20
     c20: 94000000     	bl	0xc20 <battery_module_pack_vendor_get+0x154>
		0000000000000c20:  R_AARCH64_CALL26	_printk
     c24: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20
     c28: 91000042     	add	x2, x2, #0x0
		0000000000000c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20
     c2c: aa1303e0     	mov	x0, x19
     c30: 52820001     	mov	w1, #0x1000             // =4096
     c34: 2a1403e3     	mov	w3, w20
     c38: 94000000     	bl	0xc38 <battery_module_pack_vendor_get+0x16c>
		0000000000000c38:  R_AARCH64_CALL26	snprintf
     c3c: 17ffffb6     	b	0xb14 <battery_module_pack_vendor_get+0x48>
     c40: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c40:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x4
     c44: b9400108     	ldr	w8, [x8]
		0000000000000c44:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x4
     c48: 1b097d09     	mul	w9, w8, w9
     c4c: 9b2a7d29     	smull	x9, w9, w10
     c50: d37ffd2a     	lsr	x10, x9, #63
     c54: 9365fd29     	asr	x9, x9, #37
     c58: 0b0a0129     	add	w9, w9, w10
     c5c: 6b09003f     	cmp	w1, w9
     c60: 540001aa     	b.ge	0xc94 <battery_module_pack_vendor_get+0x1c8>
     c64: 52800b69     	mov	w9, #0x5b               // =91
     c68: 1b097d08     	mul	w8, w8, w9
     c6c: 5290a3e9     	mov	w9, #0x851f             // =34079
     c70: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     c74: 9b297d08     	smull	x8, w8, w9
     c78: d37ffd09     	lsr	x9, x8, #63
     c7c: 9365fd08     	asr	x8, x8, #37
     c80: 0b090108     	add	w8, w8, w9
     c84: 6b08003f     	cmp	w1, w8
     c88: 5400006d     	b.le	0xc94 <battery_module_pack_vendor_get+0x1c8>
     c8c: 52800028     	mov	w8, #0x1                // =1
     c90: 17ffffde     	b	0xc08 <battery_module_pack_vendor_get+0x13c>
     c94: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c94:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x8
     c98: 5290a3e9     	mov	w9, #0x851f             // =34079
     c9c: b940010a     	ldr	w10, [x8]
		0000000000000c9c:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x8
     ca0: 52800da8     	mov	w8, #0x6d               // =109
     ca4: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     ca8: 1b087d4b     	mul	w11, w10, w8
     cac: 9b297d6b     	smull	x11, w11, w9
     cb0: d37ffd6c     	lsr	x12, x11, #63
     cb4: 9365fd6b     	asr	x11, x11, #37
     cb8: 0b0c016b     	add	w11, w11, w12
     cbc: 6b0b003f     	cmp	w1, w11
     cc0: 5400016a     	b.ge	0xcec <battery_module_pack_vendor_get+0x220>
     cc4: 52800b6b     	mov	w11, #0x5b              // =91
     cc8: 1b0b7d4a     	mul	w10, w10, w11
     ccc: 9b297d4a     	smull	x10, w10, w9
     cd0: d37ffd4b     	lsr	x11, x10, #63
     cd4: 9365fd4a     	asr	x10, x10, #37
     cd8: 0b0b014a     	add	w10, w10, w11
     cdc: 6b0a003f     	cmp	w1, w10
     ce0: 5400006d     	b.le	0xcec <battery_module_pack_vendor_get+0x220>
     ce4: 52800048     	mov	w8, #0x2                // =2
     ce8: 17ffffc8     	b	0xc08 <battery_module_pack_vendor_get+0x13c>
     cec: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000cec:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0xc
     cf0: b940014a     	ldr	w10, [x10]
		0000000000000cf0:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0xc
     cf4: 1b087d48     	mul	w8, w10, w8
     cf8: 9b297d08     	smull	x8, w8, w9
     cfc: d37ffd09     	lsr	x9, x8, #63
     d00: 9365fd08     	asr	x8, x8, #37
     d04: 0b090108     	add	w8, w8, w9
     d08: 6b08003f     	cmp	w1, w8
     d0c: 540001aa     	b.ge	0xd40 <battery_module_pack_vendor_get+0x274>
     d10: 52800b68     	mov	w8, #0x5b               // =91
     d14: 5290a3e9     	mov	w9, #0x851f             // =34079
     d18: 1b087d48     	mul	w8, w10, w8
     d1c: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     d20: 9b297d08     	smull	x8, w8, w9
     d24: d37ffd09     	lsr	x9, x8, #63
     d28: 9365fd08     	asr	x8, x8, #37
     d2c: 0b090108     	add	w8, w8, w9
     d30: 6b08003f     	cmp	w1, w8
     d34: 5400006d     	b.le	0xd40 <battery_module_pack_vendor_get+0x274>
     d38: 52800068     	mov	w8, #0x3                // =3
     d3c: 17ffffb3     	b	0xc08 <battery_module_pack_vendor_get+0x13c>
     d40: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d40:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x10
     d44: 5290a3e9     	mov	w9, #0x851f             // =34079
     d48: b940010a     	ldr	w10, [x8]
		0000000000000d48:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x10
     d4c: 52800da8     	mov	w8, #0x6d               // =109
     d50: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     d54: 1b087d4b     	mul	w11, w10, w8
     d58: 9b297d6b     	smull	x11, w11, w9
     d5c: d37ffd6c     	lsr	x12, x11, #63
     d60: 9365fd6b     	asr	x11, x11, #37
     d64: 0b0c016b     	add	w11, w11, w12
     d68: 6b0b003f     	cmp	w1, w11
     d6c: 5400016a     	b.ge	0xd98 <battery_module_pack_vendor_get+0x2cc>
     d70: 52800b6b     	mov	w11, #0x5b              // =91
     d74: 1b0b7d4a     	mul	w10, w10, w11
     d78: 9b297d4a     	smull	x10, w10, w9
     d7c: d37ffd4b     	lsr	x11, x10, #63
     d80: 9365fd4a     	asr	x10, x10, #37
     d84: 0b0b014a     	add	w10, w10, w11
     d88: 6b0a003f     	cmp	w1, w10
     d8c: 5400006d     	b.le	0xd98 <battery_module_pack_vendor_get+0x2cc>
     d90: 52800088     	mov	w8, #0x4                // =4
     d94: 17ffff9d     	b	0xc08 <battery_module_pack_vendor_get+0x13c>
     d98: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000d98:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x14
     d9c: b940014a     	ldr	w10, [x10]
		0000000000000d9c:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x14
     da0: 1b087d48     	mul	w8, w10, w8
     da4: 9b297d08     	smull	x8, w8, w9
     da8: d37ffd09     	lsr	x9, x8, #63
     dac: 9365fd08     	asr	x8, x8, #37
     db0: 0b090108     	add	w8, w8, w9
     db4: 6b08003f     	cmp	w1, w8
     db8: 540001aa     	b.ge	0xdec <battery_module_pack_vendor_get+0x320>
     dbc: 52800b68     	mov	w8, #0x5b               // =91
     dc0: 5290a3e9     	mov	w9, #0x851f             // =34079
     dc4: 1b087d48     	mul	w8, w10, w8
     dc8: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     dcc: 9b297d08     	smull	x8, w8, w9
     dd0: d37ffd09     	lsr	x9, x8, #63
     dd4: 9365fd08     	asr	x8, x8, #37
     dd8: 0b090108     	add	w8, w8, w9
     ddc: 6b08003f     	cmp	w1, w8
     de0: 5400006d     	b.le	0xdec <battery_module_pack_vendor_get+0x320>
     de4: 528000a8     	mov	w8, #0x5                // =5
     de8: 17ffff88     	b	0xc08 <battery_module_pack_vendor_get+0x13c>
     dec: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dec:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x18
     df0: 5290a3e9     	mov	w9, #0x851f             // =34079
     df4: b940010a     	ldr	w10, [x8]
		0000000000000df4:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x18
     df8: 52800da8     	mov	w8, #0x6d               // =109
     dfc: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     e00: 1b087d4b     	mul	w11, w10, w8
     e04: 9b297d6b     	smull	x11, w11, w9
     e08: d37ffd6c     	lsr	x12, x11, #63
     e0c: 9365fd6b     	asr	x11, x11, #37
     e10: 0b0c016b     	add	w11, w11, w12
     e14: 6b0b003f     	cmp	w1, w11
     e18: 5400016a     	b.ge	0xe44 <battery_module_pack_vendor_get+0x378>
     e1c: 52800b6b     	mov	w11, #0x5b              // =91
     e20: 1b0b7d4a     	mul	w10, w10, w11
     e24: 9b297d4a     	smull	x10, w10, w9
     e28: d37ffd4b     	lsr	x11, x10, #63
     e2c: 9365fd4a     	asr	x10, x10, #37
     e30: 0b0b014a     	add	w10, w10, w11
     e34: 6b0a003f     	cmp	w1, w10
     e38: 5400006d     	b.le	0xe44 <battery_module_pack_vendor_get+0x378>
     e3c: 528000c8     	mov	w8, #0x6                // =6
     e40: 17ffff72     	b	0xc08 <battery_module_pack_vendor_get+0x13c>
     e44: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000e44:  R_AARCH64_ADR_PREL_PG_HI21	resistance_kohm+0x1c
     e48: b940014a     	ldr	w10, [x10]
		0000000000000e48:  R_AARCH64_LDST32_ABS_LO12_NC	resistance_kohm+0x1c
     e4c: 1b087d48     	mul	w8, w10, w8
     e50: 9b297d08     	smull	x8, w8, w9
     e54: d37ffd09     	lsr	x9, x8, #63
     e58: 9365fd08     	asr	x8, x8, #37
     e5c: 0b090108     	add	w8, w8, w9
     e60: 6b08003f     	cmp	w1, w8
     e64: 540001aa     	b.ge	0xe98 <battery_module_pack_vendor_get+0x3cc>
     e68: 52800b68     	mov	w8, #0x5b               // =91
     e6c: 5290a3e9     	mov	w9, #0x851f             // =34079
     e70: 1b087d48     	mul	w8, w10, w8
     e74: 72aa3d69     	movk	w9, #0x51eb, lsl #16
     e78: 9b297d08     	smull	x8, w8, w9
     e7c: d37ffd09     	lsr	x9, x8, #63
     e80: 9365fd08     	asr	x8, x8, #37
     e84: 0b090108     	add	w8, w8, w9
     e88: 6b08003f     	cmp	w1, w8
     e8c: 5400006d     	b.le	0xe98 <battery_module_pack_vendor_get+0x3cc>
     e90: 528000e8     	mov	w8, #0x7                // =7
     e94: 17ffff5d     	b	0xc08 <battery_module_pack_vendor_get+0x13c>
     e98: 2a1f03f4     	mov	w20, wzr
     e9c: 17ffff5e     	b	0xc14 <battery_module_pack_vendor_get+0x148>
     ea0: 94000000     	bl	0xea0 <battery_module_pack_vendor_get+0x3d4>
		0000000000000ea0:  R_AARCH64_CALL26	__stack_chk_fail
