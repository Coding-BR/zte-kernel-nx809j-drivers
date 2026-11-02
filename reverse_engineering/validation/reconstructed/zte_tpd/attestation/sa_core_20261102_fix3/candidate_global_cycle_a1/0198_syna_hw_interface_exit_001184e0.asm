
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026204 <syna_hw_interface_exit>:
   26204: d503233f     	paciasp
   26208: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   2620c: 910003fd     	mov	x29, sp
   26210: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026210:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_driver+0x20
   26214: 91000000     	add	x0, x0, #0x0
		0000000000026214:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_driver+0x20
   26218: 94000000     	bl	0x26218 <syna_hw_interface_exit+0x14>
		0000000000026218:  R_AARCH64_CALL26	driver_unregister
   2621c: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		000000000002621c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_device
   26220: 91000000     	add	x0, x0, #0x0
		0000000000026220:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_device
   26224: 94000000     	bl	0x26224 <syna_hw_interface_exit+0x20>
		0000000000026224:  R_AARCH64_CALL26	platform_device_unregister
   26228: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2622c: d50323bf     	autiasp
   26230: d65f03c0     	ret
