
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009e5c <aw9620x_reg_set>:
    9e5c: d503233f     	paciasp
    9e60: d100c3ff     	sub	sp, sp, #0x30
    9e64: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9e68: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9e6c: 910043fd     	add	x29, sp, #0x10
    9e70: d5384109     	mrs	x9, SP_EL0
    9e74: aa0203e8     	mov	x8, x2
    9e78: aa0303f3     	mov	x19, x3
    9e7c: f9438929     	ldr	x9, [x9, #0x710]
    9e80: 90000001     	adrp	x1, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2667
    9e84: 91000021     	add	x1, x1, #0x0
		0000000000009e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2667
    9e88: 910003e2     	mov	x2, sp
    9e8c: f90007e9     	str	x9, [sp, #0x8]
    9e90: 910003e9     	mov	x9, sp
    9e94: f9404c14     	ldr	x20, [x0, #0x98]
    9e98: b27e0123     	orr	x3, x9, #0x4
    9e9c: aa0803e0     	mov	x0, x8
    9ea0: f90003ff     	str	xzr, [sp]
    9ea4: 94000000     	bl	0x9ea4 <aw9620x_reg_set+0x48>
		0000000000009ea4:  R_AARCH64_CALL26	sscanf
    9ea8: 7100081f     	cmp	w0, #0x2
    9eac: 54000241     	b.ne	0x9ef4 <aw9620x_reg_set+0x98>
    9eb0: b94003e1     	ldr	w1, [sp]
    9eb4: aa1f03e8     	mov	x8, xzr
    9eb8: d100e280     	sub	x0, x20, #0x38
    9ebc: 90000009     	adrp	x9, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x618
    9ec0: 91000129     	add	x9, x9, #0x0
		0000000000009ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x618
    9ec4: 8b08012a     	add	x10, x9, x8
    9ec8: 7940054a     	ldrh	w10, [x10, #0x2]
    9ecc: 6b21215f     	cmp	w10, w1, uxth
    9ed0: 540000a0     	b.eq	0x9ee4 <aw9620x_reg_set+0x88>
    9ed4: 91001108     	add	x8, x8, #0x4
    9ed8: f10c411f     	cmp	x8, #0x310
    9edc: 54ffff41     	b.ne	0x9ec4 <aw9620x_reg_set+0x68>
    9ee0: 14000005     	b	0x9ef4 <aw9620x_reg_set+0x98>
    9ee4: 38686928     	ldrb	w8, [x9, x8]
    9ee8: 36080068     	tbz	w8, #0x1, 0x9ef4 <aw9620x_reg_set+0x98>
    9eec: b94007e2     	ldr	w2, [sp, #0x4]
    9ef0: 97ffde48     	bl	0x1810 <aw9620x_i2c_write>
    9ef4: d5384108     	mrs	x8, SP_EL0
    9ef8: f9438908     	ldr	x8, [x8, #0x710]
    9efc: f94007e9     	ldr	x9, [sp, #0x8]
    9f00: eb09011f     	cmp	x8, x9
    9f04: 540000e1     	b.ne	0x9f20 <aw9620x_reg_set+0xc4>
    9f08: aa1303e0     	mov	x0, x19
    9f0c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9f10: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9f14: 9100c3ff     	add	sp, sp, #0x30
    9f18: d50323bf     	autiasp
    9f1c: d65f03c0     	ret
    9f20: 94000000     	bl	0x9f20 <aw9620x_reg_set+0xc4>
		0000000000009f20:  R_AARCH64_CALL26	__stack_chk_fail
