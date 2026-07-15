
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e20c <syna_pm_suspend>:
    e20c: d503233f     	paciasp
    e210: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e214: f9000bf3     	str	x19, [sp, #0x10]
    e218: 910003fd     	mov	x29, sp
    e21c: f9404c13     	ldr	x19, [x0, #0x98]
    e220: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d0
    e224: 91000000     	add	x0, x0, #0x0
		000000000000e224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d0
    e228: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbadd
    e22c: 91000021     	add	x1, x1, #0x0
		000000000000e22c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbadd
    e230: 94000000     	bl	0xe230 <syna_pm_suspend+0x24>
		000000000000e230:  R_AARCH64_CALL26	_printk
    e234: 52800028     	mov	w8, #0x1                // =1
    e238: 2a1f03e0     	mov	w0, wzr
    e23c: 3915e268     	strb	w8, [x19, #0x578]
    e240: b9055a7f     	str	wzr, [x19, #0x558]
    e244: f9400bf3     	ldr	x19, [sp, #0x10]
    e248: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e24c: d50323bf     	autiasp
    e250: d65f03c0     	ret
