
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000351c <aw22xxx_rgb_store>:
    351c: d503233f     	paciasp
    3520: d100c3ff     	sub	sp, sp, #0x30
    3524: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3528: a9024ff4     	stp	x20, x19, [sp, #0x20]
    352c: 910043fd     	add	x29, sp, #0x10
    3530: d5384109     	mrs	x9, SP_EL0
    3534: aa0203e8     	mov	x8, x2
    3538: aa0303f3     	mov	x19, x3
    353c: f9438929     	ldr	x9, [x9, #0x710]
    3540: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x127c
    3544: 91000021     	add	x1, x1, #0x0
		0000000000003544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x127c
    3548: 910013e2     	add	x2, sp, #0x4
    354c: 910003e3     	mov	x3, sp
    3550: f90007e9     	str	x9, [sp, #0x8]
    3554: f9404c14     	ldr	x20, [x0, #0x98]
    3558: aa0803e0     	mov	x0, x8
    355c: f90003ff     	str	xzr, [sp]
    3560: 94000000     	bl	0x3560 <aw22xxx_rgb_store+0x44>
		0000000000003560:  R_AARCH64_CALL26	sscanf
    3564: 7100081f     	cmp	w0, #0x2
    3568: 928002a0     	mov	x0, #-0x16              // =-22
    356c: 54000081     	b.ne	0x357c <aw22xxx_rgb_store+0x60>
    3570: b94007e1     	ldr	w1, [sp, #0x4]
    3574: 7100203f     	cmp	w1, #0x8
    3578: 54000169     	b.ls	0x35a4 <aw22xxx_rgb_store+0x88>
    357c: d5384108     	mrs	x8, SP_EL0
    3580: f9438908     	ldr	x8, [x8, #0x710]
    3584: f94007e9     	ldr	x9, [sp, #0x8]
    3588: eb09011f     	cmp	x8, x9
    358c: 540001c1     	b.ne	0x35c4 <aw22xxx_rgb_store+0xa8>
    3590: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3594: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3598: 9100c3ff     	add	sp, sp, #0x30
    359c: d50323bf     	autiasp
    35a0: d65f03c0     	ret
    35a4: 8b010a88     	add	x8, x20, x1, lsl #2
    35a8: b94003e2     	ldr	w2, [sp]
    35ac: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		00000000000035ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60
    35b0: 91000000     	add	x0, x0, #0x0
		00000000000035b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60
    35b4: b902fd02     	str	w2, [x8, #0x2fc]
    35b8: 94000000     	bl	0x35b8 <aw22xxx_rgb_store+0x9c>
		00000000000035b8:  R_AARCH64_CALL26	_printk
    35bc: aa1303e0     	mov	x0, x19
    35c0: 17ffffef     	b	0x357c <aw22xxx_rgb_store+0x60>
    35c4: 94000000     	bl	0x35c4 <aw22xxx_rgb_store+0xa8>
		00000000000035c4:  R_AARCH64_CALL26	__stack_chk_fail
