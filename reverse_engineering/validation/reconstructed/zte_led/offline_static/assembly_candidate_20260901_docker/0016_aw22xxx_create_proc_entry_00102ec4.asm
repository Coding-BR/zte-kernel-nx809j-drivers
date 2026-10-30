
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013bc <aw22xxx_create_proc_entry>:
    13bc: d503233f     	paciasp
    13c0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    13c4: 910003fd     	mov	x29, sp
    13c8: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000013c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    13cc: 91000000     	add	x0, x0, #0x0
		00000000000013cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    13d0: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000013d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb3
    13d4: 91000021     	add	x1, x1, #0x0
		00000000000013d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb3
    13d8: 94000000     	bl	0x13d8 <aw22xxx_create_proc_entry+0x1c>
		00000000000013d8:  R_AARCH64_CALL26	_printk
    13dc: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000013dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c6
    13e0: 91000000     	add	x0, x0, #0x0
		00000000000013e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c6
    13e4: 90000003     	adrp	x3, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000013e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x370
    13e8: 91000063     	add	x3, x3, #0x0
		00000000000013e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x370
    13ec: 52802481     	mov	w1, #0x124              // =292
    13f0: aa1f03e2     	mov	x2, xzr
    13f4: 94000000     	bl	0x13f4 <aw22xxx_create_proc_entry+0x38>
		00000000000013f4:  R_AARCH64_CALL26	proc_create
    13f8: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000013f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe6a
    13fc: 91000108     	add	x8, x8, #0x0
		00000000000013fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe6a
    1400: f100001f     	cmp	x0, #0x0
    1404: 90000009     	adrp	x9, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb
    1408: 91000129     	add	x9, x9, #0x0
		0000000000001408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb
    140c: 9a880120     	csel	x0, x9, x8, eq
    1410: 94000000     	bl	0x1410 <aw22xxx_create_proc_entry+0x54>
		0000000000001410:  R_AARCH64_CALL26	_printk
    1414: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1418: d50323bf     	autiasp
    141c: d65f03c0     	ret
