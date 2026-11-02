
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003414 <aw22xxx_task0_show>:
    3414: d503233f     	paciasp
    3418: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    341c: 910003fd     	mov	x29, sp
    3420: f9404c08     	ldr	x8, [x0, #0x98]
    3424: aa0203e0     	mov	x0, x2
    3428: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003428:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc26
    342c: 91000042     	add	x2, x2, #0x0
		000000000000342c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc26
    3430: 52820001     	mov	w1, #0x1000             // =4096
    3434: 394bb103     	ldrb	w3, [x8, #0x2ec]
    3438: 94000000     	bl	0x3438 <aw22xxx_task0_show+0x24>
		0000000000003438:  R_AARCH64_CALL26	snprintf
    343c: 93407c00     	sxtw	x0, w0
    3440: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3444: d50323bf     	autiasp
    3448: d65f03c0     	ret
