
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a80 <richtap_file_open>:
     a80: d503233f     	paciasp
     a84: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a88: f9000bf3     	str	x19, [sp, #0x10]
     a8c: 910003fd     	mov	x29, sp
     a90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a90:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
     a94: 91000000     	add	x0, x0, #0x0
		0000000000000a94:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
     a98: aa0103f3     	mov	x19, x1
     a9c: 94000000     	bl	0xa9c <richtap_file_open+0x1c>
		0000000000000a9c:  R_AARCH64_CALL26	try_module_get
     aa0: 360000c0     	tbz	w0, #0x0, 0xab8 <richtap_file_open+0x38>
     aa4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000aa4:  R_AARCH64_ADR_PREL_PG_HI21	g_aw_haptic
     aa8: 2a1f03e0     	mov	w0, wzr
     aac: f9400108     	ldr	x8, [x8]
		0000000000000aac:  R_AARCH64_LDST64_ABS_LO12_NC	g_aw_haptic
     ab0: f9001268     	str	x8, [x19, #0x20]
     ab4: 14000002     	b	0xabc <richtap_file_open+0x3c>
     ab8: 12800240     	mov	w0, #-0x13              // =-19
     abc: f9400bf3     	ldr	x19, [sp, #0x10]
     ac0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     ac4: d50323bf     	autiasp
     ac8: d65f03c0     	ret
