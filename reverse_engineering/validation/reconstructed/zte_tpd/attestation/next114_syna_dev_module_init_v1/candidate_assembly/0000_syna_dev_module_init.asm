
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008984 <syna_dev_module_init>:
    8984: d503233f     	paciasp
    8988: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    898c: 910003fd     	mov	x29, sp
    8990: 94000000     	bl	0x8990 <syna_dev_module_init+0xc>
		0000000000008990:  R_AARCH64_CALL26	syna_hw_interface_init
    8994: 37f80100     	tbnz	w0, #0x1f, 0x89b4 <syna_dev_module_init+0x30>
    8998: 52801900     	mov	w0, #0xc8               // =200
    899c: 94000000     	bl	0x899c <syna_dev_module_init+0x18>
		000000000000899c:  R_AARCH64_CALL26	msleep
    89a0: 90000000     	adrp	x0, 0x8000 <syna_dev_connect+0x3c8>
		00000000000089a0:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_driver
    89a4: 91000000     	add	x0, x0, #0x0
		00000000000089a4:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_driver
    89a8: 90000001     	adrp	x1, 0x8000 <syna_dev_connect+0x3c8>
		00000000000089a8:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    89ac: 91000021     	add	x1, x1, #0x0
		00000000000089ac:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    89b0: 94000000     	bl	0x89b0 <syna_dev_module_init+0x2c>
		00000000000089b0:  R_AARCH64_CALL26	__platform_driver_register
    89b4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    89b8: d50323bf     	autiasp
    89bc: d65f03c0     	ret
