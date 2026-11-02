
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001563c <syna_testing_remove_dir>:
   1563c: d503233f     	paciasp
   15640: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   15644: f9000bf3     	str	x19, [sp, #0x10]
   15648: 910003fd     	mov	x29, sp
   1564c: aa0003f3     	mov	x19, x0
   15650: f941d400     	ldr	x0, [x0, #0x3a8]
   15654: b40000c0     	cbz	x0, 0x1566c <syna_testing_remove_dir+0x30>
   15658: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015658:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xb38
   1565c: 91000021     	add	x1, x1, #0x0
		000000000001565c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xb38
   15660: 94000000     	bl	0x15660 <syna_testing_remove_dir+0x24>
		0000000000015660:  R_AARCH64_CALL26	sysfs_remove_group
   15664: f941d660     	ldr	x0, [x19, #0x3a8]
   15668: 94000000     	bl	0x15668 <syna_testing_remove_dir+0x2c>
		0000000000015668:  R_AARCH64_CALL26	kobject_put
   1566c: f9400bf3     	ldr	x19, [sp, #0x10]
   15670: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   15674: d50323bf     	autiasp
   15678: d65f03c0     	ret
