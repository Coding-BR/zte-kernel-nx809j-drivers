
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016f58 <tp_zlog_debug_write>:
   16f58: d503233f     	paciasp
   16f5c: d10103ff     	sub	sp, sp, #0x40
   16f60: a9027bfd     	stp	x29, x30, [sp, #0x20]
   16f64: a9034ff4     	stp	x20, x19, [sp, #0x30]
   16f68: 910083fd     	add	x29, sp, #0x20
   16f6c: d5384108     	mrs	x8, SP_EL0
   16f70: aa0103f4     	mov	x20, x1
   16f74: 910023e0     	add	x0, sp, #0x8
   16f78: f9438908     	ldr	x8, [x8, #0x710]
   16f7c: f100245f     	cmp	x2, #0x9
   16f80: f81f83a8     	stur	x8, [x29, #-0x8]
   16f84: 52800128     	mov	w8, #0x9                // =9
   16f88: 9a883053     	csel	x19, x2, x8, lo
   16f8c: 2a1f03e2     	mov	w2, wzr
   16f90: b90007ff     	str	wzr, [sp, #0x4]
   16f94: aa1303e1     	mov	x1, x19
   16f98: 790023ff     	strh	wzr, [sp, #0x10]
   16f9c: f90007ff     	str	xzr, [sp, #0x8]
   16fa0: 94000000     	bl	0x16fa0 <tp_zlog_debug_write+0x48>
		0000000000016fa0:  R_AARCH64_CALL26	__check_object_size
   16fa4: 910023e0     	add	x0, sp, #0x8
   16fa8: aa1403e1     	mov	x1, x20
   16fac: aa1303e2     	mov	x2, x19
   16fb0: 94000000     	bl	0x16fb0 <tp_zlog_debug_write+0x58>
		0000000000016fb0:  R_AARCH64_CALL26	_inline_copy_from_user
   16fb4: 350000c0     	cbnz	w0, 0x16fcc <tp_zlog_debug_write+0x74>
   16fb8: 910023e0     	add	x0, sp, #0x8
   16fbc: 910013e2     	add	x2, sp, #0x4
   16fc0: 2a1f03e1     	mov	w1, wzr
   16fc4: 94000000     	bl	0x16fc4 <tp_zlog_debug_write+0x6c>
		0000000000016fc4:  R_AARCH64_CALL26	kstrtouint
   16fc8: 340001a0     	cbz	w0, 0x16ffc <tp_zlog_debug_write+0xa4>
   16fcc: 928002b3     	mov	x19, #-0x16             // =-22
   16fd0: d5384108     	mrs	x8, SP_EL0
   16fd4: f9438908     	ldr	x8, [x8, #0x710]
   16fd8: f85f83a9     	ldur	x9, [x29, #-0x8]
   16fdc: eb09011f     	cmp	x8, x9
   16fe0: 54000221     	b.ne	0x17024 <tp_zlog_debug_write+0xcc>
   16fe4: aa1303e0     	mov	x0, x19
   16fe8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   16fec: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   16ff0: 910103ff     	add	sp, sp, #0x40
   16ff4: d50323bf     	autiasp
   16ff8: d65f03c0     	ret
   16ffc: b94007e0     	ldr	w0, [sp, #0x4]
   17000: 71003c1f     	cmp	w0, #0xf
   17004: 54fffe68     	b.hi	0x16fd0 <tp_zlog_debug_write+0x78>
   17008: 52800028     	mov	w8, #0x1                // =1
   1700c: 529dccc9     	mov	w9, #0xee66             // =61030
   17010: 1ac02108     	lsl	w8, w8, w0
   17014: 6a09011f     	tst	w8, w9
   17018: 54fffdc0     	b.eq	0x16fd0 <tp_zlog_debug_write+0x78>
   1701c: 94000000     	bl	0x1701c <tp_zlog_debug_write+0xc4>
		000000000001701c:  R_AARCH64_CALL26	tpd_zlog_record_notify
   17020: 17ffffec     	b	0x16fd0 <tp_zlog_debug_write+0x78>
   17024: 94000000     	bl	0x17024 <tp_zlog_debug_write+0xcc>
		0000000000017024:  R_AARCH64_CALL26	__stack_chk_fail
