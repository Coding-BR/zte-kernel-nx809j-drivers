
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e058 <syna_release>:
    e058: d503233f     	paciasp
    e05c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    e060: 910003fd     	mov	x29, sp
    e064: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x915f
    e068: 91000000     	add	x0, x0, #0x0
		000000000000e068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x915f
    e06c: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e06c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7be
    e070: 91000021     	add	x1, x1, #0x0
		000000000000e070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7be
    e074: 94000000     	bl	0xe074 <syna_release+0x1c>
		000000000000e074:  R_AARCH64_CALL26	_printk
    e078: 2a1f03e0     	mov	w0, wzr
    e07c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    e080: d50323bf     	autiasp
    e084: d65f03c0     	ret
