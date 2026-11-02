
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008b30 <f0_save_show>:
    8b30: d503233f     	paciasp
    8b34: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    8b38: 910003fd     	mov	x29, sp
    8b3c: f9404c08     	ldr	x8, [x0, #0x98]
    8b40: aa0203e0     	mov	x0, x2
    8b44: 90000002     	adrp	x2, 0x8000 <reg_show+0x10>
		0000000000008b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9eb
    8b48: 91000042     	add	x2, x2, #0x0
		0000000000008b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9eb
    8b4c: 52820001     	mov	w1, #0x1000             // =4096
    8b50: b85e0103     	ldur	w3, [x8, #-0x20]
    8b54: 94000000     	bl	0x8b54 <f0_save_show+0x24>
		0000000000008b54:  R_AARCH64_CALL26	snprintf
    8b58: 93407c00     	sxtw	x0, w0
    8b5c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    8b60: d50323bf     	autiasp
    8b64: d65f03c0     	ret
