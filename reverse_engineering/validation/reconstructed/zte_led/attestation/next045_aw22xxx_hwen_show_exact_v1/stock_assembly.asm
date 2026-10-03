
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002108 <aw22xxx_hwen_show>:
    2108: d503233f     	paciasp
    210c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2110: f9000bf3     	str	x19, [sp, #0x10]
    2114: 910003fd     	mov	x29, sp
    2118: f9404c08     	ldr	x8, [x0, #0x98]
    211c: aa0203f3     	mov	x19, x2
    2120: b942d100     	ldr	w0, [x8, #0x2d0]
    2124: 94000000     	bl	0x2124 <aw22xxx_hwen_show+0x1c>
		0000000000002124:  R_AARCH64_CALL26	gpio_to_desc
    2128: 94000000     	bl	0x2128 <aw22xxx_hwen_show+0x20>
		0000000000002128:  R_AARCH64_CALL26	gpiod_get_raw_value
    212c: 2a0003e3     	mov	w3, w0
    2130: 90000002     	adrp	x2, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e7
    2134: 91000042     	add	x2, x2, #0x0
		0000000000002134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e7
    2138: aa1303e0     	mov	x0, x19
    213c: 52820001     	mov	w1, #0x1000             // =4096
    2140: 94000000     	bl	0x2140 <aw22xxx_hwen_show+0x38>
		0000000000002140:  R_AARCH64_CALL26	snprintf
    2144: 93407c00     	sxtw	x0, w0
    2148: f9400bf3     	ldr	x19, [sp, #0x10]
    214c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2150: d50323bf     	autiasp
    2154: d65f03c0     	ret
