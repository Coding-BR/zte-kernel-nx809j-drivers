
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a14c <aw9620x_chip_info_get>:
    a14c: d503233f     	paciasp
    a150: d10143ff     	sub	sp, sp, #0x50
    a154: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a158: f90013f7     	str	x23, [sp, #0x20]
    a15c: a90357f6     	stp	x22, x21, [sp, #0x30]
    a160: a9044ff4     	stp	x20, x19, [sp, #0x40]
    a164: 910043fd     	add	x29, sp, #0x10
    a168: d5384108     	mrs	x8, SP_EL0
    a16c: aa0203f3     	mov	x19, x2
    a170: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x99c
    a174: 91000042     	add	x2, x2, #0x0
		000000000000a174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x99c
    a178: f9438908     	ldr	x8, [x8, #0x710]
    a17c: 90000004     	adrp	x4, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a17c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ec4
    a180: 91000084     	add	x4, x4, #0x0
		000000000000a180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ec4
    a184: 52820001     	mov	w1, #0x1000             // =4096
    a188: 52820016     	mov	w22, #0x1000            // =4096
    a18c: f90007e8     	str	x8, [sp, #0x8]
    a190: f9404c15     	ldr	x21, [x0, #0x98]
    a194: aa1303e0     	mov	x0, x19
    a198: b90007ff     	str	wzr, [sp, #0x4]
    a19c: b85d02a3     	ldur	w3, [x21, #-0x30]
    a1a0: d100e2b4     	sub	x20, x21, #0x38
    a1a4: 94000000     	bl	0xa1a4 <aw9620x_chip_info_get+0x58>
		000000000000a1a4:  R_AARCH64_CALL26	snprintf
    a1a8: 93407c17     	sxtw	x23, w0
    a1ac: 910013e2     	add	x2, sp, #0x4
    a1b0: 529fe001     	mov	w1, #0xff00             // =65280
    a1b4: aa1403e0     	mov	x0, x20
    a1b8: 97ffe652     	bl	0x3b00 <aw9620x_i2c_read>
    a1bc: b94007e3     	ldr	w3, [sp, #0x4]
    a1c0: cb1702c1     	sub	x1, x22, x23
    a1c4: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a1c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x266d
    a1c8: 91000042     	add	x2, x2, #0x0
		000000000000a1c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x266d
    a1cc: 8b170260     	add	x0, x19, x23
    a1d0: 94000000     	bl	0xa1d0 <aw9620x_chip_info_get+0x84>
		000000000000a1d0:  R_AARCH64_CALL26	snprintf
    a1d4: 8b20c2f7     	add	x23, x23, w0, sxtw
    a1d8: 910942a2     	add	x2, x21, #0x250
    a1dc: aa1403e0     	mov	x0, x20
    a1e0: 52834201     	mov	w1, #0x1a10             // =6672
    a1e4: 97ffe647     	bl	0x3b00 <aw9620x_i2c_read>
    a1e8: b94252a3     	ldr	w3, [x21, #0x250]
    a1ec: cb1702c1     	sub	x1, x22, x23
    a1f0: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a1f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x212a
    a1f4: 91000042     	add	x2, x2, #0x0
		000000000000a1f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x212a
    a1f8: 8b170260     	add	x0, x19, x23
    a1fc: 94000000     	bl	0xa1fc <aw9620x_chip_info_get+0xb0>
		000000000000a1fc:  R_AARCH64_CALL26	snprintf
    a200: 8b20c2f7     	add	x23, x23, w0, sxtw
    a204: b9424ea3     	ldr	w3, [x21, #0x24c]
    a208: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3696
    a20c: 91000042     	add	x2, x2, #0x0
		000000000000a20c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3696
    a210: cb1702c1     	sub	x1, x22, x23
    a214: 8b170260     	add	x0, x19, x23
    a218: 94000000     	bl	0xa218 <aw9620x_chip_info_get+0xcc>
		000000000000a218:  R_AARCH64_CALL26	snprintf
    a21c: 8b20c2f7     	add	x23, x23, w0, sxtw
    a220: 910013e2     	add	x2, sp, #0x4
    a224: aa1403e0     	mov	x0, x20
    a228: 52888281     	mov	w1, #0x4414             // =17428
    a22c: 97ffe635     	bl	0x3b00 <aw9620x_i2c_read>
    a230: b94007e3     	ldr	w3, [sp, #0x4]
    a234: cb1702c1     	sub	x1, x22, x23
    a238: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x442
    a23c: 91000042     	add	x2, x2, #0x0
		000000000000a23c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x442
    a240: 8b170260     	add	x0, x19, x23
    a244: 94000000     	bl	0xa244 <aw9620x_chip_info_get+0xf8>
		000000000000a244:  R_AARCH64_CALL26	snprintf
    a248: 385cc2a8     	ldurb	w8, [x21, #-0x34]
    a24c: 8b20c2f4     	add	x20, x23, w0, sxtw
    a250: 7100051f     	cmp	w8, #0x1
    a254: 54000101     	b.ne	0xa274 <aw9620x_chip_info_get+0x128>
    a258: 52820008     	mov	w8, #0x1000             // =4096
    a25c: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a25c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b63
    a260: 91000042     	add	x2, x2, #0x0
		000000000000a260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b63
    a264: cb140101     	sub	x1, x8, x20
    a268: 8b140260     	add	x0, x19, x20
    a26c: 94000000     	bl	0xa26c <aw9620x_chip_info_get+0x120>
		000000000000a26c:  R_AARCH64_CALL26	snprintf
    a270: 8b20c294     	add	x20, x20, w0, sxtw
    a274: 394922a8     	ldrb	w8, [x21, #0x248]
    a278: 7100051f     	cmp	w8, #0x1
    a27c: 54000241     	b.ne	0xa2c4 <aw9620x_chip_info_get+0x178>
    a280: 52820016     	mov	w22, #0x1000            // =4096
    a284: b9425aa3     	ldr	w3, [x21, #0x258]
    a288: b9425ea4     	ldr	w4, [x21, #0x25c]
    a28c: b94262a5     	ldr	w5, [x21, #0x260]
    a290: cb1402c1     	sub	x1, x22, x20
    a294: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcbb
    a298: 91000042     	add	x2, x2, #0x0
		000000000000a298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcbb
    a29c: 8b140260     	add	x0, x19, x20
    a2a0: 94000000     	bl	0xa2a0 <aw9620x_chip_info_get+0x154>
		000000000000a2a0:  R_AARCH64_CALL26	snprintf
    a2a4: 8b20c294     	add	x20, x20, w0, sxtw
    a2a8: b94256a3     	ldr	w3, [x21, #0x254]
    a2ac: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a2ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2147
    a2b0: 91000042     	add	x2, x2, #0x0
		000000000000a2b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2147
    a2b4: cb1402c1     	sub	x1, x22, x20
    a2b8: 8b140260     	add	x0, x19, x20
    a2bc: 94000000     	bl	0xa2bc <aw9620x_chip_info_get+0x170>
		000000000000a2bc:  R_AARCH64_CALL26	snprintf
    a2c0: 8b20c294     	add	x20, x20, w0, sxtw
    a2c4: b94266a3     	ldr	w3, [x21, #0x264]
    a2c8: 34000103     	cbz	w3, 0xa2e8 <aw9620x_chip_info_get+0x19c>
    a2cc: 52820008     	mov	w8, #0x1000             // =4096
    a2d0: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a2d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba0
    a2d4: 91000042     	add	x2, x2, #0x0
		000000000000a2d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba0
    a2d8: cb140101     	sub	x1, x8, x20
    a2dc: 8b140260     	add	x0, x19, x20
    a2e0: 94000000     	bl	0xa2e0 <aw9620x_chip_info_get+0x194>
		000000000000a2e0:  R_AARCH64_CALL26	snprintf
    a2e4: 8b20c294     	add	x20, x20, w0, sxtw
    a2e8: d5384108     	mrs	x8, SP_EL0
    a2ec: f9438908     	ldr	x8, [x8, #0x710]
    a2f0: f94007e9     	ldr	x9, [sp, #0x8]
    a2f4: eb09011f     	cmp	x8, x9
    a2f8: 54000121     	b.ne	0xa31c <aw9620x_chip_info_get+0x1d0>
    a2fc: aa1403e0     	mov	x0, x20
    a300: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    a304: f94013f7     	ldr	x23, [sp, #0x20]
    a308: a94357f6     	ldp	x22, x21, [sp, #0x30]
    a30c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a310: 910143ff     	add	sp, sp, #0x50
    a314: d50323bf     	autiasp
    a318: d65f03c0     	ret
    a31c: 94000000     	bl	0xa31c <aw9620x_chip_info_get+0x1d0>
		000000000000a31c:  R_AARCH64_CALL26	__stack_chk_fail
