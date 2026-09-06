
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002d48 <aw22xxx_hwen_show>:
    2d48: d503233f     	paciasp
    2d4c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2d50: f9000bf3     	str	x19, [sp, #0x10]
    2d54: 910003fd     	mov	x29, sp
    2d58: f9404c08     	ldr	x8, [x0, #0x98]
    2d5c: aa0203f3     	mov	x19, x2
    2d60: b942d100     	ldr	w0, [x8, #0x2d0]
    2d64: 94000000     	bl	0x2d64 <aw22xxx_hwen_show+0x1c>
		0000000000002d64:  R_AARCH64_CALL26	gpio_to_desc
    2d68: 94000000     	bl	0x2d68 <aw22xxx_hwen_show+0x20>
		0000000000002d68:  R_AARCH64_CALL26	gpiod_get_raw_value
    2d6c: 2a0003e3     	mov	w3, w0
    2d70: 90000002     	adrp	x2, 0x2000 <aw22xxx_irq+0x20>
		0000000000002d70:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x15e7
    2d74: 91000042     	add	x2, x2, #0x0
		0000000000002d74:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x15e7
    2d78: aa1303e0     	mov	x0, x19
    2d7c: 52820001     	mov	w1, #0x1000             // =4096
    2d80: 94000000     	bl	0x2d80 <aw22xxx_hwen_show+0x38>
		0000000000002d80:  R_AARCH64_CALL26	snprintf
    2d84: 93407c00     	sxtw	x0, w0
    2d88: f9400bf3     	ldr	x19, [sp, #0x10]
    2d8c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2d90: d50323bf     	autiasp
    2d94: d65f03c0     	ret
