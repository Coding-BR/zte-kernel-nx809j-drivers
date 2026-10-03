
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000cbc <debug_value_show>:
     cbc: d503233f     	paciasp
     cc0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     cc4: 910003fd     	mov	x29, sp
     cc8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cc8:  R_AARCH64_ADR_PREL_PG_HI21	debug_value
     ccc: aa0203e0     	mov	x0, x2
     cd0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885
     cd4: 91000042     	add	x2, x2, #0x0
		0000000000000cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885
     cd8: b9400103     	ldr	w3, [x8]
		0000000000000cd8:  R_AARCH64_LDST32_ABS_LO12_NC	debug_value
     cdc: 528000a1     	mov	w1, #0x5                // =5
     ce0: 94000000     	bl	0xce0 <debug_value_show+0x24>
		0000000000000ce0:  R_AARCH64_CALL26	snprintf
     ce4: 93407c00     	sxtw	x0, w0
     ce8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     cec: d50323bf     	autiasp
     cf0: d65f03c0     	ret
