
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001dd0 <aw22xxx_get_fwname>:
    1dd0: d503233f     	paciasp
    1dd4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1dd8: f9000bf7     	str	x23, [sp, #0x10]
    1ddc: a90257f6     	stp	x22, x21, [sp, #0x20]
    1de0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1de4: 910003fd     	mov	x29, sp
    1de8: 53187c16     	lsr	w22, w0, #24
    1dec: 90000017     	adrp	x23, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fe
    1df0: 910002f7     	add	x23, x23, #0x0
		0000000000001df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fe
    1df4: 2a0003f5     	mov	w21, w0
    1df8: 530c5c14     	ubfx	w20, w0, #12, #12
    1dfc: 12002c13     	and	w19, w0, #0xfff
    1e00: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb7
    1e04: 91000000     	add	x0, x0, #0x0
		0000000000001e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb7
    1e08: aa1703e1     	mov	x1, x23
    1e0c: 2a1603e2     	mov	w2, w22
    1e10: 94000000     	bl	0x1e10 <aw22xxx_get_fwname+0x40>
		0000000000001e10:  R_AARCH64_CALL26	_printk
    1e14: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc85
    1e18: 91000000     	add	x0, x0, #0x0
		0000000000001e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc85
    1e1c: aa1703e1     	mov	x1, x23
    1e20: 2a1403e2     	mov	w2, w20
    1e24: 94000000     	bl	0x1e24 <aw22xxx_get_fwname+0x54>
		0000000000001e24:  R_AARCH64_CALL26	_printk
    1e28: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x811
    1e2c: 91000000     	add	x0, x0, #0x0
		0000000000001e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x811
    1e30: aa1703e1     	mov	x1, x23
    1e34: 2a1303e2     	mov	w2, w19
    1e38: 94000000     	bl	0x1e38 <aw22xxx_get_fwname+0x68>
		0000000000001e38:  R_AARCH64_CALL26	_printk
    1e3c: 71000edf     	cmp	w22, #0x3
    1e40: 540002a0     	b.eq	0x1e94 <aw22xxx_get_fwname+0xc4>
    1e44: 71000adf     	cmp	w22, #0x2
    1e48: 54000160     	b.eq	0x1e74 <aw22xxx_get_fwname+0xa4>
    1e4c: 710006df     	cmp	w22, #0x1
    1e50: 54000321     	b.ne	0x1eb4 <aw22xxx_get_fwname+0xe4>
    1e54: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001e54:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3e
    1e58: 91000000     	add	x0, x0, #0x0
		0000000000001e58:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3e
    1e5c: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb1
    1e60: 91000021     	add	x1, x1, #0x0
		0000000000001e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb1
    1e64: 2a1403e2     	mov	w2, w20
    1e68: 2a1303e3     	mov	w3, w19
    1e6c: 94000000     	bl	0x1e6c <aw22xxx_get_fwname+0x9c>
		0000000000001e6c:  R_AARCH64_CALL26	sprintf
    1e70: 14000021     	b	0x1ef4 <aw22xxx_get_fwname+0x124>
    1e74: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001e74:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3e
    1e78: 91000000     	add	x0, x0, #0x0
		0000000000001e78:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3e
    1e7c: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174b
    1e80: 91000021     	add	x1, x1, #0x0
		0000000000001e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174b
    1e84: 2a1403e2     	mov	w2, w20
    1e88: 2a1303e3     	mov	w3, w19
    1e8c: 94000000     	bl	0x1e8c <aw22xxx_get_fwname+0xbc>
		0000000000001e8c:  R_AARCH64_CALL26	sprintf
    1e90: 14000019     	b	0x1ef4 <aw22xxx_get_fwname+0x124>
    1e94: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001e94:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3e
    1e98: 91000000     	add	x0, x0, #0x0
		0000000000001e98:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3e
    1e9c: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x710
    1ea0: 91000021     	add	x1, x1, #0x0
		0000000000001ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x710
    1ea4: 2a1403e2     	mov	w2, w20
    1ea8: 2a1303e3     	mov	w3, w19
    1eac: 94000000     	bl	0x1eac <aw22xxx_get_fwname+0xdc>
		0000000000001eac:  R_AARCH64_CALL26	sprintf
    1eb0: 14000011     	b	0x1ef4 <aw22xxx_get_fwname+0x124>
    1eb4: 350003b6     	cbnz	w22, 0x1f28 <aw22xxx_get_fwname+0x158>
    1eb8: 71002a7f     	cmp	w19, #0xa
    1ebc: 54000368     	b.hi	0x1f28 <aw22xxx_get_fwname+0x158>
    1ec0: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001ec0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
    1ec4: f9400108     	ldr	x8, [x8]
		0000000000001ec4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1ec8: b4000308     	cbz	x8, 0x1f28 <aw22xxx_get_fwname+0x158>
    1ecc: f8755913     	ldr	x19, [x8, w21, uxtw #3]
    1ed0: aa1303e0     	mov	x0, x19
    1ed4: 94000000     	bl	0x1ed4 <aw22xxx_get_fwname+0x104>
		0000000000001ed4:  R_AARCH64_CALL26	strlen
    1ed8: 91000402     	add	x2, x0, #0x1
    1edc: f101045f     	cmp	x2, #0x41
    1ee0: 54000302     	b.hs	0x1f40 <aw22xxx_get_fwname+0x170>
    1ee4: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001ee4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3e
    1ee8: 91000000     	add	x0, x0, #0x0
		0000000000001ee8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3e
    1eec: aa1303e1     	mov	x1, x19
    1ef0: 94000000     	bl	0x1ef0 <aw22xxx_get_fwname+0x120>
		0000000000001ef0:  R_AARCH64_CALL26	memcpy
    1ef4: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x936
    1ef8: 91000000     	add	x0, x0, #0x0
		0000000000001ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x936
    1efc: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fe
    1f00: 91000021     	add	x1, x1, #0x0
		0000000000001f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fe
    1f04: 90000002     	adrp	x2, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001f04:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3e
    1f08: 91000042     	add	x2, x2, #0x0
		0000000000001f08:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3e
    1f0c: 94000000     	bl	0x1f0c <aw22xxx_get_fwname+0x13c>
		0000000000001f0c:  R_AARCH64_CALL26	_printk
    1f10: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1f14: f9400bf7     	ldr	x23, [sp, #0x10]
    1f18: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1f1c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1f20: d50323bf     	autiasp
    1f24: d65f03c0     	ret
    1f28: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a9
    1f2c: 91000000     	add	x0, x0, #0x0
		0000000000001f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a9
    1f30: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fe
    1f34: 91000021     	add	x1, x1, #0x0
		0000000000001f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fe
    1f38: 94000000     	bl	0x1f38 <aw22xxx_get_fwname+0x168>
		0000000000001f38:  R_AARCH64_CALL26	_printk
    1f3c: 17fffff5     	b	0x1f10 <aw22xxx_get_fwname+0x140>
    1f40: 52800220     	mov	w0, #0x11               // =17
    1f44: 52800801     	mov	w1, #0x40               // =64
    1f48: 94000000     	bl	0x1f48 <aw22xxx_get_fwname+0x178>
		0000000000001f48:  R_AARCH64_CALL26	__fortify_panic
