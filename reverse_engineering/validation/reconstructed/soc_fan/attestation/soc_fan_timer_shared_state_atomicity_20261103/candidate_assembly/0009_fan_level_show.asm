
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000388 <fan_level_show>:
     388: d503233f     	paciasp
     38c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     390: f9000bf5     	str	x21, [sp, #0x10]
     394: a9024ff4     	stp	x20, x19, [sp, #0x20]
     398: 910003fd     	mov	x29, sp
     39c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000039c:  R_AARCH64_ADR_PREL_PG_HI21	chip
     3a0: aa0203f3     	mov	x19, x2
     3a4: f9400115     	ldr	x21, [x8]
		00000000000003a4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     3a8: f94006b4     	ldr	x20, [x21, #0x8]
     3ac: 910062a0     	add	x0, x21, #0x18
     3b0: 94000000     	bl	0x3b0 <fan_level_show+0x28>
		00000000000003b0:  R_AARCH64_CALL26	mutex_lock
     3b4: 39403288     	ldrb	w8, [x20, #0xc]
     3b8: 910062a0     	add	x0, x21, #0x18
     3bc: 2a2803e8     	mvn	w8, w8
     3c0: 92400108     	and	x8, x8, #0x1
     3c4: 38686a94     	ldrb	w20, [x20, x8]
     3c8: 94000000     	bl	0x3c8 <fan_level_show+0x40>
		00000000000003c8:  R_AARCH64_CALL26	mutex_unlock
     3cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ed
     3d0: 91000021     	add	x1, x1, #0x0
		00000000000003d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ed
     3d4: aa1303e0     	mov	x0, x19
     3d8: 2a1403e2     	mov	w2, w20
     3dc: 94000000     	bl	0x3dc <fan_level_show+0x54>
		00000000000003dc:  R_AARCH64_CALL26	sprintf
     3e0: 93407c00     	sxtw	x0, w0
     3e4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     3e8: f9400bf5     	ldr	x21, [sp, #0x10]
     3ec: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     3f0: d50323bf     	autiasp
     3f4: d65f03c0     	ret
