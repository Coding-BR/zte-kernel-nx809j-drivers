
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000024b8 <aw22xxx_effect_show>:
    24b8: d503233f     	paciasp
    24bc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    24c0: 910003fd     	mov	x29, sp
    24c4: f9404c08     	ldr	x8, [x0, #0x98]
    24c8: aa0203e0     	mov	x0, x2
    24cc: 90000002     	adrp	x2, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000024cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe45
    24d0: 91000042     	add	x2, x2, #0x0
		00000000000024d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe45
    24d4: 52820001     	mov	w1, #0x1000             // =4096
    24d8: b942f103     	ldr	w3, [x8, #0x2f0]
    24dc: 94000000     	bl	0x24dc <aw22xxx_effect_show+0x24>
		00000000000024dc:  R_AARCH64_CALL26	snprintf
    24e0: 93407c00     	sxtw	x0, w0
    24e4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    24e8: d50323bf     	autiasp
    24ec: d65f03c0     	ret
