
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007ec <aw22xxx_hw_reset>:
     7ec: d503233f     	paciasp
     7f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     7f4: f9000bf3     	str	x19, [sp, #0x10]
     7f8: 910003fd     	mov	x29, sp
     7fc: aa0003f3     	mov	x19, x0
     800: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
     804: 91000000     	add	x0, x0, #0x0
		0000000000000804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
     808: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x170d
     80c: 91000021     	add	x1, x1, #0x0
		000000000000080c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x170d
     810: 94000000     	bl	0x810 <aw22xxx_hw_reset+0x24>
		0000000000000810:  R_AARCH64_CALL26	_printk
     814: b40002d3     	cbz	x19, 0x86c <aw22xxx_hw_reset+0x80>
     818: b942e260     	ldr	w0, [x19, #0x2e0]
     81c: 37f80280     	tbnz	w0, #0x1f, 0x86c <aw22xxx_hw_reset+0x80>
     820: 94000000     	bl	0x820 <aw22xxx_hw_reset+0x34>
		0000000000000820:  R_AARCH64_CALL26	gpio_to_desc
     824: 2a1f03e1     	mov	w1, wzr
     828: 94000000     	bl	0x828 <aw22xxx_hw_reset+0x3c>
		0000000000000828:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
     82c: 52807d00     	mov	w0, #0x3e8              // =1000
     830: 5280bb81     	mov	w1, #0x5dc              // =1500
     834: 52800042     	mov	w2, #0x2                // =2
     838: 94000000     	bl	0x838 <aw22xxx_hw_reset+0x4c>
		0000000000000838:  R_AARCH64_CALL26	usleep_range_state
     83c: b942e260     	ldr	w0, [x19, #0x2e0]
     840: 94000000     	bl	0x840 <aw22xxx_hw_reset+0x54>
		0000000000000840:  R_AARCH64_CALL26	gpio_to_desc
     844: 52800021     	mov	w1, #0x1                // =1
     848: 94000000     	bl	0x848 <aw22xxx_hw_reset+0x5c>
		0000000000000848:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
     84c: 52807d00     	mov	w0, #0x3e8              // =1000
     850: 5280bb81     	mov	w1, #0x5dc              // =1500
     854: 52800042     	mov	w2, #0x2                // =2
     858: 94000000     	bl	0x858 <aw22xxx_hw_reset+0x6c>
		0000000000000858:  R_AARCH64_CALL26	usleep_range_state
     85c: f9400bf3     	ldr	x19, [sp, #0x10]
     860: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     864: d50323bf     	autiasp
     868: d65f03c0     	ret
     86c: f9400660     	ldr	x0, [x19, #0x8]
     870: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c1
     874: 91000021     	add	x1, x1, #0x0
		0000000000000874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c1
     878: 90000002     	adrp	x2, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x170d
     87c: 91000042     	add	x2, x2, #0x0
		000000000000087c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x170d
     880: 94000000     	bl	0x880 <aw22xxx_hw_reset+0x94>
		0000000000000880:  R_AARCH64_CALL26	_dev_err
     884: 17fffff6     	b	0x85c <aw22xxx_hw_reset+0x70>
