
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004814 <aw8693x_get_reg>:
    4814: d503233f     	paciasp
    4818: d10343ff     	sub	sp, sp, #0xd0
    481c: a9097bfd     	stp	x29, x30, [sp, #0x90]
    4820: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
    4824: a90b57f6     	stp	x22, x21, [sp, #0xb0]
    4828: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
    482c: 910243fd     	add	x29, sp, #0x90
    4830: d5384108     	mrs	x8, SP_EL0
    4834: aa0203f4     	mov	x20, x2
    4838: aa0103f3     	mov	x19, x1
    483c: f9438908     	ldr	x8, [x8, #0x710]
    4840: 910003e2     	mov	x2, sp
    4844: 2a1f03e1     	mov	w1, wzr
    4848: 52800643     	mov	w3, #0x32               // =50
    484c: aa0003f5     	mov	x21, x0
    4850: 910003f7     	mov	x23, sp
    4854: f81f83a8     	stur	x8, [x29, #-0x8]
    4858: b807f3ff     	stur	wzr, [sp, #0x7f]
    485c: a9077fff     	stp	xzr, xzr, [sp, #0x70]
    4860: a9067fff     	stp	xzr, xzr, [sp, #0x60]
    4864: a9057fff     	stp	xzr, xzr, [sp, #0x50]
    4868: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    486c: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    4870: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    4874: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    4878: a9007fff     	stp	xzr, xzr, [sp]
    487c: 94000000     	bl	0x487c <aw8693x_get_reg+0x68>
		000000000000487c:  R_AARCH64_CALL26	i2c_r_bytes
    4880: 9100cee2     	add	x2, x23, #0x33
    4884: aa1503e0     	mov	x0, x21
    4888: 52800661     	mov	w1, #0x33               // =51
    488c: 528001e3     	mov	w3, #0xf                // =15
    4890: 94000000     	bl	0x4890 <aw8693x_get_reg+0x7c>
		0000000000004890:  R_AARCH64_CALL26	i2c_r_bytes
    4894: 91010ee2     	add	x2, x23, #0x43
    4898: aa1503e0     	mov	x0, x21
    489c: 52800861     	mov	w1, #0x43               // =67
    48a0: 52800803     	mov	w3, #0x40               // =64
    48a4: 94000000     	bl	0x48a4 <aw8693x_get_reg+0x90>
		00000000000048a4:  R_AARCH64_CALL26	i2c_r_bytes
    48a8: aa1f03f5     	mov	x21, xzr
    48ac: 52820018     	mov	w24, #0x1000            // =4096
    48b0: 90000016     	adrp	x22, 0x4000 <awrw_store+0x1fc>
		00000000000048b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f7
    48b4: 910002d6     	add	x22, x22, #0x0
		00000000000048b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f7
    48b8: 14000004     	b	0x48c8 <aw8693x_get_reg+0xb4>
    48bc: 910006b5     	add	x21, x21, #0x1
    48c0: f1020ebf     	cmp	x21, #0x83
    48c4: 540001c0     	b.eq	0x48fc <aw8693x_get_reg+0xe8>
    48c8: 12001ea8     	and	w8, w21, #0xff
    48cc: 7100c91f     	cmp	w8, #0x32
    48d0: 54ffff60     	b.eq	0x48bc <aw8693x_get_reg+0xa8>
    48d4: 7101091f     	cmp	w8, #0x42
    48d8: 54ffff20     	b.eq	0x48bc <aw8693x_get_reg+0xa8>
    48dc: 38756ae4     	ldrb	w4, [x23, x21]
    48e0: cb130301     	sub	x1, x24, x19
    48e4: 8b130280     	add	x0, x20, x19
    48e8: aa1603e2     	mov	x2, x22
    48ec: 2a1503e3     	mov	w3, w21
    48f0: 94000000     	bl	0x48f0 <aw8693x_get_reg+0xdc>
		00000000000048f0:  R_AARCH64_CALL26	snprintf
    48f4: 8b20c273     	add	x19, x19, w0, sxtw
    48f8: 17fffff1     	b	0x48bc <aw8693x_get_reg+0xa8>
    48fc: d5384108     	mrs	x8, SP_EL0
    4900: f9438908     	ldr	x8, [x8, #0x710]
    4904: f85f83a9     	ldur	x9, [x29, #-0x8]
    4908: eb09011f     	cmp	x8, x9
    490c: 54000121     	b.ne	0x4930 <aw8693x_get_reg+0x11c>
    4910: aa1303e0     	mov	x0, x19
    4914: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
    4918: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
    491c: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
    4920: a9497bfd     	ldp	x29, x30, [sp, #0x90]
    4924: 910343ff     	add	sp, sp, #0xd0
    4928: d50323bf     	autiasp
    492c: d65f03c0     	ret
    4930: 94000000     	bl	0x4930 <aw8693x_get_reg+0x11c>
		0000000000004930:  R_AARCH64_CALL26	__stack_chk_fail
