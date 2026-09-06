
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000032b0 <aw22xxx_task0_show>:
    32b0: d503233f     	paciasp
    32b4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    32b8: 910003fd     	mov	x29, sp
    32bc: f9404c08     	ldr	x8, [x0, #0x98]
    32c0: aa0203e0     	mov	x0, x2
    32c4: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_store+0x48>
		00000000000032c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc26
    32c8: 91000042     	add	x2, x2, #0x0
		00000000000032c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc26
    32cc: 52820001     	mov	w1, #0x1000             // =4096
    32d0: 394bb103     	ldrb	w3, [x8, #0x2ec]
    32d4: 94000000     	bl	0x32d4 <aw22xxx_task0_show+0x24>
		00000000000032d4:  R_AARCH64_CALL26	snprintf
    32d8: 93407c00     	sxtw	x0, w0
    32dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    32e0: d50323bf     	autiasp
    32e4: d65f03c0     	ret
