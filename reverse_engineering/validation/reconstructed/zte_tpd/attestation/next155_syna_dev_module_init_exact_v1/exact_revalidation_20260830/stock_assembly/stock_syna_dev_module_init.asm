
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b744 <syna_dev_module_init>:
    b744: d503233f     	paciasp
    b748: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b74c: 910003fd     	mov	x29, sp
    b750: 94000000     	bl	0xb750 <syna_dev_module_init+0xc>
		000000000000b750:  R_AARCH64_CALL26	syna_hw_interface_init
    b754: 37f80100     	tbnz	w0, #0x1f, 0xb774 <syna_dev_module_init+0x30>
    b758: 52801900     	mov	w0, #0xc8               // =200
    b75c: 94000000     	bl	0xb75c <syna_dev_module_init+0x18>
		000000000000b75c:  R_AARCH64_CALL26	msleep
    b760: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b760:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x270
    b764: 91000000     	add	x0, x0, #0x0
		000000000000b764:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x270
    b768: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b768:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    b76c: 91000021     	add	x1, x1, #0x0
		000000000000b76c:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    b770: 94000000     	bl	0xb770 <syna_dev_module_init+0x2c>
		000000000000b770:  R_AARCH64_CALL26	__platform_driver_register
    b774: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b778: d50323bf     	autiasp
    b77c: d65f03c0     	ret
