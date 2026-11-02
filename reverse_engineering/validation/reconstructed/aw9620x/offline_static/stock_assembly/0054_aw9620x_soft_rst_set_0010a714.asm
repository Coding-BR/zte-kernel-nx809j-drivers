
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008e94 <aw9620x_soft_rst_set>:
    8e94: d503233f     	paciasp
    8e98: d100c3ff     	sub	sp, sp, #0x30
    8e9c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8ea0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8ea4: 910043fd     	add	x29, sp, #0x10
    8ea8: d5384109     	mrs	x9, SP_EL0
    8eac: aa0203e8     	mov	x8, x2
    8eb0: 910013e2     	add	x2, sp, #0x4
    8eb4: f9438929     	ldr	x9, [x9, #0x710]
    8eb8: 2a1f03e1     	mov	w1, wzr
    8ebc: aa0303f3     	mov	x19, x3
    8ec0: f90007e9     	str	x9, [sp, #0x8]
    8ec4: f9404c14     	ldr	x20, [x0, #0x98]
    8ec8: aa0803e0     	mov	x0, x8
    8ecc: b90007ff     	str	wzr, [sp, #0x4]
    8ed0: 94000000     	bl	0x8ed0 <aw9620x_soft_rst_set+0x3c>
		0000000000008ed0:  R_AARCH64_CALL26	kstrtouint
    8ed4: 350000c0     	cbnz	w0, 0x8eec <aw9620x_soft_rst_set+0x58>
    8ed8: b94007e8     	ldr	w8, [sp, #0x4]
    8edc: 7100051f     	cmp	w8, #0x1
    8ee0: 54000061     	b.ne	0x8eec <aw9620x_soft_rst_set+0x58>
    8ee4: d100e280     	sub	x0, x20, #0x38
    8ee8: 97fff535     	bl	0x63bc <aw9620x_soft_reset>
    8eec: d5384108     	mrs	x8, SP_EL0
    8ef0: f9438908     	ldr	x8, [x8, #0x710]
    8ef4: f94007e9     	ldr	x9, [sp, #0x8]
    8ef8: eb09011f     	cmp	x8, x9
    8efc: 540000e1     	b.ne	0x8f18 <aw9620x_soft_rst_set+0x84>
    8f00: aa1303e0     	mov	x0, x19
    8f04: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8f08: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    8f0c: 9100c3ff     	add	sp, sp, #0x30
    8f10: d50323bf     	autiasp
    8f14: d65f03c0     	ret
    8f18: 94000000     	bl	0x8f18 <aw9620x_soft_rst_set+0x84>
		0000000000008f18:  R_AARCH64_CALL26	__stack_chk_fail
