
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000210ec <tp_zlog_debug_write>:
   210ec: d503233f     	paciasp
   210f0: d10103ff     	sub	sp, sp, #0x40
   210f4: a9027bfd     	stp	x29, x30, [sp, #0x20]
   210f8: f9001bf3     	str	x19, [sp, #0x30]
   210fc: 910083fd     	add	x29, sp, #0x20
   21100: d5384108     	mrs	x8, SP_EL0
   21104: 910023e0     	add	x0, sp, #0x8
   21108: f9438908     	ldr	x8, [x8, #0x710]
   2110c: f100245f     	cmp	x2, #0x9
   21110: f81f83a8     	stur	x8, [x29, #-0x8]
   21114: 52800128     	mov	w8, #0x9                // =9
   21118: 9a883053     	csel	x19, x2, x8, lo
   2111c: 790023ff     	strh	wzr, [sp, #0x10]
   21120: aa1303e2     	mov	x2, x19
   21124: f90007ff     	str	xzr, [sp, #0x8]
   21128: b90007ff     	str	wzr, [sp, #0x4]
   2112c: 94000000     	bl	0x2112c <tp_zlog_debug_write+0x40>
		000000000002112c:  R_AARCH64_CALL26	_inline_copy_from_user
   21130: b50000c0     	cbnz	x0, 0x21148 <tp_zlog_debug_write+0x5c>
   21134: 910023e0     	add	x0, sp, #0x8
   21138: 910013e2     	add	x2, sp, #0x4
   2113c: 2a1f03e1     	mov	w1, wzr
   21140: 94000000     	bl	0x21140 <tp_zlog_debug_write+0x54>
		0000000000021140:  R_AARCH64_CALL26	kstrtouint
   21144: 340001a0     	cbz	w0, 0x21178 <tp_zlog_debug_write+0x8c>
   21148: 928002b3     	mov	x19, #-0x16             // =-22
   2114c: d5384108     	mrs	x8, SP_EL0
   21150: f9438908     	ldr	x8, [x8, #0x710]
   21154: f85f83a9     	ldur	x9, [x29, #-0x8]
   21158: eb09011f     	cmp	x8, x9
   2115c: 54000221     	b.ne	0x211a0 <tp_zlog_debug_write+0xb4>
   21160: aa1303e0     	mov	x0, x19
   21164: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   21168: f9401bf3     	ldr	x19, [sp, #0x30]
   2116c: 910103ff     	add	sp, sp, #0x40
   21170: d50323bf     	autiasp
   21174: d65f03c0     	ret
   21178: b94007e0     	ldr	w0, [sp, #0x4]
   2117c: 71003c1f     	cmp	w0, #0xf
   21180: 54fffe68     	b.hi	0x2114c <tp_zlog_debug_write+0x60>
   21184: 52800028     	mov	w8, #0x1                // =1
   21188: 529dccc9     	mov	w9, #0xee66             // =61030
   2118c: 1ac02108     	lsl	w8, w8, w0
   21190: 6a09011f     	tst	w8, w9
   21194: 54fffdc0     	b.eq	0x2114c <tp_zlog_debug_write+0x60>
   21198: 94000000     	bl	0x21198 <tp_zlog_debug_write+0xac>
		0000000000021198:  R_AARCH64_CALL26	tpd_zlog_record_notify
   2119c: 17ffffec     	b	0x2114c <tp_zlog_debug_write+0x60>
   211a0: 94000000     	bl	0x211a0 <tp_zlog_debug_write+0xb4>
		00000000000211a0:  R_AARCH64_CALL26	__stack_chk_fail
