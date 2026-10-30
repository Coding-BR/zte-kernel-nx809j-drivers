
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fa8 <aw_shutdown>:
     fa8: d503233f     	paciasp
     fac: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     fb0: 910003fd     	mov	x29, sp
     fb4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fb4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x58e
     fb8: 91000000     	add	x0, x0, #0x0
		0000000000000fb8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x58e
     fbc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fbc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     fc0: 91000021     	add	x1, x1, #0x0
		0000000000000fc0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     fc4: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000fc4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x47c
     fc8: 91000063     	add	x3, x3, #0x0
		0000000000000fc8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x47c
     fcc: 52809222     	mov	w2, #0x491              // =1169
     fd0: 94000000     	bl	0xfd0 <aw_shutdown+0x28>
		0000000000000fd0:  R_AARCH64_CALL26	_printk
     fd4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     fd8: d50323bf     	autiasp
     fdc: d65f03c0     	ret
