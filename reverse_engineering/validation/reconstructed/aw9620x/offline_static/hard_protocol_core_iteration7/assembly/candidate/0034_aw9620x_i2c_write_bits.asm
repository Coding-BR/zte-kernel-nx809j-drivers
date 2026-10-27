
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000593c <aw9620x_i2c_write_bits>:
    593c: d503233f     	paciasp
    5940: d10103ff     	sub	sp, sp, #0x40
    5944: a9017bfd     	stp	x29, x30, [sp, #0x10]
    5948: a90257f6     	stp	x22, x21, [sp, #0x20]
    594c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    5950: 910043fd     	add	x29, sp, #0x10
    5954: d5384108     	mrs	x8, SP_EL0
    5958: 2a0203f4     	mov	w20, w2
    595c: 910013e2     	add	x2, sp, #0x4
    5960: f9438908     	ldr	x8, [x8, #0x710]
    5964: 2a0303f3     	mov	w19, w3
    5968: 2a0103f5     	mov	w21, w1
    596c: aa0003f6     	mov	x22, x0
    5970: f90007e8     	str	x8, [sp, #0x8]
    5974: b90007ff     	str	wzr, [sp, #0x4]
    5978: 97fff862     	bl	0x3b00 <aw9620x_i2c_read>
		0000000000005978:  R_AARCH64_CALL26	aw9620x_i2c_read
    597c: b94007e8     	ldr	w8, [sp, #0x4]
    5980: aa1603e0     	mov	x0, x22
    5984: 2a1503e1     	mov	w1, w21
    5988: 0a140108     	and	w8, w8, w20
    598c: 2a130102     	orr	w2, w8, w19
    5990: 97ffefa0     	bl	0x1810 <aw9620x_i2c_write>
		0000000000005990:  R_AARCH64_CALL26	aw9620x_i2c_write
    5994: d5384108     	mrs	x8, SP_EL0
    5998: f9438908     	ldr	x8, [x8, #0x710]
    599c: f94007e9     	ldr	x9, [sp, #0x8]
    59a0: eb09011f     	cmp	x8, x9
    59a4: 540000e1     	b.ne	0x59c0 <aw9620x_i2c_write_bits+0x84>
    59a8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    59ac: a94257f6     	ldp	x22, x21, [sp, #0x20]
    59b0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    59b4: 910103ff     	add	sp, sp, #0x40
    59b8: d50323bf     	autiasp
    59bc: d65f03c0     	ret
    59c0: 94000000     	bl	0x59c0 <aw9620x_i2c_write_bits+0x84>
		00000000000059c0:  R_AARCH64_CALL26	__stack_chk_fail
