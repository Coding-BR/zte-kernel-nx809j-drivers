
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000155a0 <syna_testing_create_dir>:
   155a0: d503233f     	paciasp
   155a4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   155a8: a9014ff4     	stp	x20, x19, [sp, #0x10]
   155ac: 910003fd     	mov	x29, sp
   155b0: f941cc01     	ldr	x1, [x0, #0x398]
   155b4: aa0003f3     	mov	x19, x0
   155b8: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000155b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8310
   155bc: 91000000     	add	x0, x0, #0x0
		00000000000155bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8310
   155c0: 94000000     	bl	0x155c0 <syna_testing_create_dir+0x20>
		00000000000155c0:  R_AARCH64_CALL26	kobject_create_and_add
   155c4: f901d660     	str	x0, [x19, #0x3a8]
   155c8: b4000140     	cbz	x0, 0x155f0 <syna_testing_create_dir+0x50>
   155cc: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000155cc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xb38
   155d0: 91000021     	add	x1, x1, #0x0
		00000000000155d0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xb38
   155d4: 94000000     	bl	0x155d4 <syna_testing_create_dir+0x34>
		00000000000155d4:  R_AARCH64_CALL26	sysfs_create_group
   155d8: 37f801a0     	tbnz	w0, #0x1f, 0x1560c <syna_testing_create_dir+0x6c>
   155dc: 2a1f03e0     	mov	w0, wzr
   155e0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   155e4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   155e8: d50323bf     	autiasp
   155ec: d65f03c0     	ret
   155f0: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000155f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x771d
   155f4: 91000000     	add	x0, x0, #0x0
		00000000000155f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x771d
   155f8: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000155f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93d
   155fc: 91000021     	add	x1, x1, #0x0
		00000000000155fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93d
   15600: 94000000     	bl	0x15600 <syna_testing_create_dir+0x60>
		0000000000015600:  R_AARCH64_CALL26	_printk
   15604: 128002a0     	mov	w0, #-0x16              // =-22
   15608: 17fffff6     	b	0x155e0 <syna_testing_create_dir+0x40>
   1560c: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001560c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3432
   15610: 91000108     	add	x8, x8, #0x0
		0000000000015610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3432
   15614: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93d
   15618: 91000021     	add	x1, x1, #0x0
		0000000000015618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93d
   1561c: 2a0003f4     	mov	w20, w0
   15620: aa0803e0     	mov	x0, x8
   15624: 94000000     	bl	0x15624 <syna_testing_create_dir+0x84>
		0000000000015624:  R_AARCH64_CALL26	_printk
   15628: f941d660     	ldr	x0, [x19, #0x3a8]
   1562c: 94000000     	bl	0x1562c <syna_testing_create_dir+0x8c>
		000000000001562c:  R_AARCH64_CALL26	kobject_put
   15630: 2a1403e0     	mov	w0, w20
   15634: 17ffffeb     	b	0x155e0 <syna_testing_create_dir+0x40>
