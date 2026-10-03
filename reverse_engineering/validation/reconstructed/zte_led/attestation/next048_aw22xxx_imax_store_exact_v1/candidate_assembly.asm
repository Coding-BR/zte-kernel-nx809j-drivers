
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000311c <aw22xxx_imax_store>:
    311c: d503233f     	paciasp
    3120: d10103ff     	sub	sp, sp, #0x40
    3124: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3128: f90013f5     	str	x21, [sp, #0x20]
    312c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    3130: 910043fd     	add	x29, sp, #0x10
    3134: d5384109     	mrs	x9, SP_EL0
    3138: aa0203e8     	mov	x8, x2
    313c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		000000000000313c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x542
    3140: 91000021     	add	x1, x1, #0x0
		0000000000003140:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x542
    3144: f9438929     	ldr	x9, [x9, #0x710]
    3148: 910013e2     	add	x2, sp, #0x4
    314c: aa0303f3     	mov	x19, x3
    3150: f90007e9     	str	x9, [sp, #0x8]
    3154: f9404c14     	ldr	x20, [x0, #0x98]
    3158: aa0803e0     	mov	x0, x8
    315c: b90007ff     	str	wzr, [sp, #0x4]
    3160: 94000000     	bl	0x3160 <aw22xxx_imax_store+0x44>
		0000000000003160:  R_AARCH64_CALL26	sscanf
    3164: b94007e8     	ldr	w8, [sp, #0x4]
    3168: 7100041f     	cmp	w0, #0x1
    316c: 540003e1     	b.ne	0x31e8 <aw22xxx_imax_store+0xcc>
    3170: 7100351f     	cmp	w8, #0xd
    3174: 540003a2     	b.hs	0x31e8 <aw22xxx_imax_store+0xcc>
    3178: b902e288     	str	w8, [x20, #0x2e0]
    317c: 90000009     	adrp	x9, 0x3000 <aw22xxx_imax_show+0xd0>
		000000000000317c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_base+0x140
    3180: 91000129     	add	x9, x9, #0x0
		0000000000003180:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_base+0x140
    3184: 38684928     	ldrb	w8, [x9, w8, uxtw]
    3188: d1004294     	sub	x20, x20, #0x10
    318c: 528001e9     	mov	w9, #0xf                // =15
    3190: aa1403e0     	mov	x0, x20
    3194: 52801fe1     	mov	w1, #0xff               // =255
    3198: 2a1f03e2     	mov	w2, wzr
    319c: 71003d1f     	cmp	w8, #0xf
    31a0: 1a893115     	csel	w21, w8, w9, lo
    31a4: 97fff7ae     	bl	0x105c <aw22xxx_i2c_write>
    31a8: aa1403e0     	mov	x0, x20
    31ac: 52800161     	mov	w1, #0xb                // =11
    31b0: 2a1503e2     	mov	w2, w21
    31b4: 97fff7aa     	bl	0x105c <aw22xxx_i2c_write>
    31b8: d5384108     	mrs	x8, SP_EL0
    31bc: f9438908     	ldr	x8, [x8, #0x710]
    31c0: f94007e9     	ldr	x9, [sp, #0x8]
    31c4: eb09011f     	cmp	x8, x9
    31c8: 54000201     	b.ne	0x3208 <aw22xxx_imax_store+0xec>
    31cc: aa1303e0     	mov	x0, x19
    31d0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    31d4: f94013f5     	ldr	x21, [sp, #0x20]
    31d8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    31dc: 910103ff     	add	sp, sp, #0x40
    31e0: d50323bf     	autiasp
    31e4: d65f03c0     	ret
    31e8: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000031e8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x508
    31ec: 91000000     	add	x0, x0, #0x0
		00000000000031ec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x508
    31f0: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000031f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x7cc
    31f4: 91000021     	add	x1, x1, #0x0
		00000000000031f4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x7cc
    31f8: 528114e2     	mov	w2, #0x8a7              // =2215
    31fc: 94000000     	bl	0x31fc <aw22xxx_imax_store+0xe0>
		00000000000031fc:  R_AARCH64_CALL26	_printk
    3200: 928002b3     	mov	x19, #-0x16             // =-22
    3204: 17ffffed     	b	0x31b8 <aw22xxx_imax_store+0x9c>
    3208: 94000000     	bl	0x3208 <aw22xxx_imax_store+0xec>
		0000000000003208:  R_AARCH64_CALL26	__stack_chk_fail
