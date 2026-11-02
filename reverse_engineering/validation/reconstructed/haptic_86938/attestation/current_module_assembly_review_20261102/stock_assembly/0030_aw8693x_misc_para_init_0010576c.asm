
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000294c <aw8693x_misc_para_init>:
    294c: d503233f     	paciasp
    2950: d10143ff     	sub	sp, sp, #0x50
    2954: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2958: f9001bf5     	str	x21, [sp, #0x30]
    295c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    2960: 910083fd     	add	x29, sp, #0x20
    2964: d5384108     	mrs	x8, SP_EL0
    2968: 910043e2     	add	x2, sp, #0x10
    296c: 528008e1     	mov	w1, #0x47               // =71
    2970: f9438908     	ldr	x8, [x8, #0x710]
    2974: 52800023     	mov	w3, #0x1                // =1
    2978: aa0003f3     	mov	x19, x0
    297c: 910043f5     	add	x21, sp, #0x10
    2980: f81f83a8     	stur	x8, [x29, #-0x8]
    2984: f9419408     	ldr	x8, [x0, #0x328]
    2988: f9000bff     	str	xzr, [sp, #0x10]
    298c: 39400909     	ldrb	w9, [x8, #0x2]
    2990: 39004809     	strb	w9, [x0, #0x12]
    2994: 39400908     	ldrb	w8, [x8, #0x2]
    2998: 390043e8     	strb	w8, [sp, #0x10]
    299c: 94000000     	bl	0x299c <aw8693x_misc_para_init+0x50>
		000000000000299c:  R_AARCH64_CALL26	i2c_w_bytes
    29a0: b9446a68     	ldr	w8, [x19, #0x468]
    29a4: 5280f8c9     	mov	w9, #0x7c6              // =1990
    29a8: 5280e22a     	mov	w10, #0x711             // =1809
    29ac: 910043e2     	add	x2, sp, #0x10
    29b0: aa1303e0     	mov	x0, x19
    29b4: 528000e1     	mov	w1, #0x7                // =7
    29b8: 711c211f     	cmp	w8, #0x708
    29bc: b944c668     	ldr	w8, [x19, #0x4c4]
    29c0: 52800023     	mov	w3, #0x1                // =1
    29c4: 1a893149     	csel	w9, w10, w9, lo
    29c8: 1b087d28     	mul	w8, w9, w8
    29cc: 5282eb29     	mov	w9, #0x1759             // =5977
    29d0: 72ba36e9     	movk	w9, #0xd1b7, lsl #16
    29d4: 9ba97d08     	umull	x8, w8, w9
    29d8: 52800fe9     	mov	w9, #0x7f               // =127
    29dc: d36ffd08     	lsr	x8, x8, #47
    29e0: 7101fd1f     	cmp	w8, #0x7f
    29e4: 1a893108     	csel	w8, w8, w9, lo
    29e8: 39518e69     	ldrb	w9, [x19, #0x463]
    29ec: 39126e68     	strb	w8, [x19, #0x49b]
    29f0: b9003269     	str	w9, [x19, #0x30]
    29f4: 94000000     	bl	0x29f4 <aw8693x_misc_para_init+0xa8>
		00000000000029f4:  R_AARCH64_CALL26	i2c_r_bytes
    29f8: 394043e8     	ldrb	w8, [sp, #0x10]
    29fc: 910043e2     	add	x2, sp, #0x10
    2a00: aa1303e0     	mov	x0, x19
    2a04: 52800141     	mov	w1, #0xa                // =10
    2a08: 52800103     	mov	w3, #0x8                // =8
    2a0c: b9003668     	str	w8, [x19, #0x34]
    2a10: 94000000     	bl	0x2a10 <aw8693x_misc_para_init+0xc4>
		0000000000002a10:  R_AARCH64_CALL26	i2c_r_bytes
    2a14: 394043e8     	ldrb	w8, [sp, #0x10]
    2a18: f9400be9     	ldr	x9, [sp, #0x10]
    2a1c: aa1303e0     	mov	x0, x19
    2a20: 39530663     	ldrb	w3, [x19, #0x4c1]
    2a24: 528008c1     	mov	w1, #0x46               // =70
    2a28: 12800022     	mov	w2, #-0x2               // =-2
    2a2c: b9004668     	str	w8, [x19, #0x44]
    2a30: f801e269     	stur	x9, [x19, #0x1e]
    2a34: 94000000     	bl	0x2a34 <aw8693x_misc_para_init+0xe8>
		0000000000002a34:  R_AARCH64_CALL26	i2c_w_bits
    2a38: 39530e68     	ldrb	w8, [x19, #0x4c3]
    2a3c: aa1303e0     	mov	x0, x19
    2a40: 52800301     	mov	w1, #0x18               // =24
    2a44: 12801002     	mov	w2, #-0x81              // =-129
    2a48: 53196103     	lsl	w3, w8, #7
    2a4c: 94000000     	bl	0x2a4c <aw8693x_misc_para_init+0x100>
		0000000000002a4c:  R_AARCH64_CALL26	i2c_w_bits
    2a50: 39527e63     	ldrb	w3, [x19, #0x49f]
    2a54: aa1303e0     	mov	x0, x19
    2a58: 52800381     	mov	w1, #0x1c               // =28
    2a5c: 128001e2     	mov	w2, #-0x10              // =-16
    2a60: 94000000     	bl	0x2a60 <aw8693x_misc_para_init+0x114>
		0000000000002a60:  R_AARCH64_CALL26	i2c_w_bits
    2a64: 91127662     	add	x2, x19, #0x49d
    2a68: aa1303e0     	mov	x0, x19
    2a6c: 52800421     	mov	w1, #0x21               // =33
    2a70: 52800023     	mov	w3, #0x1                // =1
    2a74: 94000000     	bl	0x2a74 <aw8693x_misc_para_init+0x128>
		0000000000002a74:  R_AARCH64_CALL26	i2c_w_bytes
    2a78: 52800648     	mov	w8, #0x32               // =50
    2a7c: aa1303e0     	mov	x0, x19
    2a80: 52800901     	mov	w1, #0x48               // =72
    2a84: 12801002     	mov	w2, #-0x81              // =-129
    2a88: 2a1f03e3     	mov	w3, wzr
    2a8c: 390033e8     	strb	w8, [sp, #0xc]
    2a90: 94000000     	bl	0x2a90 <aw8693x_misc_para_init+0x144>
		0000000000002a90:  R_AARCH64_CALL26	i2c_w_bits
    2a94: 90000014     	adrp	x20, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2a98: 91000294     	add	x20, x20, #0x0
		0000000000002a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2a9c: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21b5
    2aa0: 91000000     	add	x0, x0, #0x0
		0000000000002aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21b5
    2aa4: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2619
    2aa8: 91000063     	add	x3, x3, #0x0
		0000000000002aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2619
    2aac: aa1403e1     	mov	x1, x20
    2ab0: 52805cc2     	mov	w2, #0x2e6              // =742
    2ab4: 94000000     	bl	0x2ab4 <aw8693x_misc_para_init+0x168>
		0000000000002ab4:  R_AARCH64_CALL26	_printk
    2ab8: 528017e8     	mov	w8, #0xbf               // =191
    2abc: 910023e2     	add	x2, sp, #0x8
    2ac0: aa1303e0     	mov	x0, x19
    2ac4: 52800941     	mov	w1, #0x4a               // =74
    2ac8: 52800023     	mov	w3, #0x1                // =1
    2acc: 390023e8     	strb	w8, [sp, #0x8]
    2ad0: 94000000     	bl	0x2ad0 <aw8693x_misc_para_init+0x184>
		0000000000002ad0:  R_AARCH64_CALL26	i2c_w_bytes
    2ad4: 910033e2     	add	x2, sp, #0xc
    2ad8: aa1303e0     	mov	x0, x19
    2adc: 52800961     	mov	w1, #0x4b               // =75
    2ae0: 52800023     	mov	w3, #0x1                // =1
    2ae4: 94000000     	bl	0x2ae4 <aw8693x_misc_para_init+0x198>
		0000000000002ae4:  R_AARCH64_CALL26	i2c_w_bytes
    2ae8: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    2aec: 91000000     	add	x0, x0, #0x0
		0000000000002aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    2af0: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe37
    2af4: 91000063     	add	x3, x3, #0x0
		0000000000002af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe37
    2af8: aa1403e1     	mov	x1, x20
    2afc: 528041a2     	mov	w2, #0x20d              // =525
    2b00: 94000000     	bl	0x2b00 <aw8693x_misc_para_init+0x1b4>
		0000000000002b00:  R_AARCH64_CALL26	_printk
    2b04: aa1303e0     	mov	x0, x19
    2b08: 528009a1     	mov	w1, #0x4d               // =77
    2b0c: 12800e02     	mov	w2, #-0x71              // =-113
    2b10: 52800803     	mov	w3, #0x40               // =64
    2b14: 94000000     	bl	0x2b14 <aw8693x_misc_para_init+0x1c8>
		0000000000002b14:  R_AARCH64_CALL26	i2c_w_bits
    2b18: 5281c388     	mov	w8, #0xe1c              // =3612
    2b1c: 5284a829     	mov	w9, #0x2541             // =9537
    2b20: 910033e2     	add	x2, sp, #0xc
    2b24: 72b00068     	movk	w8, #0x8003, lsl #16
    2b28: aa1303e0     	mov	x0, x19
    2b2c: 52800bc1     	mov	w1, #0x5e               // =94
    2b30: b90013e8     	str	w8, [sp, #0x10]
    2b34: 52800fa8     	mov	w8, #0x7d               // =125
    2b38: 52800023     	mov	w3, #0x1                // =1
    2b3c: 79002be9     	strh	w9, [sp, #0x14]
    2b40: 528000b4     	mov	w20, #0x5               // =5
    2b44: 390033e8     	strb	w8, [sp, #0xc]
    2b48: 94000000     	bl	0x2b48 <aw8693x_misc_para_init+0x1fc>
		0000000000002b48:  R_AARCH64_CALL26	i2c_w_bytes
    2b4c: 39530a63     	ldrb	w3, [x19, #0x4c2]
    2b50: aa1303e0     	mov	x0, x19
    2b54: 52800ac1     	mov	w1, #0x56               // =86
    2b58: 12800062     	mov	w2, #-0x4               // =-4
    2b5c: 94000000     	bl	0x2b5c <aw8693x_misc_para_init+0x210>
		0000000000002b5c:  R_AARCH64_CALL26	i2c_w_bits
    2b60: 910043e2     	add	x2, sp, #0x10
    2b64: aa1303e0     	mov	x0, x19
    2b68: 52800de1     	mov	w1, #0x6f               // =111
    2b6c: 52800043     	mov	w3, #0x2                // =2
    2b70: 94000000     	bl	0x2b70 <aw8693x_misc_para_init+0x224>
		0000000000002b70:  R_AARCH64_CALL26	i2c_w_bytes
    2b74: b27f02a2     	orr	x2, x21, #0x2
    2b78: aa1303e0     	mov	x0, x19
    2b7c: 52800e41     	mov	w1, #0x72               // =114
    2b80: 52800023     	mov	w3, #0x1                // =1
    2b84: 94000000     	bl	0x2b84 <aw8693x_misc_para_init+0x238>
		0000000000002b84:  R_AARCH64_CALL26	i2c_w_bytes
    2b88: b24006a2     	orr	x2, x21, #0x3
    2b8c: aa1303e0     	mov	x0, x19
    2b90: 52800ee1     	mov	w1, #0x77               // =119
    2b94: 52800023     	mov	w3, #0x1                // =1
    2b98: 94000000     	bl	0x2b98 <aw8693x_misc_para_init+0x24c>
		0000000000002b98:  R_AARCH64_CALL26	i2c_w_bytes
    2b9c: b27e02a2     	orr	x2, x21, #0x4
    2ba0: aa1303e0     	mov	x0, x19
    2ba4: 52800fa1     	mov	w1, #0x7d               // =125
    2ba8: 52800023     	mov	w3, #0x1                // =1
    2bac: 94000000     	bl	0x2bac <aw8693x_misc_para_init+0x260>
		0000000000002bac:  R_AARCH64_CALL26	i2c_w_bytes
    2bb0: aa1402a2     	orr	x2, x21, x20
    2bb4: aa1303e0     	mov	x0, x19
    2bb8: 52800d61     	mov	w1, #0x6b               // =107
    2bbc: 52800023     	mov	w3, #0x1                // =1
    2bc0: 94000000     	bl	0x2bc0 <aw8693x_misc_para_init+0x274>
		0000000000002bc0:  R_AARCH64_CALL26	i2c_w_bytes
    2bc4: 910033e2     	add	x2, sp, #0xc
    2bc8: aa1303e0     	mov	x0, x19
    2bcc: 52800bc1     	mov	w1, #0x5e               // =94
    2bd0: 52800023     	mov	w3, #0x1                // =1
    2bd4: 390033ff     	strb	wzr, [sp, #0xc]
    2bd8: 94000000     	bl	0x2bd8 <aw8693x_misc_para_init+0x28c>
		0000000000002bd8:  R_AARCH64_CALL26	i2c_w_bytes
    2bdc: d5384108     	mrs	x8, SP_EL0
    2be0: f9438908     	ldr	x8, [x8, #0x710]
    2be4: f85f83a9     	ldur	x9, [x29, #-0x8]
    2be8: eb09011f     	cmp	x8, x9
    2bec: 540000e1     	b.ne	0x2c08 <aw8693x_misc_para_init+0x2bc>
    2bf0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    2bf4: f9401bf5     	ldr	x21, [sp, #0x30]
    2bf8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    2bfc: 910143ff     	add	sp, sp, #0x50
    2c00: d50323bf     	autiasp
    2c04: d65f03c0     	ret
    2c08: 94000000     	bl	0x2c08 <aw8693x_misc_para_init+0x2bc>
		0000000000002c08:  R_AARCH64_CALL26	__stack_chk_fail
