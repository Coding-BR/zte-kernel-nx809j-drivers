
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026830 <tp_free_tp_firmware_data>:
   26830: d503233f     	paciasp
   26834: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26838: f9000bf3     	str	x19, [sp, #0x10]
   2683c: 910003fd     	mov	x29, sp
   26840: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026840:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   26844: f9400113     	ldr	x19, [x8]
		0000000000026844:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   26848: f9462e60     	ldr	x0, [x19, #0xc58]
   2684c: b4000180     	cbz	x0, 0x2687c <tp_free_tp_firmware_data+0x4c>
   26850: f9400408     	ldr	x8, [x0, #0x8]
   26854: b4000108     	cbz	x8, 0x26874 <tp_free_tp_firmware_data+0x44>
   26858: aa0803e0     	mov	x0, x8
   2685c: 94000000     	bl	0x2685c <tp_free_tp_firmware_data+0x2c>
		000000000002685c:  R_AARCH64_CALL26	vfree
   26860: f9462e68     	ldr	x8, [x19, #0xc58]
   26864: f900051f     	str	xzr, [x8, #0x8]
   26868: f9462e68     	ldr	x8, [x19, #0xc58]
   2686c: f900011f     	str	xzr, [x8]
   26870: f9462e60     	ldr	x0, [x19, #0xc58]
   26874: 94000000     	bl	0x26874 <tp_free_tp_firmware_data+0x44>
		0000000000026874:  R_AARCH64_CALL26	kfree
   26878: f9062e7f     	str	xzr, [x19, #0xc58]
   2687c: b9044a7f     	str	wzr, [x19, #0x448]
   26880: f9400bf3     	ldr	x19, [sp, #0x10]
   26884: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26888: d50323bf     	autiasp
   2688c: d65f03c0     	ret
