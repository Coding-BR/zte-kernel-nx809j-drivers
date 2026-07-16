
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002088 <gf_hw_reset>:
    2088: d503233f     	paciasp
    208c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2090: a9014ff4     	stp	x20, x19, [sp, #0x10]
    2094: 910003fd     	mov	x29, sp
    2098: b50000a0     	cbnz	x0, 0x20ac <gf_hw_reset+0x24>
    209c: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x1c>
		000000000000209c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec8
    20a0: 91000000     	add	x0, x0, #0x0
		00000000000020a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec8
    20a4: 12800253     	mov	w19, #-0x13             // =-19
    20a8: 14000020     	b	0x2128 <gf_hw_reset+0xa0>
    20ac: b9404008     	ldr	w8, [x0, #0x40]
    20b0: 37f80368     	tbnz	w8, #0x1f, 0x211c <gf_hw_reset+0x94>
    20b4: 90000008     	adrp	x8, 0x2000 <gf_power_off+0x1c>
		00000000000020b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93d
    20b8: 91000108     	add	x8, x8, #0x0
		00000000000020b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93d
    20bc: aa0003f4     	mov	x20, x0
    20c0: aa0803e0     	mov	x0, x8
    20c4: 2a0103f3     	mov	w19, w1
    20c8: 94000000     	bl	0x20c8 <gf_hw_reset+0x40>
		00000000000020c8:  R_AARCH64_CALL26	_printk
    20cc: b9404280     	ldr	w0, [x20, #0x40]
    20d0: 94000000     	bl	0x20d0 <gf_hw_reset+0x48>
		00000000000020d0:  R_AARCH64_CALL26	gpio_to_desc
    20d4: 2a1f03e1     	mov	w1, wzr
    20d8: 94000000     	bl	0x20d8 <gf_hw_reset+0x50>
		00000000000020d8:  R_AARCH64_CALL26	gpiod_set_raw_value
    20dc: 5284e200     	mov	w0, #0x2710             // =10000
    20e0: 5284ee81     	mov	w1, #0x2774             // =10100
    20e4: 52800042     	mov	w2, #0x2                // =2
    20e8: 94000000     	bl	0x20e8 <gf_hw_reset+0x60>
		00000000000020e8:  R_AARCH64_CALL26	usleep_range_state
    20ec: b9404280     	ldr	w0, [x20, #0x40]
    20f0: 94000000     	bl	0x20f0 <gf_hw_reset+0x68>
		00000000000020f0:  R_AARCH64_CALL26	gpio_to_desc
    20f4: 52800021     	mov	w1, #0x1                // =1
    20f8: 94000000     	bl	0x20f8 <gf_hw_reset+0x70>
		00000000000020f8:  R_AARCH64_CALL26	gpiod_set_raw_value
    20fc: 34000193     	cbz	w19, 0x212c <gf_hw_reset+0xa4>
    2100: 2a1303f3     	mov	w19, w19
    2104: 52912b00     	mov	w0, #0x8958             // =35160
    2108: d1000673     	sub	x19, x19, #0x1
    210c: 72a00820     	movk	w0, #0x41, lsl #16
    2110: 94000000     	bl	0x2110 <gf_hw_reset+0x88>
		0000000000002110:  R_AARCH64_CALL26	__const_udelay
    2114: b5ffff93     	cbnz	x19, 0x2104 <gf_hw_reset+0x7c>
    2118: 14000005     	b	0x212c <gf_hw_reset+0xa4>
    211c: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x1c>
		000000000000211c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc73
    2120: 91000000     	add	x0, x0, #0x0
		0000000000002120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc73
    2124: 2a1f03f3     	mov	w19, wzr
    2128: 94000000     	bl	0x2128 <gf_hw_reset+0xa0>
		0000000000002128:  R_AARCH64_CALL26	_printk
    212c: 2a1303e0     	mov	w0, w19
    2130: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2134: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2138: d50323bf     	autiasp
    213c: d65f03c0     	ret
