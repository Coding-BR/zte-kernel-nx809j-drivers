
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003578 <aw8693x_rtp_get_fifo_afi>:
    3578: d503233f     	paciasp
    357c: d100c3ff     	sub	sp, sp, #0x30
    3580: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3584: f90013f3     	str	x19, [sp, #0x20]
    3588: 910043fd     	add	x29, sp, #0x10
    358c: d5384108     	mrs	x8, SP_EL0
    3590: aa0003f3     	mov	x19, x0
    3594: f9438908     	ldr	x8, [x8, #0x710]
    3598: f90007e8     	str	x8, [sp, #0x8]
    359c: 39404408     	ldrb	w8, [x0, #0x11]
    35a0: 390013ff     	strb	wzr, [sp, #0x4]
    35a4: 7100051f     	cmp	w8, #0x1
    35a8: 54000081     	b.ne	0x35b8 <aw8693x_rtp_get_fifo_afi+0x40>
    35ac: f9419668     	ldr	x8, [x19, #0x328]
    35b0: 52800b69     	mov	w9, #0x5b               // =91
    35b4: 79000509     	strh	w9, [x8, #0x2]
    35b8: 910013e2     	add	x2, sp, #0x4
    35bc: aa1303e0     	mov	x0, x19
    35c0: 52800041     	mov	w1, #0x2                // =2
    35c4: 52800023     	mov	w3, #0x1                // =1
    35c8: 94000000     	bl	0x35c8 <aw8693x_rtp_get_fifo_afi+0x50>
		00000000000035c8:  R_AARCH64_CALL26	i2c_r_bytes
    35cc: 39404668     	ldrb	w8, [x19, #0x11]
    35d0: 7100051f     	cmp	w8, #0x1
    35d4: 54000061     	b.ne	0x35e0 <aw8693x_rtp_get_fifo_afi+0x68>
    35d8: f9419668     	ldr	x8, [x19, #0x328]
    35dc: 7900051f     	strh	wzr, [x8, #0x2]
    35e0: d5384109     	mrs	x9, SP_EL0
    35e4: f9438929     	ldr	x9, [x9, #0x710]
    35e8: 394013e8     	ldrb	w8, [sp, #0x4]
    35ec: f94007ea     	ldr	x10, [sp, #0x8]
    35f0: eb0a013f     	cmp	x9, x10
    35f4: 540000e1     	b.ne	0x3610 <aw8693x_rtp_get_fifo_afi+0x98>
    35f8: 53030d00     	ubfx	w0, w8, #3, #1
    35fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3600: f94013f3     	ldr	x19, [sp, #0x20]
    3604: 9100c3ff     	add	sp, sp, #0x30
    3608: d50323bf     	autiasp
    360c: d65f03c0     	ret
    3610: 94000000     	bl	0x3610 <aw8693x_rtp_get_fifo_afi+0x98>
		0000000000003610:  R_AARCH64_CALL26	__stack_chk_fail
