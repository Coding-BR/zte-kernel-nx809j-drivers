
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003cd8 <aw22xxx_multi_breath_pattern_show>:
    3cd8: d503233f     	paciasp
    3cdc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3ce0: 910003fd     	mov	x29, sp
    3ce4: f9404c08     	ldr	x8, [x0, #0x98]
    3ce8: aa0203e0     	mov	x0, x2
    3cec: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_show+0x94>
		0000000000003cec:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x94e
    3cf0: 91000042     	add	x2, x2, #0x0
		0000000000003cf0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x94e
    3cf4: 52820001     	mov	w1, #0x1000             // =4096
    3cf8: b942f903     	ldr	w3, [x8, #0x2f8]
    3cfc: 94000000     	bl	0x3cfc <aw22xxx_multi_breath_pattern_show+0x24>
		0000000000003cfc:  R_AARCH64_CALL26	snprintf
    3d00: 93407c00     	sxtw	x0, w0
    3d04: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3d08: d50323bf     	autiasp
    3d0c: d65f03c0     	ret
