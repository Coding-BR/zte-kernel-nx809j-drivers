
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016efc <tp_zlog_debug_write>:
   16efc: d503233f     	paciasp
   16f00: d10103ff     	sub	sp, sp, #0x40
   16f04: a9027bfd     	stp	x29, x30, [sp, #0x20]
   16f08: a9034ff4     	stp	x20, x19, [sp, #0x30]
   16f0c: 910083fd     	add	x29, sp, #0x20
   16f10: d5384108     	mrs	x8, SP_EL0
   16f14: aa0103f4     	mov	x20, x1
   16f18: 910023e0     	add	x0, sp, #0x8
   16f1c: f9438908     	ldr	x8, [x8, #0x710]
   16f20: f100245f     	cmp	x2, #0x9
   16f24: f81f83a8     	stur	x8, [x29, #-0x8]
   16f28: 52800128     	mov	w8, #0x9                // =9
   16f2c: 9a883053     	csel	x19, x2, x8, lo
   16f30: 2a1f03e2     	mov	w2, wzr
   16f34: b90007ff     	str	wzr, [sp, #0x4]
   16f38: aa1303e1     	mov	x1, x19
   16f3c: 790023ff     	strh	wzr, [sp, #0x10]
   16f40: f90007ff     	str	xzr, [sp, #0x8]
   16f44: 94000000     	bl	0x16f44 <tp_zlog_debug_write+0x48>
		0000000000016f44:  R_AARCH64_CALL26	__check_object_size
   16f48: 910023e0     	add	x0, sp, #0x8
   16f4c: aa1403e1     	mov	x1, x20
   16f50: aa1303e2     	mov	x2, x19
   16f54: 94000000     	bl	0x16f54 <tp_zlog_debug_write+0x58>
		0000000000016f54:  R_AARCH64_CALL26	_inline_copy_from_user
   16f58: 350000c0     	cbnz	w0, 0x16f70 <tp_zlog_debug_write+0x74>
   16f5c: 910023e0     	add	x0, sp, #0x8
   16f60: 910013e2     	add	x2, sp, #0x4
   16f64: 2a1f03e1     	mov	w1, wzr
   16f68: 94000000     	bl	0x16f68 <tp_zlog_debug_write+0x6c>
		0000000000016f68:  R_AARCH64_CALL26	kstrtouint
   16f6c: 340001a0     	cbz	w0, 0x16fa0 <tp_zlog_debug_write+0xa4>
   16f70: 928002b3     	mov	x19, #-0x16             // =-22
   16f74: d5384108     	mrs	x8, SP_EL0
   16f78: f9438908     	ldr	x8, [x8, #0x710]
   16f7c: f85f83a9     	ldur	x9, [x29, #-0x8]
   16f80: eb09011f     	cmp	x8, x9
   16f84: 54000221     	b.ne	0x16fc8 <tp_zlog_debug_write+0xcc>
   16f88: aa1303e0     	mov	x0, x19
   16f8c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   16f90: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   16f94: 910103ff     	add	sp, sp, #0x40
   16f98: d50323bf     	autiasp
   16f9c: d65f03c0     	ret
   16fa0: b94007e0     	ldr	w0, [sp, #0x4]
   16fa4: 71003c1f     	cmp	w0, #0xf
   16fa8: 54fffe68     	b.hi	0x16f74 <tp_zlog_debug_write+0x78>
   16fac: 52800028     	mov	w8, #0x1                // =1
   16fb0: 529dccc9     	mov	w9, #0xee66             // =61030
   16fb4: 1ac02108     	lsl	w8, w8, w0
   16fb8: 6a09011f     	tst	w8, w9
   16fbc: 54fffdc0     	b.eq	0x16f74 <tp_zlog_debug_write+0x78>
   16fc0: 94000000     	bl	0x16fc0 <tp_zlog_debug_write+0xc4>
		0000000000016fc0:  R_AARCH64_CALL26	tpd_zlog_record_notify
   16fc4: 17ffffec     	b	0x16f74 <tp_zlog_debug_write+0x78>
   16fc8: 94000000     	bl	0x16fc8 <tp_zlog_debug_write+0xcc>
		0000000000016fc8:  R_AARCH64_CALL26	__stack_chk_fail
