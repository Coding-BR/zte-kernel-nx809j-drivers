
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b484 <syna_pm_suspend>:
    b484: d503233f     	paciasp
    b488: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b48c: f9000bf3     	str	x19, [sp, #0x10]
    b490: 910003fd     	mov	x29, sp
    b494: f9404c13     	ldr	x19, [x0, #0x98]
    b498: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0x150>
		000000000000b498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5d
    b49c: 91000000     	add	x0, x0, #0x0
		000000000000b49c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5d
    b4a0: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0x150>
		000000000000b4a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x519e
    b4a4: 91000021     	add	x1, x1, #0x0
		000000000000b4a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x519e
    b4a8: 94000000     	bl	0xb4a8 <syna_pm_suspend+0x24>
		000000000000b4a8:  R_AARCH64_CALL26	_printk
    b4ac: 52800028     	mov	w8, #0x1                // =1
    b4b0: 2a1f03e0     	mov	w0, wzr
    b4b4: 3915e268     	strb	w8, [x19, #0x578]
    b4b8: b9055a7f     	str	wzr, [x19, #0x558]
    b4bc: f9400bf3     	ldr	x19, [sp, #0x10]
    b4c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b4c4: d50323bf     	autiasp
    b4c8: d65f03c0     	ret
