
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003208 <aw22xxx_reg_show>:
    3208: d503233f     	paciasp
    320c: d10183ff     	sub	sp, sp, #0x60
    3210: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3214: a90267fa     	stp	x26, x25, [sp, #0x20]
    3218: a9035ff8     	stp	x24, x23, [sp, #0x30]
    321c: a90457f6     	stp	x22, x21, [sp, #0x40]
    3220: a9054ff4     	stp	x20, x19, [sp, #0x50]
    3224: 910043fd     	add	x29, sp, #0x10
    3228: d5384108     	mrs	x8, SP_EL0
    322c: aa0203f3     	mov	x19, x2
    3230: 910013e2     	add	x2, sp, #0x4
    3234: f9438908     	ldr	x8, [x8, #0x710]
    3238: 52801fe1     	mov	w1, #0xff               // =255
    323c: f90007e8     	str	x8, [sp, #0x8]
    3240: f9404c08     	ldr	x8, [x0, #0x98]
    3244: 390013ff     	strb	wzr, [sp, #0x4]
    3248: 390003ff     	strb	wzr, [sp]
    324c: d1004115     	sub	x21, x8, #0x10
    3250: aa1503e0     	mov	x0, x21
    3254: 97fff873     	bl	0x1420 <aw22xxx_i2c_read>
    3258: aa1f03f6     	mov	x22, xzr
    325c: aa1f03f4     	mov	x20, xzr
    3260: 52820019     	mov	w25, #0x1000            // =4096
    3264: 9000001a     	adrp	x26, 0x3000 <aw22xxx_play+0x84>
		0000000000003264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x270
    3268: 9100035a     	add	x26, x26, #0x0
		0000000000003268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x270
    326c: 90000017     	adrp	x23, 0x3000 <aw22xxx_play+0x84>
		000000000000326c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe7
    3270: 910002f7     	add	x23, x23, #0x0
		0000000000003270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe7
    3274: 14000007     	b	0x3290 <aw22xxx_reg_show+0x88>
    3278: 8b140260     	add	x0, x19, x20
    327c: 94000000     	bl	0x327c <aw22xxx_reg_show+0x74>
		000000000000327c:  R_AARCH64_CALL26	strlen
    3280: 8b140014     	add	x20, x0, x20
    3284: 910006d6     	add	x22, x22, #0x1
    3288: f10402df     	cmp	x22, #0x100
    328c: 540002a0     	b.eq	0x32e0 <aw22xxx_reg_show+0xd8>
    3290: 394013e8     	ldrb	w8, [sp, #0x4]
    3294: 35000068     	cbnz	w8, 0x32a0 <aw22xxx_reg_show+0x98>
    3298: 38766b48     	ldrb	w8, [x26, x22]
    329c: 3607ff48     	tbz	w8, #0x0, 0x3284 <aw22xxx_reg_show+0x7c>
    32a0: 910003e2     	mov	x2, sp
    32a4: aa1503e0     	mov	x0, x21
    32a8: 2a1603e1     	mov	w1, w22
    32ac: 97fff85d     	bl	0x1420 <aw22xxx_i2c_read>
    32b0: cb140338     	sub	x24, x25, x20
    32b4: f100871f     	cmp	x24, #0x21
    32b8: 54000143     	b.lo	0x32e0 <aw22xxx_reg_show+0xd8>
    32bc: 394003e4     	ldrb	w4, [sp]
    32c0: 8b140260     	add	x0, x19, x20
    32c4: aa1803e1     	mov	x1, x24
    32c8: aa1703e2     	mov	x2, x23
    32cc: 2a1603e3     	mov	w3, w22
    32d0: 94000000     	bl	0x32d0 <aw22xxx_reg_show+0xc8>
		00000000000032d0:  R_AARCH64_CALL26	snprintf
    32d4: eb20c31f     	cmp	x24, w0, sxtw
    32d8: 54fffd08     	b.hi	0x3278 <aw22xxx_reg_show+0x70>
    32dc: 928001b4     	mov	x20, #-0xe              // =-14
    32e0: d5384108     	mrs	x8, SP_EL0
    32e4: f9438908     	ldr	x8, [x8, #0x710]
    32e8: f94007e9     	ldr	x9, [sp, #0x8]
    32ec: eb09011f     	cmp	x8, x9
    32f0: 54000141     	b.ne	0x3318 <aw22xxx_reg_show+0x110>
    32f4: aa1403e0     	mov	x0, x20
    32f8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    32fc: a94457f6     	ldp	x22, x21, [sp, #0x40]
    3300: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    3304: a94267fa     	ldp	x26, x25, [sp, #0x20]
    3308: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    330c: 910183ff     	add	sp, sp, #0x60
    3310: d50323bf     	autiasp
    3314: d65f03c0     	ret
    3318: 94000000     	bl	0x3318 <aw22xxx_reg_show+0x110>
		0000000000003318:  R_AARCH64_CALL26	__stack_chk_fail
