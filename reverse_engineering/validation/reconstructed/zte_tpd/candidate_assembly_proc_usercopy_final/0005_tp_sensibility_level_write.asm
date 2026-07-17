
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020470 <tp_sensibility_level_write>:
   20470: d503233f     	paciasp
   20474: d10143ff     	sub	sp, sp, #0x50
   20478: a9027bfd     	stp	x29, x30, [sp, #0x20]
   2047c: a90357f6     	stp	x22, x21, [sp, #0x30]
   20480: a9044ff4     	stp	x20, x19, [sp, #0x40]
   20484: 910083fd     	add	x29, sp, #0x20
   20488: d5384108     	mrs	x8, SP_EL0
   2048c: aa0103f5     	mov	x21, x1
   20490: 910023e0     	add	x0, sp, #0x8
   20494: f9438908     	ldr	x8, [x8, #0x710]
   20498: f100245f     	cmp	x2, #0x9
   2049c: f81f83a8     	stur	x8, [x29, #-0x8]
   204a0: 90000008     	adrp	x8, 0x20000 <tp_pen_only_read+0xe8>
		00000000000204a0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   204a4: 790023ff     	strh	wzr, [sp, #0x10]
   204a8: f90007ff     	str	xzr, [sp, #0x8]
   204ac: d5384109     	mrs	x9, SP_EL0
   204b0: f9400114     	ldr	x20, [x8]
		00000000000204b0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   204b4: 52800128     	mov	w8, #0x9                // =9
   204b8: b81f43bf     	stur	wzr, [x29, #-0xc]
   204bc: 9a88b053     	csel	x19, x2, x8, lt
   204c0: 2a1f03e2     	mov	w2, wzr
   204c4: aa1303e1     	mov	x1, x19
   204c8: 94000000     	bl	0x204c8 <tp_sensibility_level_write+0x58>
		00000000000204c8:  R_AARCH64_CALL26	__check_object_size
   204cc: 910023e0     	add	x0, sp, #0x8
   204d0: aa1503e1     	mov	x1, x21
   204d4: aa1303e2     	mov	x2, x19
   204d8: 94000000     	bl	0x204d8 <tp_sensibility_level_write+0x68>
		00000000000204d8:  R_AARCH64_CALL26	_inline_copy_from_user
   204dc: b50000c0     	cbnz	x0, 0x204f4 <tp_sensibility_level_write+0x84>
   204e0: 910023e0     	add	x0, sp, #0x8
   204e4: d10033a2     	sub	x2, x29, #0xc
   204e8: 2a1f03e1     	mov	w1, wzr
   204ec: 94000000     	bl	0x204ec <tp_sensibility_level_write+0x7c>
		00000000000204ec:  R_AARCH64_CALL26	kstrtouint
   204f0: 340001e0     	cbz	w0, 0x2052c <tp_sensibility_level_write+0xbc>
   204f4: 928002b3     	mov	x19, #-0x16             // =-22
   204f8: d5384108     	mrs	x8, SP_EL0
   204fc: f9438908     	ldr	x8, [x8, #0x710]
   20500: d5384109     	mrs	x9, SP_EL0
   20504: f85f83a9     	ldur	x9, [x29, #-0x8]
   20508: eb09011f     	cmp	x8, x9
   2050c: 54000561     	b.ne	0x205b8 <tp_sensibility_level_write+0x148>
   20510: aa1303e0     	mov	x0, x19
   20514: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   20518: a94357f6     	ldp	x22, x21, [sp, #0x30]
   2051c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   20520: 910143ff     	add	sp, sp, #0x50
   20524: d50323bf     	autiasp
   20528: d65f03c0     	ret
   2052c: b85f43a8     	ldur	w8, [x29, #-0xc]
   20530: 90000000     	adrp	x0, 0x20000 <tp_pen_only_read+0xe8>
		0000000000020530:  R_AARCH64_ADR_PREL_PG_HI21	unk_3343E
   20534: 91000000     	add	x0, x0, #0x0
		0000000000020534:  R_AARCH64_ADD_ABS_LO12_NC	unk_3343E
   20538: 90000001     	adrp	x1, 0x20000 <tp_pen_only_read+0xe8>
		0000000000020538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49c5
   2053c: 91000021     	add	x1, x1, #0x0
		000000000002053c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49c5
   20540: 92401d02     	and	x2, x8, #0xff
   20544: 39010288     	strb	w8, [x20, #0x40]
   20548: 94000000     	bl	0x20548 <tp_sensibility_level_write+0xd8>
		0000000000020548:  R_AARCH64_CALL26	_printk
   2054c: f946da95     	ldr	x21, [x20, #0xdb0]
   20550: b4fffd55     	cbz	x21, 0x204f8 <tp_sensibility_level_write+0x88>
   20554: b85fc2a8     	ldur	w8, [x21, #-0x4]
   20558: 5287b829     	mov	w9, #0x3dc1             // =15809
   2055c: b85f43a1     	ldur	w1, [x29, #-0xc]
   20560: 72bc3ac9     	movk	w9, #0xe1d6, lsl #16
   20564: 6b09011f     	cmp	w8, w9
   20568: 54000141     	b.ne	0x20590 <tp_sensibility_level_write+0x120>
   2056c: aa1403e0     	mov	x0, x20
   20570: b85fc2b0     	ldur	w16, [x21, #-0x4]
   20574: 728f8a71     	movk	w17, #0x7c53
   20578: 72bea491     	movk	w17, #0xf524, lsl #16
   2057c: 6b11021f     	cmp	w16, w17
   20580: 54000040     	b.eq	0x20588 <tp_sensibility_level_write+0x118>
   20584: d43046a0     	brk	#0x8235
   20588: d63f02a0     	blr	x21
   2058c: 17ffffdb     	b	0x204f8 <tp_sensibility_level_write+0x88>
   20590: 90000000     	adrp	x0, 0x20000 <tp_pen_only_read+0xe8>
		0000000000020590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
   20594: 91000000     	add	x0, x0, #0x0
		0000000000020594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
   20598: 90000002     	adrp	x2, 0x20000 <tp_pen_only_read+0xe8>
		0000000000020598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26f
   2059c: 91000042     	add	x2, x2, #0x0
		000000000002059c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26f
   205a0: aa0103f6     	mov	x22, x1
   205a4: 52904501     	mov	w1, #0x8228             // =33320
   205a8: 52800543     	mov	w3, #0x2a               // =42
   205ac: 94000000     	bl	0x205ac <tp_sensibility_level_write+0x13c>
		00000000000205ac:  R_AARCH64_CALL26	_printk
   205b0: aa1603e1     	mov	x1, x22
   205b4: 17ffffee     	b	0x2056c <tp_sensibility_level_write+0xfc>
   205b8: 94000000     	bl	0x205b8 <tp_sensibility_level_write+0x148>
		00000000000205b8:  R_AARCH64_CALL26	__stack_chk_fail
