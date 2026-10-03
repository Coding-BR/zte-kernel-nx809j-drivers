
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000028f0 <aw22xxx_imax_store>:
    28f0: d503233f     	paciasp
    28f4: d10103ff     	sub	sp, sp, #0x40
    28f8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    28fc: a90257f6     	stp	x22, x21, [sp, #0x20]
    2900: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2904: 910043fd     	add	x29, sp, #0x10
    2908: d5384109     	mrs	x9, SP_EL0
    290c: aa0203e8     	mov	x8, x2
    2910: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x406
    2914: 91000021     	add	x1, x1, #0x0
		0000000000002914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x406
    2918: f9438929     	ldr	x9, [x9, #0x710]
    291c: 910013e2     	add	x2, sp, #0x4
    2920: aa0303f3     	mov	x19, x3
    2924: f90007e9     	str	x9, [sp, #0x8]
    2928: f9404c15     	ldr	x21, [x0, #0x98]
    292c: aa0803e0     	mov	x0, x8
    2930: b90007ff     	str	wzr, [sp, #0x4]
    2934: 94000000     	bl	0x2934 <aw22xxx_imax_store+0x44>
		0000000000002934:  R_AARCH64_CALL26	sscanf
    2938: b94007f6     	ldr	w22, [sp, #0x4]
    293c: 7100041f     	cmp	w0, #0x1
    2940: 54000361     	b.ne	0x29ac <aw22xxx_imax_store+0xbc>
    2944: 710036df     	cmp	w22, #0xd
    2948: 54000322     	b.hs	0x29ac <aw22xxx_imax_store+0xbc>
    294c: d10042b4     	sub	x20, x21, #0x10
    2950: 52801fe1     	mov	w1, #0xff               // =255
    2954: 2a1f03e2     	mov	w2, wzr
    2958: aa1403e0     	mov	x0, x20
    295c: b902e2b6     	str	w22, [x21, #0x2e0]
    2960: 90000015     	adrp	x21, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1f8
    2964: 910002b5     	add	x21, x21, #0x0
		0000000000002964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1f8
    2968: 97fff5be     	bl	0x60 <aw22xxx_i2c_write>
    296c: 38764aa2     	ldrb	w2, [x21, w22, uxtw]
    2970: aa1403e0     	mov	x0, x20
    2974: 52800161     	mov	w1, #0xb                // =11
    2978: 97fff5ba     	bl	0x60 <aw22xxx_i2c_write>
    297c: d5384108     	mrs	x8, SP_EL0
    2980: f9438908     	ldr	x8, [x8, #0x710]
    2984: f94007e9     	ldr	x9, [sp, #0x8]
    2988: eb09011f     	cmp	x8, x9
    298c: 540001e1     	b.ne	0x29c8 <aw22xxx_imax_store+0xd8>
    2990: aa1303e0     	mov	x0, x19
    2994: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2998: a94257f6     	ldp	x22, x21, [sp, #0x20]
    299c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    29a0: 910103ff     	add	sp, sp, #0x40
    29a4: d50323bf     	autiasp
    29a8: d65f03c0     	ret
    29ac: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000029ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b
    29b0: 91000000     	add	x0, x0, #0x0
		00000000000029b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b
    29b4: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000029b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x690
    29b8: 91000021     	add	x1, x1, #0x0
		00000000000029b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x690
    29bc: 94000000     	bl	0x29bc <aw22xxx_imax_store+0xcc>
		00000000000029bc:  R_AARCH64_CALL26	_printk
    29c0: 928002b3     	mov	x19, #-0x16             // =-22
    29c4: 17ffffee     	b	0x297c <aw22xxx_imax_store+0x8c>
    29c8: 94000000     	bl	0x29c8 <aw22xxx_imax_store+0xd8>
		00000000000029c8:  R_AARCH64_CALL26	__stack_chk_fail
