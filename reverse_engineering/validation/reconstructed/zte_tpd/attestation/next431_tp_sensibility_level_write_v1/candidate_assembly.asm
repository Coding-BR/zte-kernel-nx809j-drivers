
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001edc0 <tp_sensibility_level_write>:
   1edc0: d503233f     	paciasp
   1edc4: d10143ff     	sub	sp, sp, #0x50
   1edc8: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1edcc: f9001bf5     	str	x21, [sp, #0x30]
   1edd0: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1edd4: 910083fd     	add	x29, sp, #0x20
   1edd8: d5384108     	mrs	x8, SP_EL0
   1eddc: aa0103f4     	mov	x20, x1
   1ede0: 910023e0     	add	x0, sp, #0x8
   1ede4: f9438908     	ldr	x8, [x8, #0x710]
   1ede8: f100245f     	cmp	x2, #0x9
   1edec: f81f83a8     	stur	x8, [x29, #-0x8]
   1edf0: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x394>
		000000000001edf0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1edf4: 790023ff     	strh	wzr, [sp, #0x10]
   1edf8: f90007ff     	str	xzr, [sp, #0x8]
   1edfc: d5384109     	mrs	x9, SP_EL0
   1ee00: f9400115     	ldr	x21, [x8]
		000000000001ee00:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1ee04: 52800128     	mov	w8, #0x9                // =9
   1ee08: b81f43bf     	stur	wzr, [x29, #-0xc]
   1ee0c: 9a88b053     	csel	x19, x2, x8, lt
   1ee10: 2a1f03e2     	mov	w2, wzr
   1ee14: aa1303e1     	mov	x1, x19
   1ee18: 94000000     	bl	0x1ee18 <tp_sensibility_level_write+0x58>
		000000000001ee18:  R_AARCH64_CALL26	__check_object_size
   1ee1c: 910023e0     	add	x0, sp, #0x8
   1ee20: aa1403e1     	mov	x1, x20
   1ee24: aa1303e2     	mov	x2, x19
   1ee28: 94000000     	bl	0x1ee28 <tp_sensibility_level_write+0x68>
		000000000001ee28:  R_AARCH64_CALL26	_inline_copy_from_user
   1ee2c: b50000c0     	cbnz	x0, 0x1ee44 <tp_sensibility_level_write+0x84>
   1ee30: 910023e0     	add	x0, sp, #0x8
   1ee34: d10033a2     	sub	x2, x29, #0xc
   1ee38: 2a1f03e1     	mov	w1, wzr
   1ee3c: 94000000     	bl	0x1ee3c <tp_sensibility_level_write+0x7c>
		000000000001ee3c:  R_AARCH64_CALL26	kstrtouint
   1ee40: 340001e0     	cbz	w0, 0x1ee7c <tp_sensibility_level_write+0xbc>
   1ee44: 928002b3     	mov	x19, #-0x16             // =-22
   1ee48: d5384108     	mrs	x8, SP_EL0
   1ee4c: f9438908     	ldr	x8, [x8, #0x710]
   1ee50: d5384109     	mrs	x9, SP_EL0
   1ee54: f85f83a9     	ldur	x9, [x29, #-0x8]
   1ee58: eb09011f     	cmp	x8, x9
   1ee5c: 54000381     	b.ne	0x1eecc <tp_sensibility_level_write+0x10c>
   1ee60: aa1303e0     	mov	x0, x19
   1ee64: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1ee68: f9401bf5     	ldr	x21, [sp, #0x30]
   1ee6c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1ee70: 910143ff     	add	sp, sp, #0x50
   1ee74: d50323bf     	autiasp
   1ee78: d65f03c0     	ret
   1ee7c: b85f43a8     	ldur	w8, [x29, #-0xc]
   1ee80: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x394>
		000000000001ee80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1410
   1ee84: 91000000     	add	x0, x0, #0x0
		000000000001ee84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1410
   1ee88: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x394>
		000000000001ee88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d0
   1ee8c: 91000021     	add	x1, x1, #0x0
		000000000001ee8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d0
   1ee90: 12001d02     	and	w2, w8, #0xff
   1ee94: 390102a8     	strb	w8, [x21, #0x40]
   1ee98: 94000000     	bl	0x1ee98 <tp_sensibility_level_write+0xd8>
		000000000001ee98:  R_AARCH64_CALL26	_printk
   1ee9c: f946daa8     	ldr	x8, [x21, #0xdb0]
   1eea0: b4fffd48     	cbz	x8, 0x1ee48 <tp_sensibility_level_write+0x88>
   1eea4: b94007e1     	ldr	w1, [sp, #0x4]
   1eea8: aa1503e0     	mov	x0, x21
   1eeac: b85fc110     	ldur	w16, [x8, #-0x4]
   1eeb0: 7287b831     	movk	w17, #0x3dc1
   1eeb4: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
   1eeb8: 6b11021f     	cmp	w16, w17
   1eebc: 54000040     	b.eq	0x1eec4 <tp_sensibility_level_write+0x104>
   1eec0: d4304500     	brk	#0x8228
   1eec4: d63f0100     	blr	x8
   1eec8: 17ffffe0     	b	0x1ee48 <tp_sensibility_level_write+0x88>
   1eecc: 94000000     	bl	0x1eecc <tp_sensibility_level_write+0x10c>
		000000000001eecc:  R_AARCH64_CALL26	__stack_chk_fail
