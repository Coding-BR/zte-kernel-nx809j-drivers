
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e830 <tp_free_tp_firmware_data>:
   1e830: d503233f     	paciasp
   1e834: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1e838: f9000bf3     	str	x19, [sp, #0x10]
   1e83c: 910003fd     	mov	x29, sp
   1e840: 90000008     	adrp	x8, 0x1e000 <tp_edge_report_limit_read+0x360>
		000000000001e840:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e844: f9400113     	ldr	x19, [x8]
		000000000001e844:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e848: f9462e60     	ldr	x0, [x19, #0xc58]
   1e84c: b4000180     	cbz	x0, 0x1e87c <tp_free_tp_firmware_data+0x4c>
   1e850: f9400408     	ldr	x8, [x0, #0x8]
   1e854: b4000108     	cbz	x8, 0x1e874 <tp_free_tp_firmware_data+0x44>
   1e858: aa0803e0     	mov	x0, x8
   1e85c: 94000000     	bl	0x1e85c <tp_free_tp_firmware_data+0x2c>
		000000000001e85c:  R_AARCH64_CALL26	vfree
   1e860: f9462e68     	ldr	x8, [x19, #0xc58]
   1e864: f900051f     	str	xzr, [x8, #0x8]
   1e868: f9462e68     	ldr	x8, [x19, #0xc58]
   1e86c: f900011f     	str	xzr, [x8]
   1e870: f9462e60     	ldr	x0, [x19, #0xc58]
   1e874: 94000000     	bl	0x1e874 <tp_free_tp_firmware_data+0x44>
		000000000001e874:  R_AARCH64_CALL26	kfree
   1e878: f9062e7f     	str	xzr, [x19, #0xc58]
   1e87c: b9044a7f     	str	wzr, [x19, #0x448]
   1e880: f9400bf3     	ldr	x19, [sp, #0x10]
   1e884: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1e888: d50323bf     	autiasp
   1e88c: d65f03c0     	ret
