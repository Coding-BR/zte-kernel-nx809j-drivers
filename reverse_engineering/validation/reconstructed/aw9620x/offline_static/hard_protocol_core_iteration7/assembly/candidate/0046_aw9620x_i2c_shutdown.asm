
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007f74 <aw9620x_i2c_shutdown>:
    7f74: d503233f     	paciasp
    7f78: d100c3ff     	sub	sp, sp, #0x30
    7f7c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    7f80: f90013f3     	str	x19, [sp, #0x20]
    7f84: 910043fd     	add	x29, sp, #0x10
    7f88: d5384108     	mrs	x8, SP_EL0
    7f8c: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007f8c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1f6b
    7f90: 91000021     	add	x1, x1, #0x0
		0000000000007f90:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1f6b
    7f94: f9438908     	ldr	x8, [x8, #0x710]
    7f98: f90007e8     	str	x8, [sp, #0x8]
    7f9c: f9405c13     	ldr	x19, [x0, #0xb8]
    7fa0: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007fa0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x30ec
    7fa4: 91000000     	add	x0, x0, #0x0
		0000000000007fa4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x30ec
    7fa8: 94000000     	bl	0x7fa8 <aw9620x_i2c_shutdown+0x34>
		0000000000007fa8:  R_AARCH64_CALL26	_printk
    7fac: 39401668     	ldrb	w8, [x19, #0x5]
    7fb0: 350000a8     	cbnz	w8, 0x7fc4 <aw9620x_i2c_shutdown+0x50>
    7fb4: b9401e60     	ldr	w0, [x19, #0x1c]
    7fb8: 94000000     	bl	0x7fb8 <aw9620x_i2c_shutdown+0x44>
		0000000000007fb8:  R_AARCH64_CALL26	disable_irq
    7fbc: 52800028     	mov	w8, #0x1                // =1
    7fc0: 39001668     	strb	w8, [x19, #0x5]
    7fc4: 910013e2     	add	x2, sp, #0x4
    7fc8: aa1303e0     	mov	x0, x19
    7fcc: 52888201     	mov	w1, #0x4410             // =17424
    7fd0: 97ffeecc     	bl	0x3b00 <aw9620x_i2c_read>
		0000000000007fd0:  R_AARCH64_CALL26	aw9620x_i2c_read
    7fd4: aa1303e0     	mov	x0, x19
    7fd8: 52888101     	mov	w1, #0x4408             // =17416
    7fdc: 52800042     	mov	w2, #0x2                // =2
    7fe0: 97ffe60c     	bl	0x1810 <aw9620x_i2c_write>
		0000000000007fe0:  R_AARCH64_CALL26	aw9620x_i2c_write
    7fe4: d5384108     	mrs	x8, SP_EL0
    7fe8: f9438908     	ldr	x8, [x8, #0x710]
    7fec: f94007e9     	ldr	x9, [sp, #0x8]
    7ff0: eb09011f     	cmp	x8, x9
    7ff4: 540000c1     	b.ne	0x800c <aw9620x_i2c_shutdown+0x98>
    7ff8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7ffc: f94013f3     	ldr	x19, [sp, #0x20]
    8000: 9100c3ff     	add	sp, sp, #0x30
    8004: d50323bf     	autiasp
    8008: d65f03c0     	ret
    800c: 94000000     	bl	0x800c <aw9620x_i2c_shutdown+0x98>
		000000000000800c:  R_AARCH64_CALL26	__stack_chk_fail
