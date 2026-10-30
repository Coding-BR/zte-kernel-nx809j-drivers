
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f2c <aw8693x_stop>:
     f2c: d503233f     	paciasp
     f30: d100c3ff     	sub	sp, sp, #0x30
     f34: a9017bfd     	stp	x29, x30, [sp, #0x10]
     f38: a9024ff4     	stp	x20, x19, [sp, #0x20]
     f3c: 910043fd     	add	x29, sp, #0x10
     f40: d5384108     	mrs	x8, SP_EL0
     f44: aa0003f3     	mov	x19, x0
     f48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
     f4c: 91000000     	add	x0, x0, #0x0
		0000000000000f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
     f50: f9438908     	ldr	x8, [x8, #0x710]
     f54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     f58: 91000021     	add	x1, x1, #0x0
		0000000000000f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     f5c: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25e
     f60: 91000063     	add	x3, x3, #0x0
		0000000000000f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25e
     f64: 52805522     	mov	w2, #0x2a9              // =681
     f68: f90007e8     	str	x8, [sp, #0x8]
     f6c: 94000000     	bl	0xf6c <aw8693x_stop+0x40>
		0000000000000f6c:  R_AARCH64_CALL26	_printk
     f70: 52800028     	mov	w8, #0x1                // =1
     f74: aa1303e0     	mov	x0, x19
     f78: 528008a1     	mov	w1, #0x45               // =69
     f7c: 12800082     	mov	w2, #-0x5               // =-5
     f80: 52800083     	mov	w3, #0x4                // =4
     f84: 39005e7f     	strb	wzr, [x19, #0x17]
     f88: 390003e8     	strb	w8, [sp]
     f8c: 94000000     	bl	0xf8c <aw8693x_stop+0x60>
		0000000000000f8c:  R_AARCH64_CALL26	i2c_w_bits
     f90: 52803e80     	mov	w0, #0x1f4              // =500
     f94: 52804b01     	mov	w1, #0x258              // =600
     f98: 52800042     	mov	w2, #0x2                // =2
     f9c: 94000000     	bl	0xf9c <aw8693x_stop+0x70>
		0000000000000f9c:  R_AARCH64_CALL26	usleep_range_state
     fa0: aa1303e0     	mov	x0, x19
     fa4: 52800101     	mov	w1, #0x8                // =8
     fa8: 12800062     	mov	w2, #-0x4               // =-4
     fac: 52800063     	mov	w3, #0x3                // =3
     fb0: 94000000     	bl	0xfb0 <aw8693x_stop+0x84>
		0000000000000fb0:  R_AARCH64_CALL26	i2c_w_bits
     fb4: 910003e2     	mov	x2, sp
     fb8: aa1303e0     	mov	x0, x19
     fbc: 52800121     	mov	w1, #0x9                // =9
     fc0: 52800023     	mov	w3, #0x1                // =1
     fc4: 94000000     	bl	0xfc4 <aw8693x_stop+0x98>
		0000000000000fc4:  R_AARCH64_CALL26	i2c_w_bytes
     fc8: aa1303e0     	mov	x0, x19
     fcc: 528008a1     	mov	w1, #0x45               // =69
     fd0: 12800082     	mov	w2, #-0x5               // =-5
     fd4: 2a1f03e3     	mov	w3, wzr
     fd8: 94000000     	bl	0xfd8 <aw8693x_stop+0xac>
		0000000000000fd8:  R_AARCH64_CALL26	i2c_w_bits
     fdc: 12800c74     	mov	w20, #-0x64             // =-100
     fe0: 910013e2     	add	x2, sp, #0x4
     fe4: aa1303e0     	mov	x0, x19
     fe8: 528007e1     	mov	w1, #0x3f               // =63
     fec: 52800023     	mov	w3, #0x1                // =1
     ff0: 390013ff     	strb	wzr, [sp, #0x4]
     ff4: 94000000     	bl	0xff4 <aw8693x_stop+0xc8>
		0000000000000ff4:  R_AARCH64_CALL26	i2c_r_bytes
     ff8: 394013e8     	ldrb	w8, [sp, #0x4]
     ffc: 34000548     	cbz	w8, 0x10a4 <aw8693x_stop+0x178>
    1000: 5280fa00     	mov	w0, #0x7d0              // =2000
    1004: 52813881     	mov	w1, #0x9c4              // =2500
    1008: 52800042     	mov	w2, #0x2                // =2
    100c: 94000000     	bl	0x100c <aw8693x_stop+0xe0>
		000000000000100c:  R_AARCH64_CALL26	usleep_range_state
    1010: 31000694     	adds	w20, w20, #0x1
    1014: 54fffe63     	b.lo	0xfe0 <aw8693x_stop+0xb4>
    1018: 90000014     	adrp	x20, 0x1000 <aw8693x_stop+0xd4>
		0000000000001018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    101c: 91000294     	add	x20, x20, #0x0
		000000000000101c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1020: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa
    1024: 91000000     	add	x0, x0, #0x0
		0000000000001024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa
    1028: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c4
    102c: 91000063     	add	x3, x3, #0x0
		000000000000102c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c4
    1030: aa1403e1     	mov	x1, x20
    1034: 52803de2     	mov	w2, #0x1ef              // =495
    1038: 94000000     	bl	0x1038 <aw8693x_stop+0x10c>
		0000000000001038:  R_AARCH64_CALL26	_printk
    103c: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		000000000000103c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb8
    1040: 91000000     	add	x0, x0, #0x0
		0000000000001040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb8
    1044: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25e
    1048: 91000063     	add	x3, x3, #0x0
		0000000000001048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25e
    104c: aa1403e1     	mov	x1, x20
    1050: 52805682     	mov	w2, #0x2b4              // =692
    1054: 94000000     	bl	0x1054 <aw8693x_stop+0x128>
		0000000000001054:  R_AARCH64_CALL26	_printk
    1058: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c
    105c: 91000000     	add	x0, x0, #0x0
		000000000000105c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c
    1060: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    1064: 91000063     	add	x3, x3, #0x0
		0000000000001064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    1068: aa1403e1     	mov	x1, x20
    106c: 528047c2     	mov	w2, #0x23e              // =574
    1070: 94000000     	bl	0x1070 <aw8693x_stop+0x144>
		0000000000001070:  R_AARCH64_CALL26	_printk
    1074: aa1303e0     	mov	x0, x19
    1078: 528008a1     	mov	w1, #0x45               // =69
    107c: 12800402     	mov	w2, #-0x21              // =-33
    1080: 52800403     	mov	w3, #0x20               // =32
    1084: 39005e7f     	strb	wzr, [x19, #0x17]
    1088: 94000000     	bl	0x1088 <aw8693x_stop+0x15c>
		0000000000001088:  R_AARCH64_CALL26	i2c_w_bits
    108c: aa1303e0     	mov	x0, x19
    1090: 528008a1     	mov	w1, #0x45               // =69
    1094: 12800402     	mov	w2, #-0x21              // =-33
    1098: 2a1f03e3     	mov	w3, wzr
    109c: 94000000     	bl	0x109c <aw8693x_stop+0x170>
		000000000000109c:  R_AARCH64_CALL26	i2c_w_bits
    10a0: 14000009     	b	0x10c4 <aw8693x_stop+0x198>
    10a4: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		00000000000010a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27ca
    10a8: 91000000     	add	x0, x0, #0x0
		00000000000010a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27ca
    10ac: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		00000000000010ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    10b0: 91000021     	add	x1, x1, #0x0
		00000000000010b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    10b4: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		00000000000010b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c4
    10b8: 91000063     	add	x3, x3, #0x0
		00000000000010b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c4
    10bc: 52803d42     	mov	w2, #0x1ea              // =490
    10c0: 94000000     	bl	0x10c0 <aw8693x_stop+0x194>
		00000000000010c0:  R_AARCH64_CALL26	_printk
    10c4: d5384108     	mrs	x8, SP_EL0
    10c8: f9438908     	ldr	x8, [x8, #0x710]
    10cc: f94007e9     	ldr	x9, [sp, #0x8]
    10d0: eb09011f     	cmp	x8, x9
    10d4: 540000c1     	b.ne	0x10ec <aw8693x_stop+0x1c0>
    10d8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    10dc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    10e0: 9100c3ff     	add	sp, sp, #0x30
    10e4: d50323bf     	autiasp
    10e8: d65f03c0     	ret
    10ec: 94000000     	bl	0x10ec <aw8693x_stop+0x1c0>
		00000000000010ec:  R_AARCH64_CALL26	__stack_chk_fail
