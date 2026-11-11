
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002094 <gf_hw_reset>:
    2094: d503233f     	paciasp
    2098: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    209c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    20a0: 910003fd     	mov	x29, sp
    20a4: b50000a0     	cbnz	x0, 0x20b8 <gf_hw_reset+0x24>
    20a8: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x10>
		00000000000020a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9f
    20ac: 91000000     	add	x0, x0, #0x0
		00000000000020ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9f
    20b0: 12800253     	mov	w19, #-0x13             // =-19
    20b4: 14000020     	b	0x2134 <gf_hw_reset+0xa0>
    20b8: b9404008     	ldr	w8, [x0, #0x40]
    20bc: 37f80368     	tbnz	w8, #0x1f, 0x2128 <gf_hw_reset+0x94>
    20c0: 90000008     	adrp	x8, 0x2000 <gf_power_off+0x10>
		00000000000020c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa71
    20c4: 91000108     	add	x8, x8, #0x0
		00000000000020c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa71
    20c8: aa0003f4     	mov	x20, x0
    20cc: aa0803e0     	mov	x0, x8
    20d0: 2a0103f3     	mov	w19, w1
    20d4: 94000000     	bl	0x20d4 <gf_hw_reset+0x40>
		00000000000020d4:  R_AARCH64_CALL26	_printk
    20d8: b9404280     	ldr	w0, [x20, #0x40]
    20dc: 94000000     	bl	0x20dc <gf_hw_reset+0x48>
		00000000000020dc:  R_AARCH64_CALL26	gpio_to_desc
    20e0: 2a1f03e1     	mov	w1, wzr
    20e4: 94000000     	bl	0x20e4 <gf_hw_reset+0x50>
		00000000000020e4:  R_AARCH64_CALL26	gpiod_set_raw_value
    20e8: 5284e200     	mov	w0, #0x2710             // =10000
    20ec: 5284ee81     	mov	w1, #0x2774             // =10100
    20f0: 52800042     	mov	w2, #0x2                // =2
    20f4: 94000000     	bl	0x20f4 <gf_hw_reset+0x60>
		00000000000020f4:  R_AARCH64_CALL26	usleep_range_state
    20f8: b9404280     	ldr	w0, [x20, #0x40]
    20fc: 94000000     	bl	0x20fc <gf_hw_reset+0x68>
		00000000000020fc:  R_AARCH64_CALL26	gpio_to_desc
    2100: 52800021     	mov	w1, #0x1                // =1
    2104: 94000000     	bl	0x2104 <gf_hw_reset+0x70>
		0000000000002104:  R_AARCH64_CALL26	gpiod_set_raw_value
    2108: 34000193     	cbz	w19, 0x2138 <gf_hw_reset+0xa4>
    210c: 2a1303f3     	mov	w19, w19
    2110: 52912b00     	mov	w0, #0x8958             // =35160
    2114: d1000673     	sub	x19, x19, #0x1
    2118: 72a00820     	movk	w0, #0x41, lsl #16
    211c: 94000000     	bl	0x211c <gf_hw_reset+0x88>
		000000000000211c:  R_AARCH64_CALL26	__const_udelay
    2120: b5ffff93     	cbnz	x19, 0x2110 <gf_hw_reset+0x7c>
    2124: 14000005     	b	0x2138 <gf_hw_reset+0xa4>
    2128: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x10>
		0000000000002128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd89
    212c: 91000000     	add	x0, x0, #0x0
		000000000000212c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd89
    2130: 2a1f03f3     	mov	w19, wzr
    2134: 94000000     	bl	0x2134 <gf_hw_reset+0xa0>
		0000000000002134:  R_AARCH64_CALL26	_printk
    2138: 2a1303e0     	mov	w0, w19
    213c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2140: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2144: d50323bf     	autiasp
    2148: d65f03c0     	ret
