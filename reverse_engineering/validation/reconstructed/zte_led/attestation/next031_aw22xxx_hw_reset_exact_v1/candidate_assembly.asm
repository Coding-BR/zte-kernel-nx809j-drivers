
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a28 <aw22xxx_hw_reset>:
    1a28: d503233f     	paciasp
    1a2c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1a30: f9000bf3     	str	x19, [sp, #0x10]
    1a34: 910003fd     	mov	x29, sp
    1a38: aa0003f3     	mov	x19, x0
    1a3c: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001a3c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    1a40: 91000000     	add	x0, x0, #0x0
		0000000000001a40:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    1a44: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001a44:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x15d6
    1a48: 91000021     	add	x1, x1, #0x0
		0000000000001a48:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x15d6
    1a4c: 94000000     	bl	0x1a4c <aw22xxx_hw_reset+0x24>
		0000000000001a4c:  R_AARCH64_CALL26	_printk
    1a50: b40002d3     	cbz	x19, 0x1aa8 <aw22xxx_hw_reset+0x80>
    1a54: b942e260     	ldr	w0, [x19, #0x2e0]
    1a58: 37f80280     	tbnz	w0, #0x1f, 0x1aa8 <aw22xxx_hw_reset+0x80>
    1a5c: 94000000     	bl	0x1a5c <aw22xxx_hw_reset+0x34>
		0000000000001a5c:  R_AARCH64_CALL26	gpio_to_desc
    1a60: 2a1f03e1     	mov	w1, wzr
    1a64: 94000000     	bl	0x1a64 <aw22xxx_hw_reset+0x3c>
		0000000000001a64:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    1a68: 52807d00     	mov	w0, #0x3e8              // =1000
    1a6c: 5280bb81     	mov	w1, #0x5dc              // =1500
    1a70: 52800042     	mov	w2, #0x2                // =2
    1a74: 94000000     	bl	0x1a74 <aw22xxx_hw_reset+0x4c>
		0000000000001a74:  R_AARCH64_CALL26	usleep_range_state
    1a78: b942e260     	ldr	w0, [x19, #0x2e0]
    1a7c: 94000000     	bl	0x1a7c <aw22xxx_hw_reset+0x54>
		0000000000001a7c:  R_AARCH64_CALL26	gpio_to_desc
    1a80: 52800021     	mov	w1, #0x1                // =1
    1a84: 94000000     	bl	0x1a84 <aw22xxx_hw_reset+0x5c>
		0000000000001a84:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    1a88: 52807d00     	mov	w0, #0x3e8              // =1000
    1a8c: 5280bb81     	mov	w1, #0x5dc              // =1500
    1a90: 52800042     	mov	w2, #0x2                // =2
    1a94: 94000000     	bl	0x1a94 <aw22xxx_hw_reset+0x6c>
		0000000000001a94:  R_AARCH64_CALL26	usleep_range_state
    1a98: f9400bf3     	ldr	x19, [sp, #0x10]
    1a9c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1aa0: d50323bf     	autiasp
    1aa4: d65f03c0     	ret
    1aa8: f9400660     	ldr	x0, [x19, #0x8]
    1aac: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001aac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x833
    1ab0: 91000021     	add	x1, x1, #0x0
		0000000000001ab0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x833
    1ab4: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001ab4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x15d6
    1ab8: 91000042     	add	x2, x2, #0x0
		0000000000001ab8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x15d6
    1abc: 94000000     	bl	0x1abc <aw22xxx_hw_reset+0x94>
		0000000000001abc:  R_AARCH64_CALL26	_dev_err
    1ac0: 17fffff6     	b	0x1a98 <aw22xxx_hw_reset+0x70>
