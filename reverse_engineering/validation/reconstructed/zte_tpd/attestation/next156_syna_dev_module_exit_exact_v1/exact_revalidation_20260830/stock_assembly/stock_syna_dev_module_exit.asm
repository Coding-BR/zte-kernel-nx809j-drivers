
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b784 <syna_dev_module_exit>:
    b784: d503233f     	paciasp
    b788: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b78c: 910003fd     	mov	x29, sp
    b790: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b790:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x270
    b794: 91000000     	add	x0, x0, #0x0
		000000000000b794:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x270
    b798: 94000000     	bl	0xb798 <syna_dev_module_exit+0x14>
		000000000000b798:  R_AARCH64_CALL26	platform_driver_unregister
    b79c: 94000000     	bl	0xb79c <syna_dev_module_exit+0x18>
		000000000000b79c:  R_AARCH64_CALL26	syna_hw_interface_exit
    b7a0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b7a4: d50323bf     	autiasp
    b7a8: d65f03c0     	ret
