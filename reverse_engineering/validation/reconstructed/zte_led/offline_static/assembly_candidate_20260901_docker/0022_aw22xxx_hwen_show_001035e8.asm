
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000257c <aw22xxx_hwen_show>:
    257c: d503233f     	paciasp
    2580: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2584: f9000bf3     	str	x19, [sp, #0x10]
    2588: 910003fd     	mov	x29, sp
    258c: f9404c08     	ldr	x8, [x0, #0x98]
    2590: aa0203f3     	mov	x19, x2
    2594: b942d100     	ldr	w0, [x8, #0x2d0]
    2598: 94000000     	bl	0x2598 <aw22xxx_hwen_show+0x1c>
		0000000000002598:  R_AARCH64_CALL26	gpio_to_desc
    259c: 94000000     	bl	0x259c <aw22xxx_hwen_show+0x20>
		000000000000259c:  R_AARCH64_CALL26	gpiod_get_raw_value
    25a0: 2a0003e3     	mov	w3, w0
    25a4: 90000002     	adrp	x2, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000025a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175d
    25a8: 91000042     	add	x2, x2, #0x0
		00000000000025a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175d
    25ac: aa1303e0     	mov	x0, x19
    25b0: 52820001     	mov	w1, #0x1000             // =4096
    25b4: 94000000     	bl	0x25b4 <aw22xxx_hwen_show+0x38>
		00000000000025b4:  R_AARCH64_CALL26	snprintf
    25b8: 93407c00     	sxtw	x0, w0
    25bc: f9400bf3     	ldr	x19, [sp, #0x10]
    25c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    25c4: d50323bf     	autiasp
    25c8: d65f03c0     	ret
