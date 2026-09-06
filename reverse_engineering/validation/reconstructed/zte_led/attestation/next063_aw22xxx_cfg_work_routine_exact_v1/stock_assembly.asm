
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003df0 <aw22xxx_cfg_work_routine>:
    3df0: d503233f     	paciasp
    3df4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3df8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    3dfc: 910003fd     	mov	x29, sp
    3e00: 90000014     	adrp	x20, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    3e04: 91000294     	add	x20, x20, #0x0
		0000000000003e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    3e08: aa0003f3     	mov	x19, x0
    3e0c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x482
    3e10: 91000021     	add	x1, x1, #0x0
		0000000000003e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x482
    3e14: aa1403e0     	mov	x0, x20
    3e18: 94000000     	bl	0x3e18 <aw22xxx_cfg_work_routine+0x28>
		0000000000003e18:  R_AARCH64_CALL26	_printk
    3e1c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b0
    3e20: 91000021     	add	x1, x1, #0x0
		0000000000003e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b0
    3e24: aa1403e0     	mov	x0, x20
    3e28: 94000000     	bl	0x3e28 <aw22xxx_cfg_work_routine+0x38>
		0000000000003e28:  R_AARCH64_CALL26	_printk
    3e2c: 3942fe68     	ldrb	w8, [x19, #0xbf]
    3e30: 7100091f     	cmp	w8, #0x2
    3e34: 54000441     	b.ne	0x3ebc <aw22xxx_cfg_work_routine+0xcc>
    3e38: b940d268     	ldr	w8, [x19, #0xd0]
    3e3c: d108c274     	sub	x20, x19, #0x230
    3e40: 7100091f     	cmp	w8, #0x2
    3e44: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003e44:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6218
    3e48: 540000a1     	b.ne	0x3e5c <aw22xxx_cfg_work_routine+0x6c>
    3e4c: 3904627f     	strb	wzr, [x19, #0x118]
    3e50: 39400109     	ldrb	w9, [x8]
		0000000000003e50:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    3e54: 360000c9     	tbz	w9, #0x0, 0x3e6c <aw22xxx_cfg_work_routine+0x7c>
    3e58: 14000009     	b	0x3e7c <aw22xxx_cfg_work_routine+0x8c>
    3e5c: 52800029     	mov	w9, #0x1                // =1
    3e60: 39046269     	strb	w9, [x19, #0x118]
    3e64: 39400109     	ldrb	w9, [x8]
		0000000000003e64:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    3e68: 370000a9     	tbnz	w9, #0x0, 0x3e7c <aw22xxx_cfg_work_routine+0x8c>
    3e6c: 52800029     	mov	w9, #0x1                // =1
    3e70: aa1403e0     	mov	x0, x20
    3e74: 39000109     	strb	w9, [x8]
		0000000000003e74:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    3e78: 97fff0f8     	bl	0x258 <aw22xxx_init_cfg_update_array>
    3e7c: d108a268     	sub	x8, x19, #0x228
    3e80: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003e80:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    3e84: 91000000     	add	x0, x0, #0x0
		0000000000003e84:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    3e88: f9400103     	ldr	x3, [x8]
    3e8c: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003e8c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6220
    3e90: 91000042     	add	x2, x2, #0x0
		0000000000003e90:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6220
    3e94: 90000006     	adrp	x6, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003e94:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2bec
    3e98: 910000c6     	add	x6, x6, #0x0
		0000000000003e98:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2bec
    3e9c: 52800021     	mov	w1, #0x1                // =1
    3ea0: 52819804     	mov	w4, #0xcc0              // =3264
    3ea4: aa1403e5     	mov	x5, x20
    3ea8: 94000000     	bl	0x3ea8 <aw22xxx_cfg_work_routine+0xb8>
		0000000000003ea8:  R_AARCH64_CALL26	request_firmware_nowait
    3eac: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    3eb0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3eb4: d50323bf     	autiasp
    3eb8: d65f03c0     	ret
    3ebc: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c2
    3ec0: 91000000     	add	x0, x0, #0x0
		0000000000003ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c2
    3ec4: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b0
    3ec8: 91000021     	add	x1, x1, #0x0
		0000000000003ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b0
    3ecc: 94000000     	bl	0x3ecc <aw22xxx_cfg_work_routine+0xdc>
		0000000000003ecc:  R_AARCH64_CALL26	_printk
    3ed0: 17fffff7     	b	0x3eac <aw22xxx_cfg_work_routine+0xbc>
