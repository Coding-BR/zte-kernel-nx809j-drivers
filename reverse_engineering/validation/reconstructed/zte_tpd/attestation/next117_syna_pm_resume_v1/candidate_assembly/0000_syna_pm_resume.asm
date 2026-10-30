
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b438 <syna_pm_resume>:
    b438: d503233f     	paciasp
    b43c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b440: f9000bf3     	str	x19, [sp, #0x10]
    b444: 910003fd     	mov	x29, sp
    b448: f9404c13     	ldr	x19, [x0, #0x98]
    b44c: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0x150>
		000000000000b44c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26c0
    b450: 91000000     	add	x0, x0, #0x0
		000000000000b450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26c0
    b454: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0x150>
		000000000000b454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30b1
    b458: 91000021     	add	x1, x1, #0x0
		000000000000b458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30b1
    b45c: 94000000     	bl	0xb45c <syna_pm_resume+0x24>
		000000000000b45c:  R_AARCH64_CALL26	_printk
    b460: 91156260     	add	x0, x19, #0x558
    b464: 3915e27f     	strb	wzr, [x19, #0x578]
    b468: 94000000     	bl	0xb468 <syna_pm_resume+0x30>
		000000000000b468:  R_AARCH64_CALL26	complete
    b46c: 2a1f03e0     	mov	w0, wzr
    b470: f9400bf3     	ldr	x19, [sp, #0x10]
    b474: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b478: d50323bf     	autiasp
    b47c: d65f03c0     	ret
