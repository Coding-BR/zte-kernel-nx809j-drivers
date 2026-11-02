
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026268 <syna_dev_module_init>:
   26268: d503233f     	paciasp
   2626c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26270: 910003fd     	mov	x29, sp
   26274: 94000000     	bl	0x26274 <syna_dev_module_init+0xc>
		0000000000026274:  R_AARCH64_CALL26	syna_hw_interface_init
   26278: 37f80100     	tbnz	w0, #0x1f, 0x26298 <syna_dev_module_init+0x30>
   2627c: 52801900     	mov	w0, #0xc8               // =200
   26280: 94000000     	bl	0x26280 <syna_dev_module_init+0x18>
		0000000000026280:  R_AARCH64_CALL26	msleep
   26284: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026284:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_driver
   26288: 91000000     	add	x0, x0, #0x0
		0000000000026288:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_driver
   2628c: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		000000000002628c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
   26290: 91000021     	add	x1, x1, #0x0
		0000000000026290:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
   26294: 94000000     	bl	0x26294 <syna_dev_module_init+0x2c>
		0000000000026294:  R_AARCH64_CALL26	__platform_driver_register
   26298: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2629c: d50323bf     	autiasp
   262a0: d65f03c0     	ret
