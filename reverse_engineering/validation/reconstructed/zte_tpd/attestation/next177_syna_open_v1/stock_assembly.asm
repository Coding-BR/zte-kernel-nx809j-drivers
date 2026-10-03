
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e018 <syna_open>:
    e018: d503233f     	paciasp
    e01c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    e020: 910003fd     	mov	x29, sp
    e024: f9401028     	ldr	x8, [x1, #0x20]
    e028: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae57
    e02c: 91000000     	add	x0, x0, #0x0
		000000000000e02c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae57
    e030: d1128108     	sub	x8, x8, #0x4a0
    e034: f9001028     	str	x8, [x1, #0x20]
    e038: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86e1
    e03c: 91000021     	add	x1, x1, #0x0
		000000000000e03c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86e1
    e040: 94000000     	bl	0xe040 <syna_open+0x28>
		000000000000e040:  R_AARCH64_CALL26	_printk
    e044: 2a1f03e0     	mov	w0, wzr
    e048: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    e04c: d50323bf     	autiasp
    e050: d65f03c0     	ret
