
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004758 <aw22xxx_effect_show>:
    4758: d503233f     	paciasp
    475c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4760: 910003fd     	mov	x29, sp
    4764: f9404c08     	ldr	x8, [x0, #0x98]
    4768: aa0203e0     	mov	x0, x2
    476c: 90000002     	adrp	x2, 0x4000 <aw22xxx_effect_store+0xd4>
		000000000000476c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe45
    4770: 91000042     	add	x2, x2, #0x0
		0000000000004770:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe45
    4774: 52820001     	mov	w1, #0x1000             // =4096
    4778: b942f103     	ldr	w3, [x8, #0x2f0]
    477c: 94000000     	bl	0x477c <aw22xxx_effect_show+0x24>
		000000000000477c:  R_AARCH64_CALL26	snprintf
    4780: 93407c00     	sxtw	x0, w0
    4784: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4788: d50323bf     	autiasp
    478c: d65f03c0     	ret
