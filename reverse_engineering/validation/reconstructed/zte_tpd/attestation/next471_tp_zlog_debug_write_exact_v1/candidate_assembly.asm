
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252e0 <tp_zlog_debug_write>:
   252e0: d503233f     	paciasp
   252e4: d10103ff     	sub	sp, sp, #0x40
   252e8: a9027bfd     	stp	x29, x30, [sp, #0x20]
   252ec: a9034ff4     	stp	x20, x19, [sp, #0x30]
   252f0: 910083fd     	add	x29, sp, #0x20
   252f4: d5384108     	mrs	x8, SP_EL0
   252f8: aa0103f4     	mov	x20, x1
   252fc: 910023e0     	add	x0, sp, #0x8
   25300: f9438908     	ldr	x8, [x8, #0x710]
   25304: f100245f     	cmp	x2, #0x9
   25308: f81f83a8     	stur	x8, [x29, #-0x8]
   2530c: 52800128     	mov	w8, #0x9                // =9
   25310: 9a883053     	csel	x19, x2, x8, lo
   25314: 2a1f03e2     	mov	w2, wzr
   25318: b90007ff     	str	wzr, [sp, #0x4]
   2531c: aa1303e1     	mov	x1, x19
   25320: 790023ff     	strh	wzr, [sp, #0x10]
   25324: f90007ff     	str	xzr, [sp, #0x8]
   25328: 94000000     	bl	0x25328 <tp_zlog_debug_write+0x48>
		0000000000025328:  R_AARCH64_CALL26	__check_object_size
   2532c: 910023e0     	add	x0, sp, #0x8
   25330: aa1403e1     	mov	x1, x20
   25334: aa1303e2     	mov	x2, x19
   25338: 94000000     	bl	0x25338 <tp_zlog_debug_write+0x58>
		0000000000025338:  R_AARCH64_CALL26	_inline_copy_from_user
   2533c: 350000c0     	cbnz	w0, 0x25354 <tp_zlog_debug_write+0x74>
   25340: 910023e0     	add	x0, sp, #0x8
   25344: 910013e2     	add	x2, sp, #0x4
   25348: 2a1f03e1     	mov	w1, wzr
   2534c: 94000000     	bl	0x2534c <tp_zlog_debug_write+0x6c>
		000000000002534c:  R_AARCH64_CALL26	kstrtouint
   25350: 340001a0     	cbz	w0, 0x25384 <tp_zlog_debug_write+0xa4>
   25354: 928002b3     	mov	x19, #-0x16             // =-22
   25358: d5384108     	mrs	x8, SP_EL0
   2535c: f9438908     	ldr	x8, [x8, #0x710]
   25360: f85f83a9     	ldur	x9, [x29, #-0x8]
   25364: eb09011f     	cmp	x8, x9
   25368: 54000221     	b.ne	0x253ac <tp_zlog_debug_write+0xcc>
   2536c: aa1303e0     	mov	x0, x19
   25370: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   25374: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25378: 910103ff     	add	sp, sp, #0x40
   2537c: d50323bf     	autiasp
   25380: d65f03c0     	ret
   25384: b94007e0     	ldr	w0, [sp, #0x4]
   25388: 71003c1f     	cmp	w0, #0xf
   2538c: 54fffe68     	b.hi	0x25358 <tp_zlog_debug_write+0x78>
   25390: 52800028     	mov	w8, #0x1                // =1
   25394: 529dccc9     	mov	w9, #0xee66             // =61030
   25398: 1ac02108     	lsl	w8, w8, w0
   2539c: 6a09011f     	tst	w8, w9
   253a0: 54fffdc0     	b.eq	0x25358 <tp_zlog_debug_write+0x78>
   253a4: 94000000     	bl	0x253a4 <tp_zlog_debug_write+0xc4>
		00000000000253a4:  R_AARCH64_CALL26	tpd_zlog_record_notify
   253a8: 17ffffec     	b	0x25358 <tp_zlog_debug_write+0x78>
   253ac: 94000000     	bl	0x253ac <tp_zlog_debug_write+0xcc>
		00000000000253ac:  R_AARCH64_CALL26	__stack_chk_fail
