
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000768 <aw86320_timecheck_work_handle>:
     768: d503233f     	paciasp
     76c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     770: f9000bf3     	str	x19, [sp, #0x10]
     774: 910003fd     	mov	x29, sp
     778: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000778:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     77c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125
     780: 91000000     	add	x0, x0, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125
     784: f9400113     	ldr	x19, [x8]
		0000000000000784:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     788: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     78c: 91000021     	add	x1, x1, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     790: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f6
     794: 91000063     	add	x3, x3, #0x0
		0000000000000794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f6
     798: 52804042     	mov	w2, #0x202              // =514
     79c: b900127f     	str	wzr, [x19, #0x10]
     7a0: 94000000     	bl	0x7a0 <aw86320_timecheck_work_handle+0x38>
		00000000000007a0:  R_AARCH64_CALL26	_printk
     7a4: aa1303e0     	mov	x0, x19
     7a8: 528004a1     	mov	w1, #0x25               // =37
     7ac: 2a1f03e2     	mov	w2, wzr
     7b0: 97ffff23     	bl	0x43c <haptic_i2c_write>
     7b4: f9400bf3     	ldr	x19, [sp, #0x10]
     7b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     7bc: d50323bf     	autiasp
     7c0: d65f03c0     	ret
