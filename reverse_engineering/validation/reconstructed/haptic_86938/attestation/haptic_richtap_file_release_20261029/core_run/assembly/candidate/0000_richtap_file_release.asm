
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a54 <richtap_file_release>:
     a54: d503233f     	paciasp
     a58: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     a5c: 910003fd     	mov	x29, sp
     a60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a60:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
     a64: 91000000     	add	x0, x0, #0x0
		0000000000000a64:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
     a68: 94000000     	bl	0xa68 <richtap_file_release+0x14>
		0000000000000a68:  R_AARCH64_CALL26	module_put
     a6c: 2a1f03e0     	mov	w0, wzr
     a70: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     a74: d50323bf     	autiasp
     a78: d65f03c0     	ret
