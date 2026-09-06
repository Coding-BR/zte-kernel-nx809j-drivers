
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b248 <syna_open>:
    b248: d503233f     	paciasp
    b24c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b250: 910003fd     	mov	x29, sp
    b254: f9401028     	ldr	x8, [x1, #0x20]
    b258: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0xc8>
		000000000000b258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c35
    b25c: 91000000     	add	x0, x0, #0x0
		000000000000b25c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c35
    b260: d1128108     	sub	x8, x8, #0x4a0
    b264: f9001028     	str	x8, [x1, #0x20]
    b268: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0xc8>
		000000000000b268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b6a
    b26c: 91000021     	add	x1, x1, #0x0
		000000000000b26c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b6a
    b270: 94000000     	bl	0xb270 <syna_open+0x28>
		000000000000b270:  R_AARCH64_CALL26	_printk
    b274: 2a1f03e0     	mov	w0, wzr
    b278: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b27c: d50323bf     	autiasp
    b280: d65f03c0     	ret
