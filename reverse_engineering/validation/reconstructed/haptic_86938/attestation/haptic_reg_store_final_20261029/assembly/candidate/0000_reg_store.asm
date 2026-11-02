
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003358 <reg_store>:
    3358: d503233f     	paciasp
    335c: d10103ff     	sub	sp, sp, #0x40
    3360: a9027bfd     	stp	x29, x30, [sp, #0x20]
    3364: a9034ff4     	stp	x20, x19, [sp, #0x30]
    3368: 910083fd     	add	x29, sp, #0x20
    336c: d5384109     	mrs	x9, SP_EL0
    3370: aa0203e8     	mov	x8, x2
    3374: aa0303f3     	mov	x19, x3
    3378: f9438929     	ldr	x9, [x9, #0x710]
    337c: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		000000000000337c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x450
    3380: 91000021     	add	x1, x1, #0x0
		0000000000003380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x450
    3384: 910043e2     	add	x2, sp, #0x10
    3388: f81f83a9     	stur	x9, [x29, #-0x8]
    338c: 910043e9     	add	x9, sp, #0x10
    3390: f9404c14     	ldr	x20, [x0, #0x98]
    3394: b27e0123     	orr	x3, x9, #0x4
    3398: aa0803e0     	mov	x0, x8
    339c: f9000bff     	str	xzr, [sp, #0x10]
    33a0: 94000000     	bl	0x33a0 <reg_store+0x48>
		00000000000033a0:  R_AARCH64_CALL26	sscanf
    33a4: 7100081f     	cmp	w0, #0x2
    33a8: 540000e1     	b.ne	0x33c4 <reg_store+0x6c>
    33ac: 294223e1     	ldp	w1, w8, [sp, #0x10]
    33b0: d102a280     	sub	x0, x20, #0xa8
    33b4: 910033e2     	add	x2, sp, #0xc
    33b8: 52800023     	mov	w3, #0x1                // =1
    33bc: 390033e8     	strb	w8, [sp, #0xc]
    33c0: 94000000     	bl	0x33c0 <reg_store+0x68>
		00000000000033c0:  R_AARCH64_CALL26	i2c_w_bytes
    33c4: d5384108     	mrs	x8, SP_EL0
    33c8: f9438908     	ldr	x8, [x8, #0x710]
    33cc: f85f83a9     	ldur	x9, [x29, #-0x8]
    33d0: eb09011f     	cmp	x8, x9
    33d4: 540000e1     	b.ne	0x33f0 <reg_store+0x98>
    33d8: aa1303e0     	mov	x0, x19
    33dc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    33e0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    33e4: 910103ff     	add	sp, sp, #0x40
    33e8: d50323bf     	autiasp
    33ec: d65f03c0     	ret
    33f0: 94000000     	bl	0x33f0 <reg_store+0x98>
		00000000000033f0:  R_AARCH64_CALL26	__stack_chk_fail
