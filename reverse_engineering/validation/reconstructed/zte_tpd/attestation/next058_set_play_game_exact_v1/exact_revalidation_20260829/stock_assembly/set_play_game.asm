
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005480 <set_play_game>:
    5480: d503233f     	paciasp
    5484: d100c3ff     	sub	sp, sp, #0x30
    5488: a9017bfd     	stp	x29, x30, [sp, #0x10]
    548c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5490: 910043fd     	add	x29, sp, #0x10
    5494: d5384108     	mrs	x8, SP_EL0
    5498: aa0203f3     	mov	x19, x2
    549c: aa0103e0     	mov	x0, x1
    54a0: f9438908     	ldr	x8, [x8, #0x710]
    54a4: 910013e3     	add	x3, sp, #0x4
    54a8: aa0203e1     	mov	x1, x2
    54ac: 52800142     	mov	w2, #0xa                // =10
    54b0: f90007e8     	str	x8, [sp, #0x8]
    54b4: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000054b4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    54b8: f9400114     	ldr	x20, [x8]
		00000000000054b8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    54bc: b90007ff     	str	wzr, [sp, #0x4]
    54c0: 94000000     	bl	0x54c0 <set_play_game+0x40>
		00000000000054c0:  R_AARCH64_CALL26	kstrtouint_from_user
    54c4: 340001a0     	cbz	w0, 0x54f8 <set_play_game+0x78>
    54c8: 928002b3     	mov	x19, #-0x16             // =-22
    54cc: d5384108     	mrs	x8, SP_EL0
    54d0: f9438908     	ldr	x8, [x8, #0x710]
    54d4: f94007e9     	ldr	x9, [sp, #0x8]
    54d8: eb09011f     	cmp	x8, x9
    54dc: 54000321     	b.ne	0x5540 <set_play_game+0xc0>
    54e0: aa1303e0     	mov	x0, x19
    54e4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    54e8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    54ec: 9100c3ff     	add	sp, sp, #0x30
    54f0: d50323bf     	autiasp
    54f4: d65f03c0     	ret
    54f8: b94007e2     	ldr	w2, [sp, #0x4]
    54fc: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000054fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    5500: 91000000     	add	x0, x0, #0x0
		0000000000005500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    5504: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9558
    5508: 91000021     	add	x1, x1, #0x0
		0000000000005508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9558
    550c: 94000000     	bl	0x550c <set_play_game+0x8c>
		000000000000550c:  R_AARCH64_CALL26	_printk
    5510: f9478688     	ldr	x8, [x20, #0xf08]
    5514: b4fffdc8     	cbz	x8, 0x54cc <set_play_game+0x4c>
    5518: b94007e1     	ldr	w1, [sp, #0x4]
    551c: aa1403e0     	mov	x0, x20
    5520: b85fc110     	ldur	w16, [x8, #-0x4]
    5524: 72969331     	movk	w17, #0xb499
    5528: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    552c: 6b11021f     	cmp	w16, w17
    5530: 54000040     	b.eq	0x5538 <set_play_game+0xb8>
    5534: d4304500     	brk	#0x8228
    5538: d63f0100     	blr	x8
    553c: 17ffffe4     	b	0x54cc <set_play_game+0x4c>
    5540: 94000000     	bl	0x5540 <set_play_game+0xc0>
		0000000000005540:  R_AARCH64_CALL26	__stack_chk_fail
