
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000031f0 <aw22xxx_rgb_store>:
    31f0: d503233f     	paciasp
    31f4: d100c3ff     	sub	sp, sp, #0x30
    31f8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    31fc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3200: 910043fd     	add	x29, sp, #0x10
    3204: d5384109     	mrs	x9, SP_EL0
    3208: aa0203e8     	mov	x8, x2
    320c: aa0303f3     	mov	x19, x3
    3210: f9438929     	ldr	x9, [x9, #0x710]
    3214: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f0
    3218: 91000021     	add	x1, x1, #0x0
		0000000000003218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f0
    321c: 910003e2     	mov	x2, sp
    3220: f90007e9     	str	x9, [sp, #0x8]
    3224: 910003e9     	mov	x9, sp
    3228: f9404c14     	ldr	x20, [x0, #0x98]
    322c: b27e0123     	orr	x3, x9, #0x4
    3230: aa0803e0     	mov	x0, x8
    3234: f90003ff     	str	xzr, [sp]
    3238: 94000000     	bl	0x3238 <aw22xxx_rgb_store+0x48>
		0000000000003238:  R_AARCH64_CALL26	sscanf
    323c: 7100081f     	cmp	w0, #0x2
    3240: 54000081     	b.ne	0x3250 <aw22xxx_rgb_store+0x60>
    3244: b94003e3     	ldr	w3, [sp]
    3248: 7100207f     	cmp	w3, #0x8
    324c: 540001a9     	b.ls	0x3280 <aw22xxx_rgb_store+0x90>
    3250: 928002b3     	mov	x19, #-0x16             // =-22
    3254: d5384108     	mrs	x8, SP_EL0
    3258: f9438908     	ldr	x8, [x8, #0x710]
    325c: f94007e9     	ldr	x9, [sp, #0x8]
    3260: eb09011f     	cmp	x8, x9
    3264: 54000221     	b.ne	0x32a8 <aw22xxx_rgb_store+0xb8>
    3268: aa1303e0     	mov	x0, x19
    326c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3270: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3274: 9100c3ff     	add	sp, sp, #0x30
    3278: d50323bf     	autiasp
    327c: d65f03c0     	ret
    3280: 8b030a88     	add	x8, x20, x3, lsl #2
    3284: b94007e4     	ldr	w4, [sp, #0x4]
    3288: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x254
    328c: 91000000     	add	x0, x0, #0x0
		000000000000328c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x254
    3290: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189a
    3294: 91000021     	add	x1, x1, #0x0
		0000000000003294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189a
    3298: 52811a62     	mov	w2, #0x8d3              // =2259
    329c: b902fd04     	str	w4, [x8, #0x2fc]
    32a0: 94000000     	bl	0x32a0 <aw22xxx_rgb_store+0xb0>
		00000000000032a0:  R_AARCH64_CALL26	_printk
    32a4: 17ffffec     	b	0x3254 <aw22xxx_rgb_store+0x64>
    32a8: 94000000     	bl	0x32a8 <aw22xxx_rgb_store+0xb8>
		00000000000032a8:  R_AARCH64_CALL26	__stack_chk_fail
