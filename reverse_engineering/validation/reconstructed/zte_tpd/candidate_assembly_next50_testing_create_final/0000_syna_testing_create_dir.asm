
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c67c <syna_testing_create_dir>:
   1c67c: d503233f     	paciasp
   1c680: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c684: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c688: 910003fd     	mov	x29, sp
   1c68c: f941cc01     	ldr	x1, [x0, #0x398]
   1c690: aa0003f3     	mov	x19, x0
   1c694: 90000000     	adrp	x0, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3866
   1c698: 91000000     	add	x0, x0, #0x0
		000000000001c698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3866
   1c69c: 94000000     	bl	0x1c69c <syna_testing_create_dir+0x20>
		000000000001c69c:  R_AARCH64_CALL26	kobject_create_and_add
   1c6a0: f901d660     	str	x0, [x19, #0x3a8]
   1c6a4: b4000140     	cbz	x0, 0x1c6cc <syna_testing_create_dir+0x50>
   1c6a8: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c6a8:  R_AARCH64_ADR_PREL_PG_HI21	attr_testing_group
   1c6ac: 91000021     	add	x1, x1, #0x0
		000000000001c6ac:  R_AARCH64_ADD_ABS_LO12_NC	attr_testing_group
   1c6b0: 94000000     	bl	0x1c6b0 <syna_testing_create_dir+0x34>
		000000000001c6b0:  R_AARCH64_CALL26	sysfs_create_group
   1c6b4: 37f801a0     	tbnz	w0, #0x1f, 0x1c6e8 <syna_testing_create_dir+0x6c>
   1c6b8: 2a1f03e0     	mov	w0, wzr
   1c6bc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c6c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c6c4: d50323bf     	autiasp
   1c6c8: d65f03c0     	ret
   1c6cc: 90000000     	adrp	x0, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c6cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3336
   1c6d0: 91000000     	add	x0, x0, #0x0
		000000000001c6d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3336
   1c6d4: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c6d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x425
   1c6d8: 91000021     	add	x1, x1, #0x0
		000000000001c6d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x425
   1c6dc: 94000000     	bl	0x1c6dc <syna_testing_create_dir+0x60>
		000000000001c6dc:  R_AARCH64_CALL26	_printk
   1c6e0: 128002a0     	mov	w0, #-0x16              // =-22
   1c6e4: 17fffff6     	b	0x1c6bc <syna_testing_create_dir+0x40>
   1c6e8: 90000008     	adrp	x8, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c6e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17aa
   1c6ec: 91000108     	add	x8, x8, #0x0
		000000000001c6ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17aa
   1c6f0: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c6f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x425
   1c6f4: 91000021     	add	x1, x1, #0x0
		000000000001c6f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x425
   1c6f8: 2a0003f4     	mov	w20, w0
   1c6fc: aa0803e0     	mov	x0, x8
   1c700: 94000000     	bl	0x1c700 <syna_testing_create_dir+0x84>
		000000000001c700:  R_AARCH64_CALL26	_printk
   1c704: f941d660     	ldr	x0, [x19, #0x3a8]
   1c708: 94000000     	bl	0x1c708 <syna_testing_create_dir+0x8c>
		000000000001c708:  R_AARCH64_CALL26	kobject_put
   1c70c: 2a1403e0     	mov	w0, w20
   1c710: 17ffffeb     	b	0x1c6bc <syna_testing_create_dir+0x40>
