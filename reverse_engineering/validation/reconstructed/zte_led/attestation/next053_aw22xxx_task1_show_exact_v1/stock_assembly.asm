
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000033c4 <aw22xxx_task1_show>:
    33c4: d503233f     	paciasp
    33c8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    33cc: 910003fd     	mov	x29, sp
    33d0: f9404c08     	ldr	x8, [x0, #0x98]
    33d4: aa0203e0     	mov	x0, x2
    33d8: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_store+0x48>
		00000000000033d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86b
    33dc: 91000042     	add	x2, x2, #0x0
		00000000000033dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86b
    33e0: 52820001     	mov	w1, #0x1000             // =4096
    33e4: 394bb503     	ldrb	w3, [x8, #0x2ed]
    33e8: 94000000     	bl	0x33e8 <aw22xxx_task1_show+0x24>
		00000000000033e8:  R_AARCH64_CALL26	snprintf
    33ec: 93407c00     	sxtw	x0, w0
    33f0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    33f4: d50323bf     	autiasp
    33f8: d65f03c0     	ret
