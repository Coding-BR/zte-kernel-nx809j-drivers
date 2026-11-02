
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003c9c <aw22xxx_multi_breath_pattern_show>:
    3c9c: d503233f     	paciasp
    3ca0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3ca4: 910003fd     	mov	x29, sp
    3ca8: f9404c08     	ldr	x8, [x0, #0x98]
    3cac: aa0203e0     	mov	x0, x2
    3cb0: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003cb0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x94e
    3cb4: 91000042     	add	x2, x2, #0x0
		0000000000003cb4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x94e
    3cb8: 52820001     	mov	w1, #0x1000             // =4096
    3cbc: b942f903     	ldr	w3, [x8, #0x2f8]
    3cc0: 94000000     	bl	0x3cc0 <aw22xxx_multi_breath_pattern_show+0x24>
		0000000000003cc0:  R_AARCH64_CALL26	snprintf
    3cc4: 93407c00     	sxtw	x0, w0
    3cc8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3ccc: d50323bf     	autiasp
    3cd0: d65f03c0     	ret
