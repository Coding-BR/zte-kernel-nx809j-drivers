
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bc08 <richtap_file_open>:
    bc08: d503233f     	paciasp
    bc0c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bc10: f9000bf3     	str	x19, [sp, #0x10]
    bc14: 910003fd     	mov	x29, sp
    bc18: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000bc18:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    bc1c: 91000000     	add	x0, x0, #0x0
		000000000000bc1c:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    bc20: aa0103f3     	mov	x19, x1
    bc24: 94000000     	bl	0xbc24 <richtap_file_open+0x1c>
		000000000000bc24:  R_AARCH64_CALL26	try_module_get
    bc28: 360000c0     	tbz	w0, #0x0, 0xbc40 <richtap_file_open+0x38>
    bc2c: 90000008     	adrp	x8, 0xb000 <audio_work_routine+0xd0>
		000000000000bc2c:  R_AARCH64_ADR_PREL_PG_HI21	g_aw_haptic
    bc30: 2a1f03e0     	mov	w0, wzr
    bc34: f9400108     	ldr	x8, [x8]
		000000000000bc34:  R_AARCH64_LDST64_ABS_LO12_NC	g_aw_haptic
    bc38: f9001268     	str	x8, [x19, #0x20]
    bc3c: 14000002     	b	0xbc44 <richtap_file_open+0x3c>
    bc40: 12800240     	mov	w0, #-0x13              // =-19
    bc44: f9400bf3     	ldr	x19, [sp, #0x10]
    bc48: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    bc4c: d50323bf     	autiasp
    bc50: d65f03c0     	ret
