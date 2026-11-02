
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000261d8 <syna_dev_module_exit>:
   261d8: d503233f     	paciasp
   261dc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   261e0: 910003fd     	mov	x29, sp
   261e4: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		00000000000261e4:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_driver
   261e8: 91000000     	add	x0, x0, #0x0
		00000000000261e8:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_driver
   261ec: 94000000     	bl	0x261ec <syna_dev_module_exit+0x14>
		00000000000261ec:  R_AARCH64_CALL26	platform_driver_unregister
   261f0: 94000000     	bl	0x261f0 <syna_dev_module_exit+0x18>
		00000000000261f0:  R_AARCH64_CALL26	syna_hw_interface_exit
   261f4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   261f8: d50323bf     	autiasp
   261fc: d65f03c0     	ret
