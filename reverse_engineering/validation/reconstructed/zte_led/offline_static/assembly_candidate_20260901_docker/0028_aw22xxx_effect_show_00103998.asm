
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b08 <aw22xxx_effect_show>:
    1b08: d503233f     	paciasp
    1b0c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1b10: 910003fd     	mov	x29, sp
    1b14: f9404c08     	ldr	x8, [x0, #0x98]
    1b18: aa0203e0     	mov	x0, x2
    1b1c: 90000002     	adrp	x2, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfaa
    1b20: 91000042     	add	x2, x2, #0x0
		0000000000001b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfaa
    1b24: 52820001     	mov	w1, #0x1000             // =4096
    1b28: b942f103     	ldr	w3, [x8, #0x2f0]
    1b2c: 94000000     	bl	0x1b2c <aw22xxx_effect_show+0x24>
		0000000000001b2c:  R_AARCH64_CALL26	snprintf
    1b30: 93407c00     	sxtw	x0, w0
    1b34: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1b38: d50323bf     	autiasp
    1b3c: d65f03c0     	ret
