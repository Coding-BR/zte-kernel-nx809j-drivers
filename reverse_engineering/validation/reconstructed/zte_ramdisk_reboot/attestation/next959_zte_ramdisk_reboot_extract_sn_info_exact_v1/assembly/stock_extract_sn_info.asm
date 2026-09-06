
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000034c <extract_sn_info>:
     34c: d503233f     	paciasp
     350: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     354: a9015ff8     	stp	x24, x23, [sp, #0x10]
     358: a90257f6     	stp	x22, x21, [sp, #0x20]
     35c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     360: 910003fd     	mov	x29, sp
     364: aa0103f3     	mov	x19, x1
     368: aa0003f5     	mov	x21, x0
     36c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000036c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29f
     370: 91000021     	add	x1, x1, #0x0
		0000000000000370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29f
     374: aa1303e0     	mov	x0, x19
     378: aa0303f7     	mov	x23, x3
     37c: aa0203f4     	mov	x20, x2
     380: 94000000     	bl	0x380 <extract_sn_info+0x34>
		0000000000000380:  R_AARCH64_CALL26	strstr
     384: b4000373     	cbz	x19, 0x3f0 <extract_sn_info+0xa4>
     388: aa0003f6     	mov	x22, x0
     38c: aa1303e0     	mov	x0, x19
     390: 94000000     	bl	0x390 <extract_sn_info+0x44>
		0000000000000390:  R_AARCH64_CALL26	strlen
     394: b4000396     	cbz	x22, 0x404 <extract_sn_info+0xb8>
     398: cb1302c8     	sub	x8, x22, x19
     39c: 91000d08     	add	x8, x8, #0x3
     3a0: eb080018     	subs	x24, x0, x8
     3a4: 54000303     	b.lo	0x404 <extract_sn_info+0xb8>
     3a8: eb17031f     	cmp	x24, x23
     3ac: 54000342     	b.hs	0x414 <extract_sn_info+0xc8>
     3b0: eb08001f     	cmp	x0, x8
     3b4: 54000300     	b.eq	0x414 <extract_sn_info+0xc8>
     3b8: eb00031f     	cmp	x24, x0
     3bc: 540002c2     	b.hs	0x414 <extract_sn_info+0xc8>
     3c0: 91000ec1     	add	x1, x22, #0x3
     3c4: aa1403e0     	mov	x0, x20
     3c8: aa1803e2     	mov	x2, x24
     3cc: 94000000     	bl	0x3cc <extract_sn_info+0x80>
		00000000000003cc:  R_AARCH64_CALL26	strncpy
     3d0: 2a1f03e0     	mov	w0, wzr
     3d4: 38386a9f     	strb	wzr, [x20, x24]
     3d8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     3dc: a94257f6     	ldp	x22, x21, [sp, #0x20]
     3e0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     3e4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     3e8: d50323bf     	autiasp
     3ec: d65f03c0     	ret
     3f0: f94002a0     	ldr	x0, [x21]
     3f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c4
     3f8: 91000021     	add	x1, x1, #0x0
		00000000000003f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c4
     3fc: 94000000     	bl	0x3fc <extract_sn_info+0xb0>
		00000000000003fc:  R_AARCH64_CALL26	_dev_err
     400: 1400000a     	b	0x428 <extract_sn_info+0xdc>
     404: f94002a0     	ldr	x0, [x21]
     408: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
     40c: 91000021     	add	x1, x1, #0x0
		000000000000040c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
     410: 14000004     	b	0x420 <extract_sn_info+0xd4>
     414: f94002a0     	ldr	x0, [x21]
     418: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24d
     41c: 91000021     	add	x1, x1, #0x0
		000000000000041c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24d
     420: aa1303e2     	mov	x2, x19
     424: 94000000     	bl	0x424 <extract_sn_info+0xd8>
		0000000000000424:  R_AARCH64_CALL26	_dev_err
     428: 12800000     	mov	w0, #-0x1               // =-1
     42c: 17ffffeb     	b	0x3d8 <extract_sn_info+0x8c>
