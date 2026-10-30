
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005f3c <audio_off>:
    5f3c: d503233f     	paciasp
    5f40: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    5f44: a90157f6     	stp	x22, x21, [sp, #0x10]
    5f48: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5f4c: 910003fd     	mov	x29, sp
    5f50: aa0003f3     	mov	x19, x0
    5f54: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x546
    5f58: 91000000     	add	x0, x0, #0x0
		0000000000005f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x546
    5f5c: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5f60: 91000021     	add	x1, x1, #0x0
		0000000000005f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5f64: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x282
    5f68: 91000063     	add	x3, x3, #0x0
		0000000000005f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x282
    5f6c: 5280eca2     	mov	w2, #0x765              // =1893
    5f70: 94000000     	bl	0x5f70 <audio_off+0x34>
		0000000000005f70:  R_AARCH64_CALL26	_printk
    5f74: 910bc260     	add	x0, x19, #0x2f0
    5f78: 94000000     	bl	0x5f78 <audio_off+0x3c>
		0000000000005f78:  R_AARCH64_CALL26	mutex_lock
    5f7c: f942e668     	ldr	x8, [x19, #0x5c8]
    5f80: aa1303e0     	mov	x0, x19
    5f84: 52801001     	mov	w1, #0x80               // =128
    5f88: f9404508     	ldr	x8, [x8, #0x88]
    5f8c: b85fc110     	ldur	w16, [x8, #-0x4]
    5f90: 729bedd1     	movk	w17, #0xdf6e
    5f94: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    5f98: 6b11021f     	cmp	w16, w17
    5f9c: 54000040     	b.eq	0x5fa4 <audio_off+0x68>
    5fa0: d4304500     	brk	#0x8228
    5fa4: d63f0100     	blr	x8
    5fa8: f942e668     	ldr	x8, [x19, #0x5c8]
    5fac: aa1303e0     	mov	x0, x19
    5fb0: f9401d08     	ldr	x8, [x8, #0x38]
    5fb4: b85fc110     	ldur	w16, [x8, #-0x4]
    5fb8: 72810611     	movk	w17, #0x830
    5fbc: 72b08f51     	movk	w17, #0x847a, lsl #16
    5fc0: 6b11021f     	cmp	w16, w17
    5fc4: 54000040     	b.eq	0x5fcc <audio_off+0x90>
    5fc8: d4304500     	brk	#0x8228
    5fcc: d63f0100     	blr	x8
    5fd0: f942ce69     	ldr	x9, [x19, #0x598]
    5fd4: 91164274     	add	x20, x19, #0x590
    5fd8: eb14013f     	cmp	x9, x20
    5fdc: 54000300     	b.eq	0x603c <audio_off+0x100>
    5fe0: d2802015     	mov	x21, #0x100             // =256
    5fe4: f2fbd5b5     	movk	x21, #0xdead, lsl #48
    5fe8: f9400536     	ldr	x22, [x9, #0x8]
    5fec: f94002c8     	ldr	x8, [x22]
    5ff0: eb09011f     	cmp	x8, x9
    5ff4: 540001e1     	b.ne	0x6030 <audio_off+0xf4>
    5ff8: f9400128     	ldr	x8, [x9]
    5ffc: f940050a     	ldr	x10, [x8, #0x8]
    6000: eb09015f     	cmp	x10, x9
    6004: 54000161     	b.ne	0x6030 <audio_off+0xf4>
    6008: f9000516     	str	x22, [x8, #0x8]
    600c: f90002c8     	str	x8, [x22]
    6010: 91008aa8     	add	x8, x21, #0x22
    6014: d1002120     	sub	x0, x9, #0x8
    6018: a9002135     	stp	x21, x8, [x9]
    601c: 94000000     	bl	0x601c <audio_off+0xe0>
		000000000000601c:  R_AARCH64_CALL26	kfree
    6020: eb1402df     	cmp	x22, x20
    6024: aa1603e9     	mov	x9, x22
    6028: 54fffe01     	b.ne	0x5fe8 <audio_off+0xac>
    602c: 14000004     	b	0x603c <audio_off+0x100>
    6030: aa0903e0     	mov	x0, x9
    6034: 94000000     	bl	0x6034 <audio_off+0xf8>
		0000000000006034:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    6038: 17fffff6     	b	0x6010 <audio_off+0xd4>
    603c: 910bc260     	add	x0, x19, #0x2f0
    6040: 94000000     	bl	0x6040 <audio_off+0x104>
		0000000000006040:  R_AARCH64_CALL26	mutex_unlock
    6044: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    6048: a94157f6     	ldp	x22, x21, [sp, #0x10]
    604c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    6050: d50323bf     	autiasp
    6054: d65f03c0     	ret
