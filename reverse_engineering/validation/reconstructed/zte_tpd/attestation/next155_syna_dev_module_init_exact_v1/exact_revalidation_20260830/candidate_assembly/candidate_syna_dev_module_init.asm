
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002620c <syna_dev_module_init>:
   2620c: d503233f     	paciasp
   26210: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26214: 910003fd     	mov	x29, sp
   26218: 94000000     	bl	0x26218 <syna_dev_module_init+0xc>
		0000000000026218:  R_AARCH64_CALL26	syna_hw_interface_init
   2621c: 37f80100     	tbnz	w0, #0x1f, 0x2623c <syna_dev_module_init+0x30>
   26220: 52801900     	mov	w0, #0xc8               // =200
   26224: 94000000     	bl	0x26224 <syna_dev_module_init+0x18>
		0000000000026224:  R_AARCH64_CALL26	msleep
   26228: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026228:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_driver
   2622c: 91000000     	add	x0, x0, #0x0
		000000000002622c:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_driver
   26230: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026230:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
   26234: 91000021     	add	x1, x1, #0x0
		0000000000026234:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
   26238: 94000000     	bl	0x26238 <syna_dev_module_init+0x2c>
		0000000000026238:  R_AARCH64_CALL26	__platform_driver_register
   2623c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26240: d50323bf     	autiasp
   26244: d65f03c0     	ret
