
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bc58 <richtap_file_release>:
    bc58: d503233f     	paciasp
    bc5c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    bc60: 910003fd     	mov	x29, sp
    bc64: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000bc64:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    bc68: 91000000     	add	x0, x0, #0x0
		000000000000bc68:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    bc6c: 94000000     	bl	0xbc6c <richtap_file_release+0x14>
		000000000000bc6c:  R_AARCH64_CALL26	module_put
    bc70: 2a1f03e0     	mov	w0, wzr
    bc74: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    bc78: d50323bf     	autiasp
    bc7c: d65f03c0     	ret
