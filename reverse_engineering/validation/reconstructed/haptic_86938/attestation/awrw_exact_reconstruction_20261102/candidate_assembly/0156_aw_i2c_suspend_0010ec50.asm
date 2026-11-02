
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c80 <aw_i2c_suspend>:
     c80: d503233f     	paciasp
     c84: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     c88: f9000bf3     	str	x19, [sp, #0x10]
     c8c: 910003fd     	mov	x29, sp
     c90: f9404c13     	ldr	x19, [x0, #0x98]
     c94: 910bc260     	add	x0, x19, #0x2f0
     c98: 94000000     	bl	0xc98 <aw_i2c_suspend+0x18>
		0000000000000c98:  R_AARCH64_CALL26	mutex_lock
     c9c: f942e668     	ldr	x8, [x19, #0x5c8]
     ca0: aa1303e0     	mov	x0, x19
     ca4: f9401d08     	ldr	x8, [x8, #0x38]
     ca8: b85fc110     	ldur	w16, [x8, #-0x4]
     cac: 72810611     	movk	w17, #0x830
     cb0: 72b08f51     	movk	w17, #0x847a, lsl #16
     cb4: 6b11021f     	cmp	w16, w17
     cb8: 54000040     	b.eq	0xcc0 <aw_i2c_suspend+0x40>
     cbc: d4304500     	brk	#0x8228
     cc0: d63f0100     	blr	x8
     cc4: 910bc260     	add	x0, x19, #0x2f0
     cc8: 94000000     	bl	0xcc8 <aw_i2c_suspend+0x48>
		0000000000000cc8:  R_AARCH64_CALL26	mutex_unlock
     ccc: 2a1f03e0     	mov	w0, wzr
     cd0: f9400bf3     	ldr	x19, [sp, #0x10]
     cd4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     cd8: d50323bf     	autiasp
     cdc: d65f03c0     	ret
