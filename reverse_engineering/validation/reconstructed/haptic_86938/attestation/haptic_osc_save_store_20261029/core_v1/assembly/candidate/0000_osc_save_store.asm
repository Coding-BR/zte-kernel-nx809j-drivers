
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002010 <osc_save_store>:
    2010: d503233f     	paciasp
    2014: d100c3ff     	sub	sp, sp, #0x30
    2018: a9017bfd     	stp	x29, x30, [sp, #0x10]
    201c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2020: 910043fd     	add	x29, sp, #0x10
    2024: d5384109     	mrs	x9, SP_EL0
    2028: aa0203e8     	mov	x8, x2
    202c: 910013e2     	add	x2, sp, #0x4
    2030: f9438929     	ldr	x9, [x9, #0x710]
    2034: 2a1f03e1     	mov	w1, wzr
    2038: aa0303f3     	mov	x19, x3
    203c: f90007e9     	str	x9, [sp, #0x8]
    2040: f9404c14     	ldr	x20, [x0, #0x98]
    2044: aa0803e0     	mov	x0, x8
    2048: b90007ff     	str	wzr, [sp, #0x4]
    204c: 94000000     	bl	0x204c <osc_save_store+0x3c>
		000000000000204c:  R_AARCH64_CALL26	kstrtouint
    2050: 37f80080     	tbnz	w0, #0x1f, 0x2060 <osc_save_store+0x50>
    2054: b94007e8     	ldr	w8, [sp, #0x4]
    2058: b81f0288     	stur	w8, [x20, #-0x10]
    205c: 14000002     	b	0x2064 <osc_save_store+0x54>
    2060: 93407c13     	sxtw	x19, w0
    2064: d5384108     	mrs	x8, SP_EL0
    2068: f9438908     	ldr	x8, [x8, #0x710]
    206c: f94007e9     	ldr	x9, [sp, #0x8]
    2070: eb09011f     	cmp	x8, x9
    2074: 540000e1     	b.ne	0x2090 <osc_save_store+0x80>
    2078: aa1303e0     	mov	x0, x19
    207c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2080: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2084: 9100c3ff     	add	sp, sp, #0x30
    2088: d50323bf     	autiasp
    208c: d65f03c0     	ret
    2090: 94000000     	bl	0x2090 <osc_save_store+0x80>
		0000000000002090:  R_AARCH64_CALL26	__stack_chk_fail
