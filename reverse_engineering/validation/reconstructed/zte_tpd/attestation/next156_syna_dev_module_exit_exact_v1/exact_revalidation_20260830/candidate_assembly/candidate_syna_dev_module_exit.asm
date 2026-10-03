
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002617c <syna_dev_module_exit>:
   2617c: d503233f     	paciasp
   26180: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26184: 910003fd     	mov	x29, sp
   26188: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026188:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_driver
   2618c: 91000000     	add	x0, x0, #0x0
		000000000002618c:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_driver
   26190: 94000000     	bl	0x26190 <syna_dev_module_exit+0x14>
		0000000000026190:  R_AARCH64_CALL26	platform_driver_unregister
   26194: 94000000     	bl	0x26194 <syna_dev_module_exit+0x18>
		0000000000026194:  R_AARCH64_CALL26	syna_hw_interface_exit
   26198: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2619c: d50323bf     	autiasp
   261a0: d65f03c0     	ret
