
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000047e4 <aw8693x_get_reg>:
    47e4: d503233f     	paciasp
    47e8: d10343ff     	sub	sp, sp, #0xd0
    47ec: a9097bfd     	stp	x29, x30, [sp, #0x90]
    47f0: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
    47f4: a90b57f6     	stp	x22, x21, [sp, #0xb0]
    47f8: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
    47fc: 910243fd     	add	x29, sp, #0x90
    4800: d5384108     	mrs	x8, SP_EL0
    4804: aa0203f4     	mov	x20, x2
    4808: aa0103f3     	mov	x19, x1
    480c: f9438908     	ldr	x8, [x8, #0x710]
    4810: 910003e2     	mov	x2, sp
    4814: 2a1f03e1     	mov	w1, wzr
    4818: 52800643     	mov	w3, #0x32               // =50
    481c: aa0003f5     	mov	x21, x0
    4820: 910003f7     	mov	x23, sp
    4824: f81f83a8     	stur	x8, [x29, #-0x8]
    4828: b807f3ff     	stur	wzr, [sp, #0x7f]
    482c: a9077fff     	stp	xzr, xzr, [sp, #0x70]
    4830: a9067fff     	stp	xzr, xzr, [sp, #0x60]
    4834: a9057fff     	stp	xzr, xzr, [sp, #0x50]
    4838: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    483c: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    4840: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    4844: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    4848: a9007fff     	stp	xzr, xzr, [sp]
    484c: 94000000     	bl	0x484c <aw8693x_get_reg+0x68>
		000000000000484c:  R_AARCH64_CALL26	i2c_r_bytes
    4850: 9100cee2     	add	x2, x23, #0x33
    4854: aa1503e0     	mov	x0, x21
    4858: 52800661     	mov	w1, #0x33               // =51
    485c: 528001e3     	mov	w3, #0xf                // =15
    4860: 94000000     	bl	0x4860 <aw8693x_get_reg+0x7c>
		0000000000004860:  R_AARCH64_CALL26	i2c_r_bytes
    4864: 91010ee2     	add	x2, x23, #0x43
    4868: aa1503e0     	mov	x0, x21
    486c: 52800861     	mov	w1, #0x43               // =67
    4870: 52800803     	mov	w3, #0x40               // =64
    4874: 94000000     	bl	0x4874 <aw8693x_get_reg+0x90>
		0000000000004874:  R_AARCH64_CALL26	i2c_r_bytes
    4878: aa1f03f5     	mov	x21, xzr
    487c: 52820018     	mov	w24, #0x1000            // =4096
    4880: 90000016     	adrp	x22, 0x4000 <awrw_store+0x210>
		0000000000004880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27b
    4884: 910002d6     	add	x22, x22, #0x0
		0000000000004884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27b
    4888: 14000004     	b	0x4898 <aw8693x_get_reg+0xb4>
    488c: 910006b5     	add	x21, x21, #0x1
    4890: f1020ebf     	cmp	x21, #0x83
    4894: 540001c0     	b.eq	0x48cc <aw8693x_get_reg+0xe8>
    4898: 12001ea8     	and	w8, w21, #0xff
    489c: 7100c91f     	cmp	w8, #0x32
    48a0: 54ffff60     	b.eq	0x488c <aw8693x_get_reg+0xa8>
    48a4: 7101091f     	cmp	w8, #0x42
    48a8: 54ffff20     	b.eq	0x488c <aw8693x_get_reg+0xa8>
    48ac: 38756ae4     	ldrb	w4, [x23, x21]
    48b0: cb130301     	sub	x1, x24, x19
    48b4: 8b130280     	add	x0, x20, x19
    48b8: aa1603e2     	mov	x2, x22
    48bc: 2a1503e3     	mov	w3, w21
    48c0: 94000000     	bl	0x48c0 <aw8693x_get_reg+0xdc>
		00000000000048c0:  R_AARCH64_CALL26	snprintf
    48c4: 8b20c273     	add	x19, x19, w0, sxtw
    48c8: 17fffff1     	b	0x488c <aw8693x_get_reg+0xa8>
    48cc: d5384108     	mrs	x8, SP_EL0
    48d0: f9438908     	ldr	x8, [x8, #0x710]
    48d4: f85f83a9     	ldur	x9, [x29, #-0x8]
    48d8: eb09011f     	cmp	x8, x9
    48dc: 54000121     	b.ne	0x4900 <aw8693x_get_reg+0x11c>
    48e0: aa1303e0     	mov	x0, x19
    48e4: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
    48e8: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
    48ec: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
    48f0: a9497bfd     	ldp	x29, x30, [sp, #0x90]
    48f4: 910343ff     	add	sp, sp, #0xd0
    48f8: d50323bf     	autiasp
    48fc: d65f03c0     	ret
    4900: 94000000     	bl	0x4900 <aw8693x_get_reg+0x11c>
		0000000000004900:  R_AARCH64_CALL26	__stack_chk_fail
