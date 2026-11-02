
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004ac4 <aw8693x_stop>:
    4ac4: d503233f     	paciasp
    4ac8: d100c3ff     	sub	sp, sp, #0x30
    4acc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4ad0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4ad4: 910043fd     	add	x29, sp, #0x10
    4ad8: d5384108     	mrs	x8, SP_EL0
    4adc: aa0003f3     	mov	x19, x0
    4ae0: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e1
    4ae4: 91000000     	add	x0, x0, #0x0
		0000000000004ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e1
    4ae8: f9438908     	ldr	x8, [x8, #0x710]
    4aec: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4af0: 91000021     	add	x1, x1, #0x0
		0000000000004af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4af4: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x244
    4af8: 91000063     	add	x3, x3, #0x0
		0000000000004af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x244
    4afc: 52805522     	mov	w2, #0x2a9              // =681
    4b00: f90007e8     	str	x8, [sp, #0x8]
    4b04: 94000000     	bl	0x4b04 <aw8693x_stop+0x40>
		0000000000004b04:  R_AARCH64_CALL26	_printk
    4b08: 52800028     	mov	w8, #0x1                // =1
    4b0c: aa1303e0     	mov	x0, x19
    4b10: 528008a1     	mov	w1, #0x45               // =69
    4b14: 12800082     	mov	w2, #-0x5               // =-5
    4b18: 52800083     	mov	w3, #0x4                // =4
    4b1c: 39005e7f     	strb	wzr, [x19, #0x17]
    4b20: 390003e8     	strb	w8, [sp]
    4b24: 94000000     	bl	0x4b24 <aw8693x_stop+0x60>
		0000000000004b24:  R_AARCH64_CALL26	i2c_w_bits
    4b28: 52803e80     	mov	w0, #0x1f4              // =500
    4b2c: 52804b01     	mov	w1, #0x258              // =600
    4b30: 52800042     	mov	w2, #0x2                // =2
    4b34: 94000000     	bl	0x4b34 <aw8693x_stop+0x70>
		0000000000004b34:  R_AARCH64_CALL26	usleep_range_state
    4b38: aa1303e0     	mov	x0, x19
    4b3c: 52800101     	mov	w1, #0x8                // =8
    4b40: 12800062     	mov	w2, #-0x4               // =-4
    4b44: 52800063     	mov	w3, #0x3                // =3
    4b48: 94000000     	bl	0x4b48 <aw8693x_stop+0x84>
		0000000000004b48:  R_AARCH64_CALL26	i2c_w_bits
    4b4c: 910003e2     	mov	x2, sp
    4b50: aa1303e0     	mov	x0, x19
    4b54: 52800121     	mov	w1, #0x9                // =9
    4b58: 52800023     	mov	w3, #0x1                // =1
    4b5c: 94000000     	bl	0x4b5c <aw8693x_stop+0x98>
		0000000000004b5c:  R_AARCH64_CALL26	i2c_w_bytes
    4b60: aa1303e0     	mov	x0, x19
    4b64: 528008a1     	mov	w1, #0x45               // =69
    4b68: 12800082     	mov	w2, #-0x5               // =-5
    4b6c: 2a1f03e3     	mov	w3, wzr
    4b70: 94000000     	bl	0x4b70 <aw8693x_stop+0xac>
		0000000000004b70:  R_AARCH64_CALL26	i2c_w_bits
    4b74: 12800c74     	mov	w20, #-0x64             // =-100
    4b78: 910013e2     	add	x2, sp, #0x4
    4b7c: aa1303e0     	mov	x0, x19
    4b80: 528007e1     	mov	w1, #0x3f               // =63
    4b84: 52800023     	mov	w3, #0x1                // =1
    4b88: 390013ff     	strb	wzr, [sp, #0x4]
    4b8c: 94000000     	bl	0x4b8c <aw8693x_stop+0xc8>
		0000000000004b8c:  R_AARCH64_CALL26	i2c_r_bytes
    4b90: 394013e8     	ldrb	w8, [sp, #0x4]
    4b94: 34000548     	cbz	w8, 0x4c3c <aw8693x_stop+0x178>
    4b98: 5280fa00     	mov	w0, #0x7d0              // =2000
    4b9c: 52813881     	mov	w1, #0x9c4              // =2500
    4ba0: 52800042     	mov	w2, #0x2                // =2
    4ba4: 94000000     	bl	0x4ba4 <aw8693x_stop+0xe0>
		0000000000004ba4:  R_AARCH64_CALL26	usleep_range_state
    4ba8: 31000694     	adds	w20, w20, #0x1
    4bac: 54fffe63     	b.lo	0x4b78 <aw8693x_stop+0xb4>
    4bb0: 90000014     	adrp	x20, 0x4000 <awrw_store+0x1fc>
		0000000000004bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4bb4: 91000294     	add	x20, x20, #0x0
		0000000000004bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4bb8: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9
    4bbc: 91000000     	add	x0, x0, #0x0
		0000000000004bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9
    4bc0: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa42
    4bc4: 91000063     	add	x3, x3, #0x0
		0000000000004bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa42
    4bc8: aa1403e1     	mov	x1, x20
    4bcc: 52803de2     	mov	w2, #0x1ef              // =495
    4bd0: 94000000     	bl	0x4bd0 <aw8693x_stop+0x10c>
		0000000000004bd0:  R_AARCH64_CALL26	_printk
    4bd4: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfb9
    4bd8: 91000000     	add	x0, x0, #0x0
		0000000000004bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfb9
    4bdc: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x244
    4be0: 91000063     	add	x3, x3, #0x0
		0000000000004be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x244
    4be4: aa1403e1     	mov	x1, x20
    4be8: 52805682     	mov	w2, #0x2b4              // =692
    4bec: 94000000     	bl	0x4bec <aw8693x_stop+0x128>
		0000000000004bec:  R_AARCH64_CALL26	_printk
    4bf0: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4
    4bf4: 91000000     	add	x0, x0, #0x0
		0000000000004bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4
    4bf8: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e4
    4bfc: 91000063     	add	x3, x3, #0x0
		0000000000004bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e4
    4c00: aa1403e1     	mov	x1, x20
    4c04: 528047c2     	mov	w2, #0x23e              // =574
    4c08: 94000000     	bl	0x4c08 <aw8693x_stop+0x144>
		0000000000004c08:  R_AARCH64_CALL26	_printk
    4c0c: aa1303e0     	mov	x0, x19
    4c10: 528008a1     	mov	w1, #0x45               // =69
    4c14: 12800402     	mov	w2, #-0x21              // =-33
    4c18: 52800403     	mov	w3, #0x20               // =32
    4c1c: 39005e7f     	strb	wzr, [x19, #0x17]
    4c20: 94000000     	bl	0x4c20 <aw8693x_stop+0x15c>
		0000000000004c20:  R_AARCH64_CALL26	i2c_w_bits
    4c24: aa1303e0     	mov	x0, x19
    4c28: 528008a1     	mov	w1, #0x45               // =69
    4c2c: 12800402     	mov	w2, #-0x21              // =-33
    4c30: 2a1f03e3     	mov	w3, wzr
    4c34: 94000000     	bl	0x4c34 <aw8693x_stop+0x170>
		0000000000004c34:  R_AARCH64_CALL26	i2c_w_bits
    4c38: 14000009     	b	0x4c5c <aw8693x_stop+0x198>
    4c3c: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1786
    4c40: 91000000     	add	x0, x0, #0x0
		0000000000004c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1786
    4c44: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4c48: 91000021     	add	x1, x1, #0x0
		0000000000004c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4c4c: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa42
    4c50: 91000063     	add	x3, x3, #0x0
		0000000000004c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa42
    4c54: 52803d42     	mov	w2, #0x1ea              // =490
    4c58: 94000000     	bl	0x4c58 <aw8693x_stop+0x194>
		0000000000004c58:  R_AARCH64_CALL26	_printk
    4c5c: d5384108     	mrs	x8, SP_EL0
    4c60: f9438908     	ldr	x8, [x8, #0x710]
    4c64: f94007e9     	ldr	x9, [sp, #0x8]
    4c68: eb09011f     	cmp	x8, x9
    4c6c: 540000c1     	b.ne	0x4c84 <aw8693x_stop+0x1c0>
    4c70: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4c74: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4c78: 9100c3ff     	add	sp, sp, #0x30
    4c7c: d50323bf     	autiasp
    4c80: d65f03c0     	ret
    4c84: 94000000     	bl	0x4c84 <aw8693x_stop+0x1c0>
		0000000000004c84:  R_AARCH64_CALL26	__stack_chk_fail
