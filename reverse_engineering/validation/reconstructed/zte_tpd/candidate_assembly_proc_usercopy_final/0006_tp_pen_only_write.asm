
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020014 <tp_pen_only_write>:
   20014: d503233f     	paciasp
   20018: d10143ff     	sub	sp, sp, #0x50
   2001c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   20020: a90357f6     	stp	x22, x21, [sp, #0x30]
   20024: a9044ff4     	stp	x20, x19, [sp, #0x40]
   20028: 910083fd     	add	x29, sp, #0x20
   2002c: d5384108     	mrs	x8, SP_EL0
   20030: aa0103f5     	mov	x21, x1
   20034: 910023e0     	add	x0, sp, #0x8
   20038: f9438908     	ldr	x8, [x8, #0x710]
   2003c: f100245f     	cmp	x2, #0x9
   20040: f81f83a8     	stur	x8, [x29, #-0x8]
   20044: 90000008     	adrp	x8, 0x20000 <tp_pen_only_read+0xe8>
		0000000000020044:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   20048: 790023ff     	strh	wzr, [sp, #0x10]
   2004c: f90007ff     	str	xzr, [sp, #0x8]
   20050: d5384109     	mrs	x9, SP_EL0
   20054: f9400114     	ldr	x20, [x8]
		0000000000020054:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   20058: 52800128     	mov	w8, #0x9                // =9
   2005c: b81f43bf     	stur	wzr, [x29, #-0xc]
   20060: 9a88b053     	csel	x19, x2, x8, lt
   20064: 2a1f03e2     	mov	w2, wzr
   20068: aa1303e1     	mov	x1, x19
   2006c: 94000000     	bl	0x2006c <tp_pen_only_write+0x58>
		000000000002006c:  R_AARCH64_CALL26	__check_object_size
   20070: 910023e0     	add	x0, sp, #0x8
   20074: aa1503e1     	mov	x1, x21
   20078: aa1303e2     	mov	x2, x19
   2007c: 94000000     	bl	0x2007c <tp_pen_only_write+0x68>
		000000000002007c:  R_AARCH64_CALL26	_inline_copy_from_user
   20080: b50000c0     	cbnz	x0, 0x20098 <tp_pen_only_write+0x84>
   20084: 910023e0     	add	x0, sp, #0x8
   20088: d10033a2     	sub	x2, x29, #0xc
   2008c: 2a1f03e1     	mov	w1, wzr
   20090: 94000000     	bl	0x20090 <tp_pen_only_write+0x7c>
		0000000000020090:  R_AARCH64_CALL26	kstrtouint
   20094: 340001e0     	cbz	w0, 0x200d0 <tp_pen_only_write+0xbc>
   20098: 928002b3     	mov	x19, #-0x16             // =-22
   2009c: d5384108     	mrs	x8, SP_EL0
   200a0: f9438908     	ldr	x8, [x8, #0x710]
   200a4: d5384109     	mrs	x9, SP_EL0
   200a8: f85f83a9     	ldur	x9, [x29, #-0x8]
   200ac: eb09011f     	cmp	x8, x9
   200b0: 54000561     	b.ne	0x2015c <tp_pen_only_write+0x148>
   200b4: aa1303e0     	mov	x0, x19
   200b8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   200bc: a94357f6     	ldp	x22, x21, [sp, #0x30]
   200c0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   200c4: 910143ff     	add	sp, sp, #0x50
   200c8: d50323bf     	autiasp
   200cc: d65f03c0     	ret
   200d0: b85f43a8     	ldur	w8, [x29, #-0xc]
   200d4: 90000000     	adrp	x0, 0x20000 <tp_pen_only_read+0xe8>
		00000000000200d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CFF8
   200d8: 91000000     	add	x0, x0, #0x0
		00000000000200d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CFF8
   200dc: 90000001     	adrp	x1, 0x20000 <tp_pen_only_read+0xe8>
		00000000000200dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f7c
   200e0: 91000021     	add	x1, x1, #0x0
		00000000000200e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f7c
   200e4: 12001d02     	and	w2, w8, #0xff
   200e8: 39110688     	strb	w8, [x20, #0x441]
   200ec: 94000000     	bl	0x200ec <tp_pen_only_write+0xd8>
		00000000000200ec:  R_AARCH64_CALL26	_printk
   200f0: f946ea95     	ldr	x21, [x20, #0xdd0]
   200f4: b4fffd55     	cbz	x21, 0x2009c <tp_pen_only_write+0x88>
   200f8: b85fc2a8     	ldur	w8, [x21, #-0x4]
   200fc: 5287b829     	mov	w9, #0x3dc1             // =15809
   20100: b85f43a1     	ldur	w1, [x29, #-0xc]
   20104: 72bc3ac9     	movk	w9, #0xe1d6, lsl #16
   20108: 6b09011f     	cmp	w8, w9
   2010c: 54000141     	b.ne	0x20134 <tp_pen_only_write+0x120>
   20110: aa1403e0     	mov	x0, x20
   20114: b85fc2b0     	ldur	w16, [x21, #-0x4]
   20118: 728e29b1     	movk	w17, #0x714d
   2011c: 72b34051     	movk	w17, #0x9a02, lsl #16
   20120: 6b11021f     	cmp	w16, w17
   20124: 54000040     	b.eq	0x2012c <tp_pen_only_write+0x118>
   20128: d43046a0     	brk	#0x8235
   2012c: d63f02a0     	blr	x21
   20130: 17ffffdb     	b	0x2009c <tp_pen_only_write+0x88>
   20134: 90000000     	adrp	x0, 0x20000 <tp_pen_only_read+0xe8>
		0000000000020134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
   20138: 91000000     	add	x0, x0, #0x0
		0000000000020138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
   2013c: 90000002     	adrp	x2, 0x20000 <tp_pen_only_read+0xe8>
		000000000002013c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a09
   20140: 91000042     	add	x2, x2, #0x0
		0000000000020140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a09
   20144: 2a0103f6     	mov	w22, w1
   20148: 52904501     	mov	w1, #0x8228             // =33320
   2014c: 52800563     	mov	w3, #0x2b               // =43
   20150: 94000000     	bl	0x20150 <tp_pen_only_write+0x13c>
		0000000000020150:  R_AARCH64_CALL26	_printk
   20154: 2a1603e1     	mov	w1, w22
   20158: 17ffffee     	b	0x20110 <tp_pen_only_write+0xfc>
   2015c: 94000000     	bl	0x2015c <tp_pen_only_write+0x148>
		000000000002015c:  R_AARCH64_CALL26	__stack_chk_fail
