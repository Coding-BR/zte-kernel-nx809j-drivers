
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001fe4 <gf_power_off>:
    1fe4: d503233f     	paciasp
    1fe8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1fec: f9000bf3     	str	x19, [sp, #0x10]
    1ff0: 910003fd     	mov	x29, sp
    1ff4: b40000a0     	cbz	x0, 0x2008 <gf_power_off+0x24>
    1ff8: f9404c08     	ldr	x8, [x0, #0x98]
    1ffc: aa0003f3     	mov	x19, x0
    2000: b13ffd1f     	cmn	x8, #0xfff
    2004: 540000c3     	b.lo	0x201c <gf_power_off+0x38>
    2008: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x1c>
		0000000000002008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79b
    200c: 91000000     	add	x0, x0, #0x0
		000000000000200c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79b
    2010: 94000000     	bl	0x2010 <gf_power_off+0x2c>
		0000000000002010:  R_AARCH64_CALL26	_printk
    2014: 12800240     	mov	w0, #-0x13              // =-19
    2018: 1400000a     	b	0x2040 <gf_power_off+0x5c>
    201c: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x1c>
		000000000000201c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb94
    2020: 91000000     	add	x0, x0, #0x0
		0000000000002020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb94
    2024: 94000000     	bl	0x2024 <gf_power_off+0x40>
		0000000000002024:  R_AARCH64_CALL26	_printk
    2028: f9404e60     	ldr	x0, [x19, #0x98]
    202c: 94000000     	bl	0x202c <gf_power_off+0x48>
		000000000000202c:  R_AARCH64_CALL26	regulator_is_enabled
    2030: 34000100     	cbz	w0, 0x2050 <gf_power_off+0x6c>
    2034: f9404e60     	ldr	x0, [x19, #0x98]
    2038: 94000000     	bl	0x2038 <gf_power_off+0x54>
		0000000000002038:  R_AARCH64_CALL26	regulator_disable
    203c: 35000140     	cbnz	w0, 0x2064 <gf_power_off+0x80>
    2040: f9400bf3     	ldr	x19, [sp, #0x10]
    2044: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2048: d50323bf     	autiasp
    204c: d65f03c0     	ret
    2050: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x1c>
		0000000000002050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345
    2054: 91000000     	add	x0, x0, #0x0
		0000000000002054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345
    2058: 94000000     	bl	0x2058 <gf_power_off+0x74>
		0000000000002058:  R_AARCH64_CALL26	_printk
    205c: 2a1f03e0     	mov	w0, wzr
    2060: 17fffff8     	b	0x2040 <gf_power_off+0x5c>
    2064: 90000008     	adrp	x8, 0x2000 <gf_power_off+0x1c>
		0000000000002064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf2
    2068: 91000108     	add	x8, x8, #0x0
		0000000000002068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf2
    206c: 2a0003f3     	mov	w19, w0
    2070: aa0803e0     	mov	x0, x8
    2074: 2a1303e1     	mov	w1, w19
    2078: 94000000     	bl	0x2078 <gf_power_off+0x94>
		0000000000002078:  R_AARCH64_CALL26	_printk
    207c: 2a1303e0     	mov	w0, w19
    2080: 17fffff0     	b	0x2040 <gf_power_off+0x5c>
