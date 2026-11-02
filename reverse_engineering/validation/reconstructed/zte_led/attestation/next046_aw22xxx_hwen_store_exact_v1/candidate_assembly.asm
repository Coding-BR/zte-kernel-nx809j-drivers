
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002e08 <aw22xxx_hwen_store>:
    2e08: d503233f     	paciasp
    2e0c: d10103ff     	sub	sp, sp, #0x40
    2e10: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2e14: f90013f5     	str	x21, [sp, #0x20]
    2e18: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2e1c: 910043fd     	add	x29, sp, #0x10
    2e20: d5384109     	mrs	x9, SP_EL0
    2e24: aa0203e8     	mov	x8, x2
    2e28: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002e28:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x542
    2e2c: 91000021     	add	x1, x1, #0x0
		0000000000002e2c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x542
    2e30: f9438929     	ldr	x9, [x9, #0x710]
    2e34: 910013e2     	add	x2, sp, #0x4
    2e38: aa0303f3     	mov	x19, x3
    2e3c: f90007e9     	str	x9, [sp, #0x8]
    2e40: f9404c14     	ldr	x20, [x0, #0x98]
    2e44: aa0803e0     	mov	x0, x8
    2e48: b90007ff     	str	wzr, [sp, #0x4]
    2e4c: 94000000     	bl	0x2e4c <aw22xxx_hwen_store+0x44>
		0000000000002e4c:  R_AARCH64_CALL26	sscanf
    2e50: 7100041f     	cmp	w0, #0x1
    2e54: 54000281     	b.ne	0x2ea4 <aw22xxx_hwen_store+0x9c>
    2e58: b94007e8     	ldr	w8, [sp, #0x4]
    2e5c: 7100091f     	cmp	w8, #0x2
    2e60: 54000222     	b.hs	0x2ea4 <aw22xxx_hwen_store+0x9c>
    2e64: 7100051f     	cmp	w8, #0x1
    2e68: d1004280     	sub	x0, x20, #0x10
    2e6c: 540002c1     	b.ne	0x2ec4 <aw22xxx_hwen_store+0xbc>
    2e70: 97fffaee     	bl	0x1a28 <aw22xxx_hw_reset>
		0000000000002e70:  R_AARCH64_CALL26	aw22xxx_hw_reset
    2e74: d5384108     	mrs	x8, SP_EL0
    2e78: f9438908     	ldr	x8, [x8, #0x710]
    2e7c: f94007e9     	ldr	x9, [sp, #0x8]
    2e80: eb09011f     	cmp	x8, x9
    2e84: 54000521     	b.ne	0x2f28 <aw22xxx_hwen_store+0x120>
    2e88: aa1303e0     	mov	x0, x19
    2e8c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2e90: f94013f5     	ldr	x21, [sp, #0x20]
    2e94: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2e98: 910103ff     	add	sp, sp, #0x40
    2e9c: d50323bf     	autiasp
    2ea0: d65f03c0     	ret
    2ea4: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002ea4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x508
    2ea8: 91000000     	add	x0, x0, #0x0
		0000000000002ea8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x508
    2eac: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002eac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1502
    2eb0: 91000021     	add	x1, x1, #0x0
		0000000000002eb0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1502
    2eb4: 5280f722     	mov	w2, #0x7b9              // =1977
    2eb8: 94000000     	bl	0x2eb8 <aw22xxx_hwen_store+0xb0>
		0000000000002eb8:  R_AARCH64_CALL26	_printk
    2ebc: 928002b3     	mov	x19, #-0x16             // =-22
    2ec0: 17ffffed     	b	0x2e74 <aw22xxx_hwen_store+0x6c>
    2ec4: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		0000000000002ec4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    2ec8: 91000108     	add	x8, x8, #0x0
		0000000000002ec8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    2ecc: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002ecc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x5c1
    2ed0: 91000021     	add	x1, x1, #0x0
		0000000000002ed0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x5c1
    2ed4: aa0003f5     	mov	x21, x0
    2ed8: aa0803e0     	mov	x0, x8
    2edc: 94000000     	bl	0x2edc <aw22xxx_hwen_store+0xd4>
		0000000000002edc:  R_AARCH64_CALL26	_printk
    2ee0: b4000175     	cbz	x21, 0x2f0c <aw22xxx_hwen_store+0x104>
    2ee4: b942d280     	ldr	w0, [x20, #0x2d0]
    2ee8: 37f80120     	tbnz	w0, #0x1f, 0x2f0c <aw22xxx_hwen_store+0x104>
    2eec: 94000000     	bl	0x2eec <aw22xxx_hwen_store+0xe4>
		0000000000002eec:  R_AARCH64_CALL26	gpio_to_desc
    2ef0: 2a1f03e1     	mov	w1, wzr
    2ef4: 94000000     	bl	0x2ef4 <aw22xxx_hwen_store+0xec>
		0000000000002ef4:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    2ef8: 52807d00     	mov	w0, #0x3e8              // =1000
    2efc: 5280bb81     	mov	w1, #0x5dc              // =1500
    2f00: 52800042     	mov	w2, #0x2                // =2
    2f04: 94000000     	bl	0x2f04 <aw22xxx_hwen_store+0xfc>
		0000000000002f04:  R_AARCH64_CALL26	usleep_range_state
    2f08: 17ffffdb     	b	0x2e74 <aw22xxx_hwen_store+0x6c>
    2f0c: f85f8280     	ldur	x0, [x20, #-0x8]
    2f10: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002f10:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x833
    2f14: 91000021     	add	x1, x1, #0x0
		0000000000002f14:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x833
    2f18: 90000002     	adrp	x2, 0x2000 <aw22xxx_irq+0x20>
		0000000000002f18:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x5c1
    2f1c: 91000042     	add	x2, x2, #0x0
		0000000000002f1c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x5c1
    2f20: 94000000     	bl	0x2f20 <aw22xxx_hwen_store+0x118>
		0000000000002f20:  R_AARCH64_CALL26	_dev_err
    2f24: 17ffffd4     	b	0x2e74 <aw22xxx_hwen_store+0x6c>
    2f28: 94000000     	bl	0x2f28 <aw22xxx_hwen_store+0x120>
		0000000000002f28:  R_AARCH64_CALL26	__stack_chk_fail
