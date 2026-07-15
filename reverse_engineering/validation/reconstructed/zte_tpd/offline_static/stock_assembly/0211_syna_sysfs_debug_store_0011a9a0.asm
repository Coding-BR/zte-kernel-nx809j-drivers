
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014118 <syna_sysfs_debug_store>:
   14118: d503233f     	paciasp
   1411c: d100c3ff     	sub	sp, sp, #0x30
   14120: a9017bfd     	stp	x29, x30, [sp, #0x10]
   14124: a9024ff4     	stp	x20, x19, [sp, #0x20]
   14128: 910043fd     	add	x29, sp, #0x10
   1412c: d5384109     	mrs	x9, SP_EL0
   14130: aa0203e8     	mov	x8, x2
   14134: 910013e2     	add	x2, sp, #0x4
   14138: f9438929     	ldr	x9, [x9, #0x710]
   1413c: 52800141     	mov	w1, #0xa                // =10
   14140: aa0303f3     	mov	x19, x3
   14144: f90007e9     	str	x9, [sp, #0x8]
   14148: f9400c09     	ldr	x9, [x0, #0x18]
   1414c: aa0803e0     	mov	x0, x8
   14150: b90007ff     	str	wzr, [sp, #0x4]
   14154: f9404d34     	ldr	x20, [x9, #0x98]
   14158: 94000000     	bl	0x14158 <syna_sysfs_debug_store+0x40>
		0000000000014158:  R_AARCH64_CALL26	kstrtouint
   1415c: 340001a0     	cbz	w0, 0x14190 <syna_sysfs_debug_store+0x78>
   14160: 928002b3     	mov	x19, #-0x16             // =-22
   14164: d5384108     	mrs	x8, SP_EL0
   14168: f9438908     	ldr	x8, [x8, #0x710]
   1416c: f94007e9     	ldr	x9, [sp, #0x8]
   14170: eb09011f     	cmp	x8, x9
   14174: 540006c1     	b.ne	0x1424c <syna_sysfs_debug_store+0x134>
   14178: aa1303e0     	mov	x0, x19
   1417c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   14180: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   14184: 9100c3ff     	add	sp, sp, #0x30
   14188: d50323bf     	autiasp
   1418c: d65f03c0     	ret
   14190: b94007e2     	ldr	w2, [sp, #0x4]
   14194: 34000302     	cbz	w2, 0x141f4 <syna_sysfs_debug_store+0xdc>
   14198: 7100045f     	cmp	w2, #0x1
   1419c: 540003e1     	b.ne	0x14218 <syna_sysfs_debug_store+0x100>
   141a0: f941d288     	ldr	x8, [x20, #0x3a0]
   141a4: b50003a8     	cbnz	x8, 0x14218 <syna_sysfs_debug_store+0x100>
   141a8: f941ce81     	ldr	x1, [x20, #0x398]
   141ac: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000141ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64d2
   141b0: 91000000     	add	x0, x0, #0x0
		00000000000141b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64d2
   141b4: 94000000     	bl	0x141b4 <syna_sysfs_debug_store+0x9c>
		00000000000141b4:  R_AARCH64_CALL26	kobject_create_and_add
   141b8: f901d280     	str	x0, [x20, #0x3a0]
   141bc: b40003a0     	cbz	x0, 0x14230 <syna_sysfs_debug_store+0x118>
   141c0: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000141c0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x9e8
   141c4: 91000021     	add	x1, x1, #0x0
		00000000000141c4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x9e8
   141c8: 94000000     	bl	0x141c8 <syna_sysfs_debug_store+0xb0>
		00000000000141c8:  R_AARCH64_CALL26	sysfs_create_group
   141cc: 36fffcc0     	tbz	w0, #0x1f, 0x14164 <syna_sysfs_debug_store+0x4c>
   141d0: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000141d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21a1
   141d4: 91000000     	add	x0, x0, #0x0
		00000000000141d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21a1
   141d8: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000141d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20e
   141dc: 91000021     	add	x1, x1, #0x0
		00000000000141dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20e
   141e0: 94000000     	bl	0x141e0 <syna_sysfs_debug_store+0xc8>
		00000000000141e0:  R_AARCH64_CALL26	_printk
   141e4: f941d280     	ldr	x0, [x20, #0x3a0]
   141e8: 94000000     	bl	0x141e8 <syna_sysfs_debug_store+0xd0>
		00000000000141e8:  R_AARCH64_CALL26	kobject_put
   141ec: 92800273     	mov	x19, #-0x14             // =-20
   141f0: 17ffffdd     	b	0x14164 <syna_sysfs_debug_store+0x4c>
   141f4: f941d280     	ldr	x0, [x20, #0x3a0]
   141f8: b4fffb60     	cbz	x0, 0x14164 <syna_sysfs_debug_store+0x4c>
   141fc: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000141fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x9e8
   14200: 91000021     	add	x1, x1, #0x0
		0000000000014200:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x9e8
   14204: 94000000     	bl	0x14204 <syna_sysfs_debug_store+0xec>
		0000000000014204:  R_AARCH64_CALL26	sysfs_remove_group
   14208: f941d280     	ldr	x0, [x20, #0x3a0]
   1420c: 94000000     	bl	0x1420c <syna_sysfs_debug_store+0xf4>
		000000000001420c:  R_AARCH64_CALL26	kobject_put
   14210: f901d29f     	str	xzr, [x20, #0x3a0]
   14214: 17ffffd4     	b	0x14164 <syna_sysfs_debug_store+0x4c>
   14218: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf0b
   1421c: 91000000     	add	x0, x0, #0x0
		000000000001421c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf0b
   14220: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20e
   14224: 91000021     	add	x1, x1, #0x0
		0000000000014224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20e
   14228: 94000000     	bl	0x14228 <syna_sysfs_debug_store+0x110>
		0000000000014228:  R_AARCH64_CALL26	_printk
   1422c: 17ffffcd     	b	0x14160 <syna_sysfs_debug_store+0x48>
   14230: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab3
   14234: 91000000     	add	x0, x0, #0x0
		0000000000014234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab3
   14238: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20e
   1423c: 91000021     	add	x1, x1, #0x0
		000000000001423c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20e
   14240: 94000000     	bl	0x14240 <syna_sysfs_debug_store+0x128>
		0000000000014240:  R_AARCH64_CALL26	_printk
   14244: 92800273     	mov	x19, #-0x14             // =-20
   14248: 17ffffc7     	b	0x14164 <syna_sysfs_debug_store+0x4c>
   1424c: 94000000     	bl	0x1424c <syna_sysfs_debug_store+0x134>
		000000000001424c:  R_AARCH64_CALL26	__stack_chk_fail
