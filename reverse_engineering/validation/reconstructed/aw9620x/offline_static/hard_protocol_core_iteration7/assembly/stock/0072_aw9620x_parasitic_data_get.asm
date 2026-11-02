
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a000 <aw9620x_parasitic_data_get>:
    a000: d503233f     	paciasp
    a004: d101c3ff     	sub	sp, sp, #0x70
    a008: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a00c: a9026ffc     	stp	x28, x27, [sp, #0x20]
    a010: a90367fa     	stp	x26, x25, [sp, #0x30]
    a014: a9045ff8     	stp	x24, x23, [sp, #0x40]
    a018: a90557f6     	stp	x22, x21, [sp, #0x50]
    a01c: a9064ff4     	stp	x20, x19, [sp, #0x60]
    a020: 910043fd     	add	x29, sp, #0x10
    a024: d5384108     	mrs	x8, SP_EL0
    a028: aa0203f4     	mov	x20, x2
    a02c: aa1f03f3     	mov	x19, xzr
    a030: f9438908     	ldr	x8, [x8, #0x710]
    a034: 2a1f03f5     	mov	w21, wzr
    a038: 52834917     	mov	w23, #0x1a48            // =6728
    a03c: 5284e216     	mov	w22, #0x2710            // =10000
    a040: 52820019     	mov	w25, #0x1000            // =4096
    a044: 9000001b     	adrp	x27, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2808
    a048: 9100037b     	add	x27, x27, #0x0
		000000000000a048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2808
    a04c: f90007e8     	str	x8, [sp, #0x8]
    a050: f9404c18     	ldr	x24, [x0, #0x98]
    a054: b90007ff     	str	wzr, [sp, #0x4]
    a058: d100e31a     	sub	x26, x24, #0x38
    a05c: 910013e2     	add	x2, sp, #0x4
    a060: aa1a03e0     	mov	x0, x26
    a064: 2a1703e1     	mov	w1, w23
    a068: 97ffe6a6     	bl	0x3b00 <aw9620x_i2c_read>
    a06c: b94007fc     	ldr	w28, [sp, #0x4]
    a070: f85f8301     	ldur	x1, [x24, #-0x8]
    a074: 90000000     	adrp	x0, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    a078: 91000000     	add	x0, x0, #0x0
		000000000000a078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    a07c: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a07c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f2b
    a080: 91000042     	add	x2, x2, #0x0
		000000000000a080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f2b
    a084: 90000003     	adrp	x3, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f3b
    a088: 91000063     	add	x3, x3, #0x0
		000000000000a088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f3b
    a08c: 5281f024     	mov	w4, #0xf81              // =3969
    a090: 2a1503e5     	mov	w5, w21
    a094: 2a1703e6     	mov	w6, w23
    a098: 2a1c03e7     	mov	w7, w28
    a09c: 94000000     	bl	0xa09c <aw9620x_parasitic_data_get+0x9c>
		000000000000a09c:  R_AARCH64_CALL26	_dev_printk
    a0a0: 53187f88     	lsr	w8, w28, #24
    a0a4: 7216039f     	tst	w28, #0x400
    a0a8: 5289ab0a     	mov	w10, #0x4d58            // =19800
    a0ac: 5284d58b     	mov	w11, #0x26ac            // =9900
    a0b0: 53105f89     	ubfx	w9, w28, #16, #8
    a0b4: 528014ac     	mov	w12, #0xa5              // =165
    a0b8: 1a8a016a     	csel	w10, w11, w10, eq
    a0bc: 5280294b     	mov	w11, #0x14a             // =330
    a0c0: cb130321     	sub	x1, x25, x19
    a0c4: 1a8b018b     	csel	w11, w12, w11, eq
    a0c8: 1b0a7d08     	mul	w8, w8, w10
    a0cc: 8b130280     	add	x0, x20, x19
    a0d0: 1b0b2128     	madd	w8, w9, w11, w8
    a0d4: 5282eb29     	mov	w9, #0x1759             // =5977
    a0d8: aa1b03e2     	mov	x2, x27
    a0dc: 72ba36e9     	movk	w9, #0xd1b7, lsl #16
    a0e0: 2a1503e3     	mov	w3, w21
    a0e4: 9ba97d09     	umull	x9, w8, w9
    a0e8: d36dfd24     	lsr	x4, x9, #45
    a0ec: 1b16a085     	msub	w5, w4, w22, w8
    a0f0: 94000000     	bl	0xa0f0 <aw9620x_parasitic_data_get+0xf0>
		000000000000a0f0:  R_AARCH64_CALL26	snprintf
    a0f4: 110006b5     	add	w21, w21, #0x1
    a0f8: 8b20c273     	add	x19, x19, w0, sxtw
    a0fc: 110152f7     	add	w23, w23, #0x54
    a100: 710022bf     	cmp	w21, #0x8
    a104: 54fffac1     	b.ne	0xa05c <aw9620x_parasitic_data_get+0x5c>
    a108: d5384108     	mrs	x8, SP_EL0
    a10c: f9438908     	ldr	x8, [x8, #0x710]
    a110: f94007e9     	ldr	x9, [sp, #0x8]
    a114: eb09011f     	cmp	x8, x9
    a118: 54000161     	b.ne	0xa144 <aw9620x_parasitic_data_get+0x144>
    a11c: aa1303e0     	mov	x0, x19
    a120: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    a124: a94557f6     	ldp	x22, x21, [sp, #0x50]
    a128: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    a12c: a94367fa     	ldp	x26, x25, [sp, #0x30]
    a130: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    a134: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a138: 9101c3ff     	add	sp, sp, #0x70
    a13c: d50323bf     	autiasp
    a140: d65f03c0     	ret
    a144: 94000000     	bl	0xa144 <aw9620x_parasitic_data_get+0x144>
		000000000000a144:  R_AARCH64_CALL26	__stack_chk_fail
