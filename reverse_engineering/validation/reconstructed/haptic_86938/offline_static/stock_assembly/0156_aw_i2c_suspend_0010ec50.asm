
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000be30 <aw_i2c_suspend>:
    be30: d503233f     	paciasp
    be34: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    be38: f9000bf3     	str	x19, [sp, #0x10]
    be3c: 910003fd     	mov	x29, sp
    be40: f9404c13     	ldr	x19, [x0, #0x98]
    be44: 910bc260     	add	x0, x19, #0x2f0
    be48: 94000000     	bl	0xbe48 <aw_i2c_suspend+0x18>
		000000000000be48:  R_AARCH64_CALL26	mutex_lock
    be4c: f942e668     	ldr	x8, [x19, #0x5c8]
    be50: aa1303e0     	mov	x0, x19
    be54: f9401d08     	ldr	x8, [x8, #0x38]
    be58: b85fc110     	ldur	w16, [x8, #-0x4]
    be5c: 72810611     	movk	w17, #0x830
    be60: 72b08f51     	movk	w17, #0x847a, lsl #16
    be64: 6b11021f     	cmp	w16, w17
    be68: 54000040     	b.eq	0xbe70 <aw_i2c_suspend+0x40>
    be6c: d4304500     	brk	#0x8228
    be70: d63f0100     	blr	x8
    be74: 910bc260     	add	x0, x19, #0x2f0
    be78: 94000000     	bl	0xbe78 <aw_i2c_suspend+0x48>
		000000000000be78:  R_AARCH64_CALL26	mutex_unlock
    be7c: 2a1f03e0     	mov	w0, wzr
    be80: f9400bf3     	ldr	x19, [sp, #0x10]
    be84: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    be88: d50323bf     	autiasp
    be8c: d65f03c0     	ret
