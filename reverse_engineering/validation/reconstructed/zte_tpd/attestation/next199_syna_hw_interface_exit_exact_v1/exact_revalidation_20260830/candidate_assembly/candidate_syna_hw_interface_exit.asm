
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000261a8 <syna_hw_interface_exit>:
   261a8: d503233f     	paciasp
   261ac: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   261b0: 910003fd     	mov	x29, sp
   261b4: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		00000000000261b4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_driver+0x20
   261b8: 91000000     	add	x0, x0, #0x0
		00000000000261b8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_driver+0x20
   261bc: 94000000     	bl	0x261bc <syna_hw_interface_exit+0x14>
		00000000000261bc:  R_AARCH64_CALL26	driver_unregister
   261c0: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		00000000000261c0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_device
   261c4: 91000000     	add	x0, x0, #0x0
		00000000000261c4:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_device
   261c8: 94000000     	bl	0x261c8 <syna_hw_interface_exit+0x20>
		00000000000261c8:  R_AARCH64_CALL26	platform_device_unregister
   261cc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   261d0: d50323bf     	autiasp
   261d4: d65f03c0     	ret
