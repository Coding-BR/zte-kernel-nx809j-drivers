
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000087c4 <syna_dev_module_exit>:
    87c4: d503233f     	paciasp
    87c8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    87cc: 910003fd     	mov	x29, sp
    87d0: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		00000000000087d0:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_driver
    87d4: 91000000     	add	x0, x0, #0x0
		00000000000087d4:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_driver
    87d8: 94000000     	bl	0x87d8 <syna_dev_module_exit+0x14>
		00000000000087d8:  R_AARCH64_CALL26	platform_driver_unregister
    87dc: 94000000     	bl	0x87dc <syna_dev_module_exit+0x18>
		00000000000087dc:  R_AARCH64_CALL26	syna_hw_interface_exit
    87e0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    87e4: d50323bf     	autiasp
    87e8: d65f03c0     	ret
