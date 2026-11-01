
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001978 <aw8693x_play_mode>:
    1978: d503233f     	paciasp
    197c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1980: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1984: 910003fd     	mov	x29, sp
    1988: 12001c28     	and	w8, w1, #0xff
    198c: aa0003f3     	mov	x19, x0
    1990: 7100091f     	cmp	w8, #0x2
    1994: 5400036c     	b.gt	0x1a00 <aw8693x_play_mode+0x88>
    1998: 340006a8     	cbz	w8, 0x1a6c <aw8693x_play_mode+0xf4>
    199c: 7100051f     	cmp	w8, #0x1
    19a0: 54000be0     	b.eq	0x1b1c <aw8693x_play_mode+0x1a4>
    19a4: 7100091f     	cmp	w8, #0x2
    19a8: 54000a41     	b.ne	0x1af0 <aw8693x_play_mode+0x178>
    19ac: 90000014     	adrp	x20, 0x1000 <aw8693x_stop+0xd4>
		00000000000019ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    19b0: 91000294     	add	x20, x20, #0x0
		00000000000019b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    19b4: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		00000000000019b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25f9
    19b8: 91000000     	add	x0, x0, #0x0
		00000000000019b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25f9
    19bc: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		00000000000019bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    19c0: 91000063     	add	x3, x3, #0x0
		00000000000019c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    19c4: aa1403e1     	mov	x1, x20
    19c8: 52804c62     	mov	w2, #0x263              // =611
    19cc: 94000000     	bl	0x19cc <aw8693x_play_mode+0x54>
		00000000000019cc:  R_AARCH64_CALL26	_printk
    19d0: 52800048     	mov	w8, #0x2                // =2
    19d4: aa1303e0     	mov	x0, x19
    19d8: 52800101     	mov	w1, #0x8                // =8
    19dc: 12800062     	mov	w2, #-0x4               // =-4
    19e0: 52800023     	mov	w3, #0x1                // =1
    19e4: 39005e68     	strb	w8, [x19, #0x17]
    19e8: 94000000     	bl	0x19e8 <aw8693x_play_mode+0x70>
		00000000000019e8:  R_AARCH64_CALL26	i2c_w_bits
    19ec: aa1303e0     	mov	x0, x19
    19f0: 52800101     	mov	w1, #0x8                // =8
    19f4: 12800082     	mov	w2, #-0x5               // =-5
    19f8: 52800083     	mov	w3, #0x4                // =4
    19fc: 1400005c     	b	0x1b6c <aw8693x_play_mode+0x1f4>
    1a00: 71000d1f     	cmp	w8, #0x3
    1a04: 54000580     	b.eq	0x1ab4 <aw8693x_play_mode+0x13c>
    1a08: 7100111f     	cmp	w8, #0x4
    1a0c: 54000d40     	b.eq	0x1bb4 <aw8693x_play_mode+0x23c>
    1a10: 7100151f     	cmp	w8, #0x5
    1a14: 540006e1     	b.ne	0x1af0 <aw8693x_play_mode+0x178>
    1a18: 90000014     	adrp	x20, 0x1000 <aw8693x_stop+0xd4>
		0000000000001a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1a1c: 91000294     	add	x20, x20, #0x0
		0000000000001a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1a20: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a1
    1a24: 91000000     	add	x0, x0, #0x0
		0000000000001a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a1
    1a28: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    1a2c: 91000063     	add	x3, x3, #0x0
		0000000000001a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    1a30: aa1403e1     	mov	x1, x20
    1a34: 52804b22     	mov	w2, #0x259              // =601
    1a38: 94000000     	bl	0x1a38 <aw8693x_play_mode+0xc0>
		0000000000001a38:  R_AARCH64_CALL26	_printk
    1a3c: 528000a8     	mov	w8, #0x5                // =5
    1a40: aa1303e0     	mov	x0, x19
    1a44: 52800101     	mov	w1, #0x8                // =8
    1a48: 12800062     	mov	w2, #-0x4               // =-4
    1a4c: 2a1f03e3     	mov	w3, wzr
    1a50: 39005e68     	strb	w8, [x19, #0x17]
    1a54: 94000000     	bl	0x1a54 <aw8693x_play_mode+0xdc>
		0000000000001a54:  R_AARCH64_CALL26	i2c_w_bits
    1a58: aa1303e0     	mov	x0, x19
    1a5c: 52800101     	mov	w1, #0x8                // =8
    1a60: 12800082     	mov	w2, #-0x5               // =-5
    1a64: 2a1f03e3     	mov	w3, wzr
    1a68: 14000067     	b	0x1c04 <aw8693x_play_mode+0x28c>
    1a6c: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c
    1a70: 91000000     	add	x0, x0, #0x0
		0000000000001a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c
    1a74: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1a78: 91000021     	add	x1, x1, #0x0
		0000000000001a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1a7c: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    1a80: 91000063     	add	x3, x3, #0x0
		0000000000001a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    1a84: 528047c2     	mov	w2, #0x23e              // =574
    1a88: 94000000     	bl	0x1a88 <aw8693x_play_mode+0x110>
		0000000000001a88:  R_AARCH64_CALL26	_printk
    1a8c: aa1303e0     	mov	x0, x19
    1a90: 528008a1     	mov	w1, #0x45               // =69
    1a94: 12800402     	mov	w2, #-0x21              // =-33
    1a98: 52800403     	mov	w3, #0x20               // =32
    1a9c: 39005e7f     	strb	wzr, [x19, #0x17]
    1aa0: 94000000     	bl	0x1aa0 <aw8693x_play_mode+0x128>
		0000000000001aa0:  R_AARCH64_CALL26	i2c_w_bits
    1aa4: aa1303e0     	mov	x0, x19
    1aa8: 528008a1     	mov	w1, #0x45               // =69
    1aac: 12800402     	mov	w2, #-0x21              // =-33
    1ab0: 1400003f     	b	0x1bac <aw8693x_play_mode+0x234>
    1ab4: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6c
    1ab8: 91000000     	add	x0, x0, #0x0
		0000000000001ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6c
    1abc: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1ac0: 91000021     	add	x1, x1, #0x0
		0000000000001ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1ac4: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    1ac8: 91000063     	add	x3, x3, #0x0
		0000000000001ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    1acc: 52804da2     	mov	w2, #0x26d              // =621
    1ad0: 94000000     	bl	0x1ad0 <aw8693x_play_mode+0x158>
		0000000000001ad0:  R_AARCH64_CALL26	_printk
    1ad4: 52800068     	mov	w8, #0x3                // =3
    1ad8: aa1303e0     	mov	x0, x19
    1adc: 52800101     	mov	w1, #0x8                // =8
    1ae0: 12800062     	mov	w2, #-0x4               // =-4
    1ae4: 2a1f03e3     	mov	w3, wzr
    1ae8: 39005e68     	strb	w8, [x19, #0x17]
    1aec: 1400002c     	b	0x1b9c <aw8693x_play_mode+0x224>
    1af0: 90000008     	adrp	x8, 0x1000 <aw8693x_stop+0xd4>
		0000000000001af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1af4: 91000108     	add	x8, x8, #0x0
		0000000000001af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1af8: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29dc
    1afc: 91000000     	add	x0, x0, #0x0
		0000000000001afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29dc
    1b00: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    1b04: 91000063     	add	x3, x3, #0x0
		0000000000001b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    1b08: 12001c24     	and	w4, w1, #0xff
    1b0c: aa0803e1     	mov	x1, x8
    1b10: 52804fe2     	mov	w2, #0x27f              // =639
    1b14: 94000000     	bl	0x1b14 <aw8693x_play_mode+0x19c>
		0000000000001b14:  R_AARCH64_CALL26	_printk
    1b18: 1400004d     	b	0x1c4c <aw8693x_play_mode+0x2d4>
    1b1c: 90000014     	adrp	x20, 0x1000 <aw8693x_stop+0xd4>
		0000000000001b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1b20: 91000294     	add	x20, x20, #0x0
		0000000000001b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1b24: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1081
    1b28: 91000000     	add	x0, x0, #0x0
		0000000000001b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1081
    1b2c: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    1b30: 91000063     	add	x3, x3, #0x0
		0000000000001b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    1b34: aa1403e1     	mov	x1, x20
    1b38: 528049e2     	mov	w2, #0x24f              // =591
    1b3c: 94000000     	bl	0x1b3c <aw8693x_play_mode+0x1c4>
		0000000000001b3c:  R_AARCH64_CALL26	_printk
    1b40: 52800028     	mov	w8, #0x1                // =1
    1b44: aa1303e0     	mov	x0, x19
    1b48: 52800101     	mov	w1, #0x8                // =8
    1b4c: 12800062     	mov	w2, #-0x4               // =-4
    1b50: 2a1f03e3     	mov	w3, wzr
    1b54: 39005e68     	strb	w8, [x19, #0x17]
    1b58: 94000000     	bl	0x1b58 <aw8693x_play_mode+0x1e0>
		0000000000001b58:  R_AARCH64_CALL26	i2c_w_bits
    1b5c: aa1303e0     	mov	x0, x19
    1b60: 52800101     	mov	w1, #0x8                // =8
    1b64: 12800082     	mov	w2, #-0x5               // =-5
    1b68: 2a1f03e3     	mov	w3, wzr
    1b6c: 94000000     	bl	0x1b6c <aw8693x_play_mode+0x1f4>
		0000000000001b6c:  R_AARCH64_CALL26	i2c_w_bits
    1b70: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b2
    1b74: 91000000     	add	x0, x0, #0x0
		0000000000001b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b2
    1b78: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b
    1b7c: 91000063     	add	x3, x3, #0x0
		0000000000001b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b
    1b80: aa1403e1     	mov	x1, x20
    1b84: 52803f02     	mov	w2, #0x1f8              // =504
    1b88: 94000000     	bl	0x1b88 <aw8693x_play_mode+0x210>
		0000000000001b88:  R_AARCH64_CALL26	_printk
    1b8c: aa1303e0     	mov	x0, x19
    1b90: 528000c1     	mov	w1, #0x6                // =6
    1b94: 12800402     	mov	w2, #-0x21              // =-33
    1b98: 52800403     	mov	w3, #0x20               // =32
    1b9c: 94000000     	bl	0x1b9c <aw8693x_play_mode+0x224>
		0000000000001b9c:  R_AARCH64_CALL26	i2c_w_bits
    1ba0: aa1303e0     	mov	x0, x19
    1ba4: 52800981     	mov	w1, #0x4c               // =76
    1ba8: 12800802     	mov	w2, #-0x41              // =-65
    1bac: 2a1f03e3     	mov	w3, wzr
    1bb0: 14000026     	b	0x1c48 <aw8693x_play_mode+0x2d0>
    1bb4: 90000014     	adrp	x20, 0x1000 <aw8693x_stop+0xd4>
		0000000000001bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1bb8: 91000294     	add	x20, x20, #0x0
		0000000000001bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1bbc: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd
    1bc0: 91000000     	add	x0, x0, #0x0
		0000000000001bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd
    1bc4: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    1bc8: 91000063     	add	x3, x3, #0x0
		0000000000001bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    1bcc: aa1403e1     	mov	x1, x20
    1bd0: 52804ea2     	mov	w2, #0x275              // =629
    1bd4: 94000000     	bl	0x1bd4 <aw8693x_play_mode+0x25c>
		0000000000001bd4:  R_AARCH64_CALL26	_printk
    1bd8: 52800088     	mov	w8, #0x4                // =4
    1bdc: aa1303e0     	mov	x0, x19
    1be0: 52800101     	mov	w1, #0x8                // =8
    1be4: 12800062     	mov	w2, #-0x4               // =-4
    1be8: 52800043     	mov	w3, #0x2                // =2
    1bec: 39005e68     	strb	w8, [x19, #0x17]
    1bf0: 94000000     	bl	0x1bf0 <aw8693x_play_mode+0x278>
		0000000000001bf0:  R_AARCH64_CALL26	i2c_w_bits
    1bf4: aa1303e0     	mov	x0, x19
    1bf8: 52800101     	mov	w1, #0x8                // =8
    1bfc: 12800082     	mov	w2, #-0x5               // =-5
    1c00: 52800083     	mov	w3, #0x4                // =4
    1c04: 94000000     	bl	0x1c04 <aw8693x_play_mode+0x28c>
		0000000000001c04:  R_AARCH64_CALL26	i2c_w_bits
    1c08: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x505
    1c0c: 91000000     	add	x0, x0, #0x0
		0000000000001c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x505
    1c10: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b
    1c14: 91000063     	add	x3, x3, #0x0
		0000000000001c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b
    1c18: aa1403e1     	mov	x1, x20
    1c1c: 52803fc2     	mov	w2, #0x1fe              // =510
    1c20: 94000000     	bl	0x1c20 <aw8693x_play_mode+0x2a8>
		0000000000001c20:  R_AARCH64_CALL26	_printk
    1c24: aa1303e0     	mov	x0, x19
    1c28: 528000c1     	mov	w1, #0x6                // =6
    1c2c: 12800402     	mov	w2, #-0x21              // =-33
    1c30: 2a1f03e3     	mov	w3, wzr
    1c34: 94000000     	bl	0x1c34 <aw8693x_play_mode+0x2bc>
		0000000000001c34:  R_AARCH64_CALL26	i2c_w_bits
    1c38: aa1303e0     	mov	x0, x19
    1c3c: 52800981     	mov	w1, #0x4c               // =76
    1c40: 12800802     	mov	w2, #-0x41              // =-65
    1c44: 52800803     	mov	w3, #0x40               // =64
    1c48: 94000000     	bl	0x1c48 <aw8693x_play_mode+0x2d0>
		0000000000001c48:  R_AARCH64_CALL26	i2c_w_bits
    1c4c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1c50: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c54: d50323bf     	autiasp
    1c58: d65f03c0     	ret
