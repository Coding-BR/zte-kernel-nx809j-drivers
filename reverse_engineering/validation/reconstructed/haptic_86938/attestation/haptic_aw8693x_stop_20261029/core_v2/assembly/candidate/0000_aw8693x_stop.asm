
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004a94 <aw8693x_stop>:
    4a94: d503233f     	paciasp
    4a98: d100c3ff     	sub	sp, sp, #0x30
    4a9c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4aa0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4aa4: 910043fd     	add	x29, sp, #0x10
    4aa8: d5384108     	mrs	x8, SP_EL0
    4aac: aa0003f3     	mov	x19, x0
    4ab0: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x404
    4ab4: 91000000     	add	x0, x0, #0x0
		0000000000004ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x404
    4ab8: f9438908     	ldr	x8, [x8, #0x710]
    4abc: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4ac0: 91000021     	add	x1, x1, #0x0
		0000000000004ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4ac4: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197
    4ac8: 91000063     	add	x3, x3, #0x0
		0000000000004ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197
    4acc: 52805522     	mov	w2, #0x2a9              // =681
    4ad0: f90007e8     	str	x8, [sp, #0x8]
    4ad4: 94000000     	bl	0x4ad4 <aw8693x_stop+0x40>
		0000000000004ad4:  R_AARCH64_CALL26	_printk
    4ad8: 52800028     	mov	w8, #0x1                // =1
    4adc: aa1303e0     	mov	x0, x19
    4ae0: 528008a1     	mov	w1, #0x45               // =69
    4ae4: 12800082     	mov	w2, #-0x5               // =-5
    4ae8: 52800083     	mov	w3, #0x4                // =4
    4aec: 39005e7f     	strb	wzr, [x19, #0x17]
    4af0: 390003e8     	strb	w8, [sp]
    4af4: 94000000     	bl	0x4af4 <aw8693x_stop+0x60>
		0000000000004af4:  R_AARCH64_CALL26	i2c_w_bits
    4af8: 52803e80     	mov	w0, #0x1f4              // =500
    4afc: 52804b01     	mov	w1, #0x258              // =600
    4b00: 52800042     	mov	w2, #0x2                // =2
    4b04: 94000000     	bl	0x4b04 <aw8693x_stop+0x70>
		0000000000004b04:  R_AARCH64_CALL26	usleep_range_state
    4b08: aa1303e0     	mov	x0, x19
    4b0c: 52800101     	mov	w1, #0x8                // =8
    4b10: 12800062     	mov	w2, #-0x4               // =-4
    4b14: 52800063     	mov	w3, #0x3                // =3
    4b18: 94000000     	bl	0x4b18 <aw8693x_stop+0x84>
		0000000000004b18:  R_AARCH64_CALL26	i2c_w_bits
    4b1c: 910003e2     	mov	x2, sp
    4b20: aa1303e0     	mov	x0, x19
    4b24: 52800121     	mov	w1, #0x9                // =9
    4b28: 52800023     	mov	w3, #0x1                // =1
    4b2c: 94000000     	bl	0x4b2c <aw8693x_stop+0x98>
		0000000000004b2c:  R_AARCH64_CALL26	i2c_w_bytes
    4b30: aa1303e0     	mov	x0, x19
    4b34: 528008a1     	mov	w1, #0x45               // =69
    4b38: 12800082     	mov	w2, #-0x5               // =-5
    4b3c: 2a1f03e3     	mov	w3, wzr
    4b40: 94000000     	bl	0x4b40 <aw8693x_stop+0xac>
		0000000000004b40:  R_AARCH64_CALL26	i2c_w_bits
    4b44: 12800c74     	mov	w20, #-0x64             // =-100
    4b48: 910013e2     	add	x2, sp, #0x4
    4b4c: aa1303e0     	mov	x0, x19
    4b50: 528007e1     	mov	w1, #0x3f               // =63
    4b54: 52800023     	mov	w3, #0x1                // =1
    4b58: 390013ff     	strb	wzr, [sp, #0x4]
    4b5c: 94000000     	bl	0x4b5c <aw8693x_stop+0xc8>
		0000000000004b5c:  R_AARCH64_CALL26	i2c_r_bytes
    4b60: 394013e8     	ldrb	w8, [sp, #0x4]
    4b64: 34000548     	cbz	w8, 0x4c0c <aw8693x_stop+0x178>
    4b68: 5280fa00     	mov	w0, #0x7d0              // =2000
    4b6c: 52813881     	mov	w1, #0x9c4              // =2500
    4b70: 52800042     	mov	w2, #0x2                // =2
    4b74: 94000000     	bl	0x4b74 <aw8693x_stop+0xe0>
		0000000000004b74:  R_AARCH64_CALL26	usleep_range_state
    4b78: 31000694     	adds	w20, w20, #0x1
    4b7c: 54fffe63     	b.lo	0x4b48 <aw8693x_stop+0xb4>
    4b80: 90000014     	adrp	x20, 0x4000 <awrw_store+0x210>
		0000000000004b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4b84: 91000294     	add	x20, x20, #0x0
		0000000000004b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4b88: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9
    4b8c: 91000000     	add	x0, x0, #0x0
		0000000000004b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9
    4b90: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59b
    4b94: 91000063     	add	x3, x3, #0x0
		0000000000004b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59b
    4b98: aa1403e1     	mov	x1, x20
    4b9c: 52803de2     	mov	w2, #0x1ef              // =495
    4ba0: 94000000     	bl	0x4ba0 <aw8693x_stop+0x10c>
		0000000000004ba0:  R_AARCH64_CALL26	_printk
    4ba4: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8de
    4ba8: 91000000     	add	x0, x0, #0x0
		0000000000004ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8de
    4bac: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197
    4bb0: 91000063     	add	x3, x3, #0x0
		0000000000004bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197
    4bb4: aa1403e1     	mov	x1, x20
    4bb8: 52805682     	mov	w2, #0x2b4              // =692
    4bbc: 94000000     	bl	0x4bbc <aw8693x_stop+0x128>
		0000000000004bbc:  R_AARCH64_CALL26	_printk
    4bc0: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf7
    4bc4: 91000000     	add	x0, x0, #0x0
		0000000000004bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf7
    4bc8: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cd
    4bcc: 91000063     	add	x3, x3, #0x0
		0000000000004bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cd
    4bd0: aa1403e1     	mov	x1, x20
    4bd4: 528047c2     	mov	w2, #0x23e              // =574
    4bd8: 94000000     	bl	0x4bd8 <aw8693x_stop+0x144>
		0000000000004bd8:  R_AARCH64_CALL26	_printk
    4bdc: aa1303e0     	mov	x0, x19
    4be0: 528008a1     	mov	w1, #0x45               // =69
    4be4: 12800402     	mov	w2, #-0x21              // =-33
    4be8: 52800403     	mov	w3, #0x20               // =32
    4bec: 39005e7f     	strb	wzr, [x19, #0x17]
    4bf0: 94000000     	bl	0x4bf0 <aw8693x_stop+0x15c>
		0000000000004bf0:  R_AARCH64_CALL26	i2c_w_bits
    4bf4: aa1303e0     	mov	x0, x19
    4bf8: 528008a1     	mov	w1, #0x45               // =69
    4bfc: 12800402     	mov	w2, #-0x21              // =-33
    4c00: 2a1f03e3     	mov	w3, wzr
    4c04: 94000000     	bl	0x4c04 <aw8693x_stop+0x170>
		0000000000004c04:  R_AARCH64_CALL26	i2c_w_bits
    4c08: 14000009     	b	0x4c2c <aw8693x_stop+0x198>
    4c0c: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf6
    4c10: 91000000     	add	x0, x0, #0x0
		0000000000004c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf6
    4c14: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4c18: 91000021     	add	x1, x1, #0x0
		0000000000004c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4c1c: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59b
    4c20: 91000063     	add	x3, x3, #0x0
		0000000000004c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59b
    4c24: 52803d42     	mov	w2, #0x1ea              // =490
    4c28: 94000000     	bl	0x4c28 <aw8693x_stop+0x194>
		0000000000004c28:  R_AARCH64_CALL26	_printk
    4c2c: d5384108     	mrs	x8, SP_EL0
    4c30: f9438908     	ldr	x8, [x8, #0x710]
    4c34: f94007e9     	ldr	x9, [sp, #0x8]
    4c38: eb09011f     	cmp	x8, x9
    4c3c: 540000c1     	b.ne	0x4c54 <aw8693x_stop+0x1c0>
    4c40: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4c44: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4c48: 9100c3ff     	add	sp, sp, #0x30
    4c4c: d50323bf     	autiasp
    4c50: d65f03c0     	ret
    4c54: 94000000     	bl	0x4c54 <aw8693x_stop+0x1c0>
		0000000000004c54:  R_AARCH64_CALL26	__stack_chk_fail
