
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008408 <ram_update_store>:
    8408: d503233f     	paciasp
    840c: d100c3ff     	sub	sp, sp, #0x30
    8410: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8414: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8418: 910043fd     	add	x29, sp, #0x10
    841c: d5384109     	mrs	x9, SP_EL0
    8420: aa0203e8     	mov	x8, x2
    8424: 910013e2     	add	x2, sp, #0x4
    8428: f9438929     	ldr	x9, [x9, #0x710]
    842c: 2a1f03e1     	mov	w1, wzr
    8430: aa0303f3     	mov	x19, x3
    8434: f90007e9     	str	x9, [sp, #0x8]
    8438: f9404c14     	ldr	x20, [x0, #0x98]
    843c: aa0803e0     	mov	x0, x8
    8440: b90007ff     	str	wzr, [sp, #0x4]
    8444: 94000000     	bl	0x8444 <ram_update_store+0x3c>
		0000000000008444:  R_AARCH64_CALL26	kstrtouint
    8448: 37f80200     	tbnz	w0, #0x1f, 0x8488 <ram_update_store+0x80>
    844c: b94007e8     	ldr	w8, [sp, #0x4]
    8450: 340001e8     	cbz	w8, 0x848c <ram_update_store+0x84>
    8454: 7815d29f     	sturh	wzr, [x20, #-0xa3]
    8458: 90000008     	adrp	x8, 0x8000 <reg_show+0x10>
		0000000000008458:  R_AARCH64_ADR_PREL_PG_HI21	aw_ram_name
    845c: f9413e83     	ldr	x3, [x20, #0x278]
    8460: f9400102     	ldr	x2, [x8]
		0000000000008460:  R_AARCH64_LDST64_ABS_LO12_NC	aw_ram_name
    8464: d102a285     	sub	x5, x20, #0xa8
    8468: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008468:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    846c: 91000000     	add	x0, x0, #0x0
		000000000000846c:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    8470: 90000006     	adrp	x6, 0x8000 <reg_show+0x10>
		0000000000008470:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x84c0
    8474: 910000c6     	add	x6, x6, #0x0
		0000000000008474:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x84c0
    8478: 52800021     	mov	w1, #0x1                // =1
    847c: 52819804     	mov	w4, #0xcc0              // =3264
    8480: 94000000     	bl	0x8480 <ram_update_store+0x78>
		0000000000008480:  R_AARCH64_CALL26	request_firmware_nowait
    8484: 14000002     	b	0x848c <ram_update_store+0x84>
    8488: 93407c13     	sxtw	x19, w0
    848c: d5384108     	mrs	x8, SP_EL0
    8490: f9438908     	ldr	x8, [x8, #0x710]
    8494: f94007e9     	ldr	x9, [sp, #0x8]
    8498: eb09011f     	cmp	x8, x9
    849c: 540000e1     	b.ne	0x84b8 <ram_update_store+0xb0>
    84a0: aa1303e0     	mov	x0, x19
    84a4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    84a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    84ac: 9100c3ff     	add	sp, sp, #0x30
    84b0: d50323bf     	autiasp
    84b4: d65f03c0     	ret
    84b8: 94000000     	bl	0x84b8 <ram_update_store+0xb0>
		00000000000084b8:  R_AARCH64_CALL26	__stack_chk_fail
