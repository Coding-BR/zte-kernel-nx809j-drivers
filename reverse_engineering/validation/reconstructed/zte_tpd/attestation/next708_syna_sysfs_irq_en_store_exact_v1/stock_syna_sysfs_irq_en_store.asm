
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000148a4 <syna_sysfs_irq_en_store>:
   148a4: d503233f     	paciasp
   148a8: d10103ff     	sub	sp, sp, #0x40
   148ac: a9017bfd     	stp	x29, x30, [sp, #0x10]
   148b0: f90013f5     	str	x21, [sp, #0x20]
   148b4: a9034ff4     	stp	x20, x19, [sp, #0x30]
   148b8: 910043fd     	add	x29, sp, #0x10
   148bc: d5384109     	mrs	x9, SP_EL0
   148c0: aa0203e8     	mov	x8, x2
   148c4: 910013e2     	add	x2, sp, #0x4
   148c8: f9438929     	ldr	x9, [x9, #0x710]
   148cc: 52800141     	mov	w1, #0xa                // =10
   148d0: aa0303f3     	mov	x19, x3
   148d4: f90007e9     	str	x9, [sp, #0x8]
   148d8: f9400c09     	ldr	x9, [x0, #0x18]
   148dc: aa0803e0     	mov	x0, x8
   148e0: b90007ff     	str	wzr, [sp, #0x4]
   148e4: f9400d29     	ldr	x9, [x9, #0x18]
   148e8: f9404d34     	ldr	x20, [x9, #0x98]
   148ec: f9413a95     	ldr	x21, [x20, #0x270]
   148f0: 94000000     	bl	0x148f0 <syna_sysfs_irq_en_store+0x4c>
		00000000000148f0:  R_AARCH64_CALL26	kstrtouint
   148f4: 34000060     	cbz	w0, 0x14900 <syna_sysfs_irq_en_store+0x5c>
   148f8: 928002b3     	mov	x19, #-0x16             // =-22
   148fc: 14000028     	b	0x1499c <syna_sysfs_irq_en_store+0xf8>
   14900: 910022a0     	add	x0, x21, #0x8
   14904: b4000320     	cbz	x0, 0x14968 <syna_sysfs_irq_en_store+0xc4>
   14908: f94022a8     	ldr	x8, [x21, #0x40]
   1490c: b40002e8     	cbz	x8, 0x14968 <syna_sysfs_irq_en_store+0xc4>
   14910: 39560a89     	ldrb	w9, [x20, #0x582]
   14914: 360005c9     	tbz	w9, #0x0, 0x149cc <syna_sysfs_irq_en_store+0x128>
   14918: b9457e89     	ldr	w9, [x20, #0x57c]
   1491c: 71000d3f     	cmp	w9, #0x3
   14920: 54000620     	b.eq	0x149e4 <syna_sysfs_irq_en_store+0x140>
   14924: b94007e2     	ldr	w2, [sp, #0x4]
   14928: 7100045f     	cmp	w2, #0x1
   1492c: 54000220     	b.eq	0x14970 <syna_sysfs_irq_en_store+0xcc>
   14930: 35000662     	cbnz	w2, 0x149fc <syna_sysfs_irq_en_store+0x158>
   14934: 2a1f03e1     	mov	w1, wzr
   14938: b85fc110     	ldur	w16, [x8, #-0x4]
   1493c: 728c3631     	movk	w17, #0x61b1
   14940: 72a685d1     	movk	w17, #0x342e, lsl #16
   14944: 6b11021f     	cmp	w16, w17
   14948: 54000040     	b.eq	0x14950 <syna_sysfs_irq_en_store+0xac>
   1494c: d4304500     	brk	#0x8228
   14950: d63f0100     	blr	x8
   14954: 36f80200     	tbz	w0, #0x1f, 0x14994 <syna_sysfs_irq_en_store+0xf0>
   14958: 2a0003f4     	mov	w20, w0
   1495c: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001495c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19fc
   14960: 91000000     	add	x0, x0, #0x0
		0000000000014960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19fc
   14964: 14000030     	b	0x14a24 <syna_sysfs_irq_en_store+0x180>
   14968: aa1f03f3     	mov	x19, xzr
   1496c: 1400000c     	b	0x1499c <syna_sysfs_irq_en_store+0xf8>
   14970: 52800021     	mov	w1, #0x1                // =1
   14974: b85fc110     	ldur	w16, [x8, #-0x4]
   14978: 728c3631     	movk	w17, #0x61b1
   1497c: 72a685d1     	movk	w17, #0x342e, lsl #16
   14980: 6b11021f     	cmp	w16, w17
   14984: 54000040     	b.eq	0x1498c <syna_sysfs_irq_en_store+0xe8>
   14988: d4304500     	brk	#0x8228
   1498c: d63f0100     	blr	x8
   14990: 37f80440     	tbnz	w0, #0x1f, 0x14a18 <syna_sysfs_irq_en_store+0x174>
   14994: 2a1303f4     	mov	w20, w19
   14998: 93407e93     	sxtw	x19, w20
   1499c: d5384108     	mrs	x8, SP_EL0
   149a0: f9438908     	ldr	x8, [x8, #0x710]
   149a4: f94007e9     	ldr	x9, [sp, #0x8]
   149a8: eb09011f     	cmp	x8, x9
   149ac: 54000441     	b.ne	0x14a34 <syna_sysfs_irq_en_store+0x190>
   149b0: aa1303e0     	mov	x0, x19
   149b4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   149b8: f94013f5     	ldr	x21, [sp, #0x20]
   149bc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   149c0: 910103ff     	add	sp, sp, #0x40
   149c4: d50323bf     	autiasp
   149c8: d65f03c0     	ret
   149cc: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000149cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473c
   149d0: 91000000     	add	x0, x0, #0x0
		00000000000149d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473c
   149d4: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000149d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x707f
   149d8: 91000021     	add	x1, x1, #0x0
		00000000000149d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x707f
   149dc: 94000000     	bl	0x149dc <syna_sysfs_irq_en_store+0x138>
		00000000000149dc:  R_AARCH64_CALL26	_printk
   149e0: 17ffffef     	b	0x1499c <syna_sysfs_irq_en_store+0xf8>
   149e4: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000149e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f38
   149e8: 91000000     	add	x0, x0, #0x0
		00000000000149e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f38
   149ec: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000149ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x707f
   149f0: 91000021     	add	x1, x1, #0x0
		00000000000149f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x707f
   149f4: 94000000     	bl	0x149f4 <syna_sysfs_irq_en_store+0x150>
		00000000000149f4:  R_AARCH64_CALL26	_printk
   149f8: 17ffffe7     	b	0x14994 <syna_sysfs_irq_en_store+0xf0>
   149fc: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000149fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf0b
   14a00: 91000000     	add	x0, x0, #0x0
		0000000000014a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf0b
   14a04: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x707f
   14a08: 91000021     	add	x1, x1, #0x0
		0000000000014a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x707f
   14a0c: 94000000     	bl	0x14a0c <syna_sysfs_irq_en_store+0x168>
		0000000000014a0c:  R_AARCH64_CALL26	_printk
   14a10: 128002b4     	mov	w20, #-0x16             // =-22
   14a14: 17ffffe1     	b	0x14998 <syna_sysfs_irq_en_store+0xf4>
   14a18: 2a0003f4     	mov	w20, w0
   14a1c: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26e5
   14a20: 91000000     	add	x0, x0, #0x0
		0000000000014a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26e5
   14a24: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014a24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x707f
   14a28: 91000021     	add	x1, x1, #0x0
		0000000000014a28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x707f
   14a2c: 94000000     	bl	0x14a2c <syna_sysfs_irq_en_store+0x188>
		0000000000014a2c:  R_AARCH64_CALL26	_printk
   14a30: 17ffffda     	b	0x14998 <syna_sysfs_irq_en_store+0xf4>
   14a34: 94000000     	bl	0x14a34 <syna_sysfs_irq_en_store+0x190>
		0000000000014a34:  R_AARCH64_CALL26	__stack_chk_fail
