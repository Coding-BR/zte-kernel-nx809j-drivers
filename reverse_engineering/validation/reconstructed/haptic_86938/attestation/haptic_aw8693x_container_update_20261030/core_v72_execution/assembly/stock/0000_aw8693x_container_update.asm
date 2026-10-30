
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bc0 <aw8693x_container_update>:
     bc0: d503233f     	paciasp
     bc4: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     bc8: f9000bfc     	str	x28, [sp, #0x10]
     bcc: a90267fa     	stp	x26, x25, [sp, #0x20]
     bd0: a9035ff8     	stp	x24, x23, [sp, #0x30]
     bd4: a90457f6     	stp	x22, x21, [sp, #0x40]
     bd8: a9054ff4     	stp	x20, x19, [sp, #0x50]
     bdc: 910003fd     	mov	x29, sp
     be0: d11043ff     	sub	sp, sp, #0x410
     be4: d5384108     	mrs	x8, SP_EL0
     be8: aa0103f4     	mov	x20, x1
     bec: aa0003f3     	mov	x19, x0
     bf0: f9438908     	ldr	x8, [x8, #0x710]
     bf4: 910023e0     	add	x0, sp, #0x8
     bf8: 2a1f03e1     	mov	w1, wzr
     bfc: 52808002     	mov	w2, #0x400              // =1024
     c00: f81f83a8     	stur	x8, [x29, #-0x8]
     c04: 94000000     	bl	0xc04 <aw8693x_container_update+0x44>
		0000000000000c04:  R_AARCH64_CALL26	memset
     c08: 910bc260     	add	x0, x19, #0x2f0
     c0c: 94000000     	bl	0xc0c <aw8693x_container_update+0x4c>
		0000000000000c0c:  R_AARCH64_CALL26	mutex_lock
     c10: 52804088     	mov	w8, #0x204              // =516
     c14: aa1303e0     	mov	x0, x19
     c18: 7908be68     	strh	w8, [x19, #0x45e]
     c1c: 940000c4     	bl	0xf2c <aw8693x_stop>
     c20: aa1303e0     	mov	x0, x19
     c24: 528008a1     	mov	w1, #0x45               // =69
     c28: 12800082     	mov	w2, #-0x5               // =-5
     c2c: 52800083     	mov	w3, #0x4                // =4
     c30: 94000000     	bl	0xc30 <aw8693x_container_update+0x70>
		0000000000000c30:  R_AARCH64_CALL26	i2c_w_bits
     c34: 52803e80     	mov	w0, #0x1f4              // =500
     c38: 52804b01     	mov	w1, #0x258              // =600
     c3c: 52800042     	mov	w2, #0x2                // =2
     c40: 94000000     	bl	0xc40 <aw8693x_container_update+0x80>
		0000000000000c40:  R_AARCH64_CALL26	usleep_range_state
     c44: 39517e68     	ldrb	w8, [x19, #0x45f]
     c48: 91001297     	add	x23, x20, #0x4
     c4c: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     c50: 910002d6     	add	x22, x22, #0x0
		0000000000000c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     c54: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e
     c58: 910002b5     	add	x21, x21, #0x0
		0000000000000c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e
     c5c: 78686ae8     	ldrh	w8, [x23, x8]
     c60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x352
     c64: 91000000     	add	x0, x0, #0x0
		0000000000000c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x352
     c68: aa1603e1     	mov	x1, x22
     c6c: 5280cae2     	mov	w2, #0x657              // =1623
     c70: aa1503e3     	mov	x3, x21
     c74: 5ac00504     	rev16	w4, w8
     c78: b9045a64     	str	w4, [x19, #0x458]
     c7c: 94000000     	bl	0xc7c <aw8693x_container_update+0xbc>
		0000000000000c7c:  R_AARCH64_CALL26	_printk
     c80: b9445a68     	ldr	w8, [x19, #0x458]
     c84: 910003e2     	mov	x2, sp
     c88: aa1303e0     	mov	x0, x19
     c8c: 528005e1     	mov	w1, #0x2f               // =47
     c90: 52800063     	mov	w3, #0x3                // =3
     c94: 53057d09     	lsr	w9, w8, #5
     c98: 4b48090a     	sub	w10, w8, w8, lsr #2
     c9c: 53017d08     	lsr	w8, w8, #1
     ca0: 33082d49     	bfxil	w9, w10, #8, #4
     ca4: 390007e8     	strb	w8, [sp, #0x1]
     ca8: 39000bea     	strb	w10, [sp, #0x2]
     cac: 390003e9     	strb	w9, [sp]
     cb0: 94000000     	bl	0xcb0 <aw8693x_container_update+0xf0>
		0000000000000cb0:  R_AARCH64_CALL26	i2c_w_bytes
     cb4: 910003e2     	mov	x2, sp
     cb8: aa1303e0     	mov	x0, x19
     cbc: 528005e1     	mov	w1, #0x2f               // =47
     cc0: 52800063     	mov	w3, #0x3                // =3
     cc4: 94000000     	bl	0xcc4 <aw8693x_container_update+0x104>
		0000000000000cc4:  R_AARCH64_CALL26	i2c_r_bytes
     cc8: 394003e8     	ldrb	w8, [sp]
     ccc: 394007e4     	ldrb	w4, [sp, #0x1]
     cd0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1438
     cd4: 91000000     	add	x0, x0, #0x0
		0000000000000cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1438
     cd8: aa1603e1     	mov	x1, x22
     cdc: 5280cca2     	mov	w2, #0x665              // =1637
     ce0: 53047d08     	lsr	w8, w8, #4
     ce4: aa1503e3     	mov	x3, x21
     ce8: 33180d04     	bfi	w4, w8, #8, #4
     cec: 94000000     	bl	0xcec <aw8693x_container_update+0x12c>
		0000000000000cec:  R_AARCH64_CALL26	_printk
     cf0: 394003e8     	ldrb	w8, [sp]
     cf4: 39400be4     	ldrb	w4, [sp, #0x2]
     cf8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa60
     cfc: 91000000     	add	x0, x0, #0x0
		0000000000000cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa60
     d00: aa1603e1     	mov	x1, x22
     d04: 5280cd02     	mov	w2, #0x668              // =1640
     d08: 33180d04     	bfi	w4, w8, #8, #4
     d0c: aa1503e3     	mov	x3, x21
     d10: 94000000     	bl	0xd10 <aw8693x_container_update+0x150>
		0000000000000d10:  R_AARCH64_CALL26	_printk
     d14: b9445a68     	ldr	w8, [x19, #0x458]
     d18: aa1303e0     	mov	x0, x19
     d1c: 528005a1     	mov	w1, #0x2d               // =45
     d20: 128003e2     	mov	w2, #-0x20              // =-32
     d24: 910013f5     	add	x21, sp, #0x4
     d28: 5ac00909     	rev	w9, w8
     d2c: 53087d03     	lsr	w3, w8, #8
     d30: 53107d29     	lsr	w9, w9, #16
     d34: 79000be9     	strh	w9, [sp, #0x4]
     d38: 94000000     	bl	0xd38 <aw8693x_container_update+0x178>
		0000000000000d38:  R_AARCH64_CALL26	i2c_w_bits
     d3c: b24002a2     	orr	x2, x21, #0x1
     d40: aa1303e0     	mov	x0, x19
     d44: 528005c1     	mov	w1, #0x2e               // =46
     d48: 52800023     	mov	w3, #0x1                // =1
     d4c: 94000000     	bl	0xd4c <aw8693x_container_update+0x18c>
		0000000000000d4c:  R_AARCH64_CALL26	i2c_w_bytes
     d50: 7948b268     	ldrh	w8, [x19, #0x458]
     d54: 910013e2     	add	x2, sp, #0x4
     d58: aa1303e0     	mov	x0, x19
     d5c: 52800801     	mov	w1, #0x40               // =64
     d60: 52800043     	mov	w3, #0x2                // =2
     d64: 5ac00908     	rev	w8, w8
     d68: 53107d08     	lsr	w8, w8, #16
     d6c: 79000be8     	strh	w8, [sp, #0x4]
     d70: 94000000     	bl	0xd70 <aw8693x_container_update+0x1b0>
		0000000000000d70:  R_AARCH64_CALL26	i2c_w_bytes
     d74: 39517a76     	ldrb	w22, [x19, #0x45e]
     d78: b9400288     	ldr	w8, [x20]
     d7c: 6b16011f     	cmp	w8, w22
     d80: 540001cd     	b.le	0xdb8 <aw8693x_container_update+0x1f8>
     d84: 52810018     	mov	w24, #0x800             // =2048
     d88: 4b160108     	sub	w8, w8, w22
     d8c: 8b36c2e2     	add	x2, x23, w22, sxtw
     d90: aa1303e0     	mov	x0, x19
     d94: 7120011f     	cmp	w8, #0x800
     d98: 52800841     	mov	w1, #0x42               // =66
     d9c: 1a98b115     	csel	w21, w8, w24, lt
     da0: 2a1503e3     	mov	w3, w21
     da4: 94000000     	bl	0xda4 <aw8693x_container_update+0x1e4>
		0000000000000da4:  R_AARCH64_CALL26	i2c_w_bytes
     da8: b9400288     	ldr	w8, [x20]
     dac: 0b1602b6     	add	w22, w21, w22
     db0: 6b0802df     	cmp	w22, w8
     db4: 54fffeab     	b.lt	0xd88 <aw8693x_container_update+0x1c8>
     db8: 7948b268     	ldrh	w8, [x19, #0x458]
     dbc: 910013e2     	add	x2, sp, #0x4
     dc0: aa1303e0     	mov	x0, x19
     dc4: 52800801     	mov	w1, #0x40               // =64
     dc8: 52800043     	mov	w3, #0x2                // =2
     dcc: 5ac00908     	rev	w8, w8
     dd0: 53107d08     	lsr	w8, w8, #16
     dd4: 79000be8     	strh	w8, [sp, #0x4]
     dd8: 94000000     	bl	0xdd8 <aw8693x_container_update+0x218>
		0000000000000dd8:  R_AARCH64_CALL26	i2c_w_bytes
     ddc: 39517a76     	ldrb	w22, [x19, #0x45e]
     de0: b9400288     	ldr	w8, [x20]
     de4: 6b16011f     	cmp	w8, w22
     de8: 540003ad     	b.le	0xe5c <aw8693x_container_update+0x29c>
     dec: 52808018     	mov	w24, #0x400             // =1024
     df0: 910023f9     	add	x25, sp, #0x8
     df4: 4b16011a     	sub	w26, w8, w22
     df8: 910023e2     	add	x2, sp, #0x8
     dfc: aa1303e0     	mov	x0, x19
     e00: 7110035f     	cmp	w26, #0x400
     e04: 52800841     	mov	w1, #0x42               // =66
     e08: 1a98b355     	csel	w21, w26, w24, lt
     e0c: 2a1503e3     	mov	w3, w21
     e10: 94000000     	bl	0xe10 <aw8693x_container_update+0x250>
		0000000000000e10:  R_AARCH64_CALL26	i2c_r_bytes
     e14: 93407f49     	sxtw	x9, w26
     e18: 8b36c2e8     	add	x8, x23, w22, sxtw
     e1c: aa1f03e4     	mov	x4, xzr
     e20: f110013f     	cmp	x9, #0x400
     e24: 9a98b129     	csel	x9, x9, x24, lt
     e28: 710ffc9f     	cmp	w4, #0x3ff
     e2c: 540007a8     	b.hi	0xf20 <aw8693x_container_update+0x360>
     e30: 38646b25     	ldrb	w5, [x25, x4]
     e34: 38646906     	ldrb	w6, [x8, x4]
     e38: 6b0600bf     	cmp	w5, w6
     e3c: 54000241     	b.ne	0xe84 <aw8693x_container_update+0x2c4>
     e40: 91000484     	add	x4, x4, #0x1
     e44: 6b04013f     	cmp	w9, w4
     e48: 54ffff01     	b.ne	0xe28 <aw8693x_container_update+0x268>
     e4c: b9400288     	ldr	w8, [x20]
     e50: 0b1602b6     	add	w22, w21, w22
     e54: 6b0802df     	cmp	w22, w8
     e58: 54fffceb     	b.lt	0xdf4 <aw8693x_container_update+0x234>
     e5c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b0d
     e60: 91000000     	add	x0, x0, #0x0
		0000000000000e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b0d
     e64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     e68: 91000021     	add	x1, x1, #0x0
		0000000000000e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     e6c: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e
     e70: 91000063     	add	x3, x3, #0x0
		0000000000000e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e
     e74: 5280d122     	mov	w2, #0x689              // =1673
     e78: 94000000     	bl	0xe78 <aw8693x_container_update+0x2b8>
		0000000000000e78:  R_AARCH64_CALL26	_printk
     e7c: 2a1f03f4     	mov	w20, wzr
     e80: 14000012     	b	0xec8 <aw8693x_container_update+0x308>
     e84: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     e88: 91000294     	add	x20, x20, #0x0
		0000000000000e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     e8c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57
     e90: 91000000     	add	x0, x0, #0x0
		0000000000000e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57
     e94: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27ec
     e98: 91000063     	add	x3, x3, #0x0
		0000000000000e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27ec
     e9c: aa1403e1     	mov	x1, x20
     ea0: 5280c602     	mov	w2, #0x630              // =1584
     ea4: 94000000     	bl	0xea4 <aw8693x_container_update+0x2e4>
		0000000000000ea4:  R_AARCH64_CALL26	_printk
     ea8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc42
     eac: 91000000     	add	x0, x0, #0x0
		0000000000000eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc42
     eb0: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e
     eb4: 91000063     	add	x3, x3, #0x0
		0000000000000eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e
     eb8: aa1403e1     	mov	x1, x20
     ebc: 5280d0e2     	mov	w2, #0x687              // =1671
     ec0: 94000000     	bl	0xec0 <aw8693x_container_update+0x300>
		0000000000000ec0:  R_AARCH64_CALL26	_printk
     ec4: 12800434     	mov	w20, #-0x22             // =-34
     ec8: aa1303e0     	mov	x0, x19
     ecc: 528008a1     	mov	w1, #0x45               // =69
     ed0: 12800082     	mov	w2, #-0x5               // =-5
     ed4: 2a1f03e3     	mov	w3, wzr
     ed8: 94000000     	bl	0xed8 <aw8693x_container_update+0x318>
		0000000000000ed8:  R_AARCH64_CALL26	i2c_w_bits
     edc: 910bc260     	add	x0, x19, #0x2f0
     ee0: 94000000     	bl	0xee0 <aw8693x_container_update+0x320>
		0000000000000ee0:  R_AARCH64_CALL26	mutex_unlock
     ee4: d5384108     	mrs	x8, SP_EL0
     ee8: f9438908     	ldr	x8, [x8, #0x710]
     eec: f85f83a9     	ldur	x9, [x29, #-0x8]
     ef0: eb09011f     	cmp	x8, x9
     ef4: 54000181     	b.ne	0xf24 <aw8693x_container_update+0x364>
     ef8: 2a1403e0     	mov	w0, w20
     efc: 911043ff     	add	sp, sp, #0x410
     f00: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     f04: f9400bfc     	ldr	x28, [sp, #0x10]
     f08: a94457f6     	ldp	x22, x21, [sp, #0x40]
     f0c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     f10: a94267fa     	ldp	x26, x25, [sp, #0x20]
     f14: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     f18: d50323bf     	autiasp
     f1c: d65f03c0     	ret
     f20: d4200020     	brk	#0x1
     f24: 94000000     	bl	0xf24 <aw8693x_container_update+0x364>
		0000000000000f24:  R_AARCH64_CALL26	__stack_chk_fail
