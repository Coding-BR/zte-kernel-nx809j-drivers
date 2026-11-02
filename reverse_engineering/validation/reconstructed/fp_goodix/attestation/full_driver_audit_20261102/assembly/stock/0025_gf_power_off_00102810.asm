
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ff0 <gf_power_off>:
    1ff0: d503233f     	paciasp
    1ff4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1ff8: f9000bf3     	str	x19, [sp, #0x10]
    1ffc: 910003fd     	mov	x29, sp
    2000: b40000a0     	cbz	x0, 0x2014 <gf_power_off+0x24>
    2004: f9404c08     	ldr	x8, [x0, #0x98]
    2008: aa0003f3     	mov	x19, x0
    200c: b13ffd1f     	cmn	x8, #0xfff
    2010: 540000c3     	b.lo	0x2028 <gf_power_off+0x38>
    2014: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x10>
		0000000000002014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79b
    2018: 91000000     	add	x0, x0, #0x0
		0000000000002018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79b
    201c: 94000000     	bl	0x201c <gf_power_off+0x2c>
		000000000000201c:  R_AARCH64_CALL26	_printk
    2020: 12800240     	mov	w0, #-0x13              // =-19
    2024: 1400000a     	b	0x204c <gf_power_off+0x5c>
    2028: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x10>
		0000000000002028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb94
    202c: 91000000     	add	x0, x0, #0x0
		000000000000202c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb94
    2030: 94000000     	bl	0x2030 <gf_power_off+0x40>
		0000000000002030:  R_AARCH64_CALL26	_printk
    2034: f9404e60     	ldr	x0, [x19, #0x98]
    2038: 94000000     	bl	0x2038 <gf_power_off+0x48>
		0000000000002038:  R_AARCH64_CALL26	regulator_is_enabled
    203c: 34000100     	cbz	w0, 0x205c <gf_power_off+0x6c>
    2040: f9404e60     	ldr	x0, [x19, #0x98]
    2044: 94000000     	bl	0x2044 <gf_power_off+0x54>
		0000000000002044:  R_AARCH64_CALL26	regulator_disable
    2048: 35000140     	cbnz	w0, 0x2070 <gf_power_off+0x80>
    204c: f9400bf3     	ldr	x19, [sp, #0x10]
    2050: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2054: d50323bf     	autiasp
    2058: d65f03c0     	ret
    205c: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x10>
		000000000000205c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345
    2060: 91000000     	add	x0, x0, #0x0
		0000000000002060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345
    2064: 94000000     	bl	0x2064 <gf_power_off+0x74>
		0000000000002064:  R_AARCH64_CALL26	_printk
    2068: 2a1f03e0     	mov	w0, wzr
    206c: 17fffff8     	b	0x204c <gf_power_off+0x5c>
    2070: 90000008     	adrp	x8, 0x2000 <gf_power_off+0x10>
		0000000000002070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf2
    2074: 91000108     	add	x8, x8, #0x0
		0000000000002074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf2
    2078: 2a0003f3     	mov	w19, w0
    207c: aa0803e0     	mov	x0, x8
    2080: 2a1303e1     	mov	w1, w19
    2084: 94000000     	bl	0x2084 <gf_power_off+0x94>
		0000000000002084:  R_AARCH64_CALL26	_printk
    2088: 2a1303e0     	mov	w0, w19
    208c: 17fffff0     	b	0x204c <gf_power_off+0x5c>
