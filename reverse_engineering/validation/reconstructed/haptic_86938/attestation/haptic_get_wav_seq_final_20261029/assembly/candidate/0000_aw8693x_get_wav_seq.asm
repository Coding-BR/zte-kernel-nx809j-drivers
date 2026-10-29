
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003498 <aw8693x_get_wav_seq>:
    3498: d503233f     	paciasp
    349c: d10103ff     	sub	sp, sp, #0x40
    34a0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    34a4: f90013f5     	str	x21, [sp, #0x20]
    34a8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    34ac: 910043fd     	add	x29, sp, #0x10
    34b0: d5384108     	mrs	x8, SP_EL0
    34b4: 52800109     	mov	w9, #0x8                // =8
    34b8: 2a0103f5     	mov	w21, w1
    34bc: 7100203f     	cmp	w1, #0x8
    34c0: f9438908     	ldr	x8, [x8, #0x710]
    34c4: 910003e2     	mov	x2, sp
    34c8: 1a893034     	csel	w20, w1, w9, lo
    34cc: 52800141     	mov	w1, #0xa                // =10
    34d0: aa0003f3     	mov	x19, x0
    34d4: 2a1403e3     	mov	w3, w20
    34d8: f90007e8     	str	x8, [sp, #0x8]
    34dc: f90003ff     	str	xzr, [sp]
    34e0: 94000000     	bl	0x34e0 <aw8693x_get_wav_seq+0x48>
		00000000000034e0:  R_AARCH64_CALL26	i2c_r_bytes
    34e4: 340000b5     	cbz	w21, 0x34f8 <aw8693x_get_wav_seq+0x60>
    34e8: 91007a60     	add	x0, x19, #0x1e
    34ec: 910003e1     	mov	x1, sp
    34f0: aa1403e2     	mov	x2, x20
    34f4: 94000000     	bl	0x34f4 <aw8693x_get_wav_seq+0x5c>
		00000000000034f4:  R_AARCH64_CALL26	memcpy
    34f8: d5384108     	mrs	x8, SP_EL0
    34fc: f9438908     	ldr	x8, [x8, #0x710]
    3500: f94007e9     	ldr	x9, [sp, #0x8]
    3504: eb09011f     	cmp	x8, x9
    3508: 540000e1     	b.ne	0x3524 <aw8693x_get_wav_seq+0x8c>
    350c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3510: f94013f5     	ldr	x21, [sp, #0x20]
    3514: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3518: 910103ff     	add	sp, sp, #0x40
    351c: d50323bf     	autiasp
    3520: d65f03c0     	ret
    3524: 94000000     	bl	0x3524 <aw8693x_get_wav_seq+0x8c>
		0000000000003524:  R_AARCH64_CALL26	__stack_chk_fail
