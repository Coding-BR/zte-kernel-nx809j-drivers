
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002fb8 <aw22xxx_imax_store>:
    2fb8: d503233f     	paciasp
    2fbc: d10103ff     	sub	sp, sp, #0x40
    2fc0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2fc4: f90013f5     	str	x21, [sp, #0x20]
    2fc8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2fcc: 910043fd     	add	x29, sp, #0x10
    2fd0: d5384109     	mrs	x9, SP_EL0
    2fd4: aa0203e8     	mov	x8, x2
    2fd8: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542
    2fdc: 91000021     	add	x1, x1, #0x0
		0000000000002fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542
    2fe0: f9438929     	ldr	x9, [x9, #0x710]
    2fe4: 910013e2     	add	x2, sp, #0x4
    2fe8: aa0303f3     	mov	x19, x3
    2fec: f90007e9     	str	x9, [sp, #0x8]
    2ff0: f9404c14     	ldr	x20, [x0, #0x98]
    2ff4: aa0803e0     	mov	x0, x8
    2ff8: b90007ff     	str	wzr, [sp, #0x4]
    2ffc: 94000000     	bl	0x2ffc <aw22xxx_imax_store+0x44>
		0000000000002ffc:  R_AARCH64_CALL26	sscanf
    3000: b94007e8     	ldr	w8, [sp, #0x4]
    3004: 7100041f     	cmp	w0, #0x1
    3008: 540003e1     	b.ne	0x3084 <aw22xxx_imax_store+0xcc>
    300c: 7100351f     	cmp	w8, #0xd
    3010: 540003a2     	b.hs	0x3084 <aw22xxx_imax_store+0xcc>
    3014: b902e288     	str	w8, [x20, #0x2e0]
    3018: 90000009     	adrp	x9, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x140
    301c: 91000129     	add	x9, x9, #0x0
		000000000000301c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x140
    3020: 38684928     	ldrb	w8, [x9, w8, uxtw]
    3024: d1004294     	sub	x20, x20, #0x10
    3028: 528001e9     	mov	w9, #0xf                // =15
    302c: aa1403e0     	mov	x0, x20
    3030: 52801fe1     	mov	w1, #0xff               // =255
    3034: 2a1f03e2     	mov	w2, wzr
    3038: 71003d1f     	cmp	w8, #0xf
    303c: 1a893115     	csel	w21, w8, w9, lo
    3040: 97fff4f7     	bl	0x41c <aw22xxx_i2c_write>
    3044: aa1403e0     	mov	x0, x20
    3048: 52800161     	mov	w1, #0xb                // =11
    304c: 2a1503e2     	mov	w2, w21
    3050: 97fff4f3     	bl	0x41c <aw22xxx_i2c_write>
    3054: d5384108     	mrs	x8, SP_EL0
    3058: f9438908     	ldr	x8, [x8, #0x710]
    305c: f94007e9     	ldr	x9, [sp, #0x8]
    3060: eb09011f     	cmp	x8, x9
    3064: 54000201     	b.ne	0x30a4 <aw22xxx_imax_store+0xec>
    3068: aa1303e0     	mov	x0, x19
    306c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3070: f94013f5     	ldr	x21, [sp, #0x20]
    3074: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3078: 910103ff     	add	sp, sp, #0x40
    307c: d50323bf     	autiasp
    3080: d65f03c0     	ret
    3084: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x508
    3088: 91000000     	add	x0, x0, #0x0
		0000000000003088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x508
    308c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000308c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cc
    3090: 91000021     	add	x1, x1, #0x0
		0000000000003090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cc
    3094: 528114e2     	mov	w2, #0x8a7              // =2215
    3098: 94000000     	bl	0x3098 <aw22xxx_imax_store+0xe0>
		0000000000003098:  R_AARCH64_CALL26	_printk
    309c: 928002b3     	mov	x19, #-0x16             // =-22
    30a0: 17ffffed     	b	0x3054 <aw22xxx_imax_store+0x9c>
    30a4: 94000000     	bl	0x30a4 <aw22xxx_imax_store+0xec>
		00000000000030a4:  R_AARCH64_CALL26	__stack_chk_fail
