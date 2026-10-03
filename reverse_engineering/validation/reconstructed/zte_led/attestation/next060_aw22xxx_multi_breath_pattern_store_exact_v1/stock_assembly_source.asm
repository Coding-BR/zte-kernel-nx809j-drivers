
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003b74 <aw22xxx_multi_breath_pattern_store>:
    3b74: d503233f     	paciasp
    3b78: d10103ff     	sub	sp, sp, #0x40
    3b7c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3b80: f90013f5     	str	x21, [sp, #0x20]
    3b84: a9034ff4     	stp	x20, x19, [sp, #0x30]
    3b88: 910043fd     	add	x29, sp, #0x10
    3b8c: d5384109     	mrs	x9, SP_EL0
    3b90: aa0203e8     	mov	x8, x2
    3b94: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542
    3b98: 91000021     	add	x1, x1, #0x0
		0000000000003b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542
    3b9c: f9438929     	ldr	x9, [x9, #0x710]
    3ba0: 910013e2     	add	x2, sp, #0x4
    3ba4: aa0303f3     	mov	x19, x3
    3ba8: f90007e9     	str	x9, [sp, #0x8]
    3bac: f9404c15     	ldr	x21, [x0, #0x98]
    3bb0: aa0803e0     	mov	x0, x8
    3bb4: b90007ff     	str	wzr, [sp, #0x4]
    3bb8: 94000000     	bl	0x3bb8 <aw22xxx_multi_breath_pattern_store+0x44>
		0000000000003bb8:  R_AARCH64_CALL26	sscanf
    3bbc: 7100041f     	cmp	w0, #0x1
    3bc0: 54000741     	b.ne	0x3ca8 <aw22xxx_multi_breath_pattern_store+0x134>
    3bc4: b94007e8     	ldr	w8, [sp, #0x4]
    3bc8: d10042b4     	sub	x20, x21, #0x10
    3bcc: b902faa8     	str	w8, [x21, #0x2f8]
    3bd0: 340003a8     	cbz	w8, 0x3c44 <aw22xxx_multi_breath_pattern_store+0xd0>
    3bd4: 7100051f     	cmp	w8, #0x1
    3bd8: 54000681     	b.ne	0x3ca8 <aw22xxx_multi_breath_pattern_store+0x134>
    3bdc: 90000015     	adrp	x21, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003bdc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b8
    3be0: 90000009     	adrp	x9, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003be0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b0
    3be4: 394002a8     	ldrb	w8, [x21]
		0000000000003be4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x61b8
    3be8: b900013f     	str	wzr, [x9]
		0000000000003be8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b0
    3bec: 370005e8     	tbnz	w8, #0x0, 0x3ca8 <aw22xxx_multi_breath_pattern_store+0x134>
    3bf0: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003bf0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b4
    3bf4: b9400108     	ldr	w8, [x8]
		0000000000003bf4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b4
    3bf8: 34000588     	cbz	w8, 0x3ca8 <aw22xxx_multi_breath_pattern_store+0x134>
    3bfc: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003bfc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_play
    3c00: 91000000     	add	x0, x0, #0x0
		0000000000003c00:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_play
    3c04: 90000003     	adrp	x3, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb42
    3c08: 91000063     	add	x3, x3, #0x0
		0000000000003c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb42
    3c0c: 90000004     	adrp	x4, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x896
    3c10: 91000084     	add	x4, x4, #0x0
		0000000000003c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x896
    3c14: aa1403e1     	mov	x1, x20
    3c18: 12800002     	mov	w2, #-0x1               // =-1
    3c1c: 94000000     	bl	0x3c1c <aw22xxx_multi_breath_pattern_store+0xa8>
		0000000000003c1c:  R_AARCH64_CALL26	kthread_create_on_node
    3c20: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    3c24: 540005a9     	b.ls	0x3cd8 <aw22xxx_multi_breath_pattern_store+0x164>
    3c28: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003c28:  R_AARCH64_ADR_PREL_PG_HI21	cfg_update_kthread
    3c2c: 390002bf     	strb	wzr, [x21]
		0000000000003c2c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x61b8
    3c30: f9000100     	str	x0, [x8]
		0000000000003c30:  R_AARCH64_LDST64_ABS_LO12_NC	cfg_update_kthread
    3c34: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf7b
    3c38: 91000000     	add	x0, x0, #0x0
		0000000000003c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf7b
    3c3c: 94000000     	bl	0x3c3c <aw22xxx_multi_breath_pattern_store+0xc8>
		0000000000003c3c:  R_AARCH64_CALL26	_printk
    3c40: 1400001a     	b	0x3ca8 <aw22xxx_multi_breath_pattern_store+0x134>
    3c44: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003c44:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b8
    3c48: 9000000a     	adrp	x10, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003c48:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b0
    3c4c: 39400109     	ldrb	w9, [x8]
		0000000000003c4c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x61b8
    3c50: b900015f     	str	wzr, [x10]
		0000000000003c50:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b0
    3c54: 9000000a     	adrp	x10, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003c54:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b4
    3c58: b900015f     	str	wzr, [x10]
		0000000000003c58:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b4
    3c5c: 7100053f     	cmp	w9, #0x1
    3c60: 54000041     	b.ne	0x3c68 <aw22xxx_multi_breath_pattern_store+0xf4>
    3c64: 3900011f     	strb	wzr, [x8]
		0000000000003c64:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x61b8
    3c68: aa1403e0     	mov	x0, x20
    3c6c: 52801fe1     	mov	w1, #0xff               // =255
    3c70: 2a1f03e2     	mov	w2, wzr
    3c74: 97fff1ea     	bl	0x41c <aw22xxx_i2c_write>
    3c78: aa1403e0     	mov	x0, x20
    3c7c: 528000a1     	mov	w1, #0x5                // =5
    3c80: 2a1f03e2     	mov	w2, wzr
    3c84: 97fff1e6     	bl	0x41c <aw22xxx_i2c_write>
    3c88: aa1403e0     	mov	x0, x20
    3c8c: 52800081     	mov	w1, #0x4                // =4
    3c90: 52800022     	mov	w2, #0x1                // =1
    3c94: 97fff1e2     	bl	0x41c <aw22xxx_i2c_write>
    3c98: aa1403e0     	mov	x0, x20
    3c9c: 52800041     	mov	w1, #0x2                // =2
    3ca0: 2a1f03e2     	mov	w2, wzr
    3ca4: 97fff1de     	bl	0x41c <aw22xxx_i2c_write>
    3ca8: d5384108     	mrs	x8, SP_EL0
    3cac: f9438908     	ldr	x8, [x8, #0x710]
    3cb0: f94007e9     	ldr	x9, [sp, #0x8]
    3cb4: eb09011f     	cmp	x8, x9
    3cb8: 54000241     	b.ne	0x3d00 <aw22xxx_multi_breath_pattern_store+0x18c>
    3cbc: aa1303e0     	mov	x0, x19
    3cc0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3cc4: f94013f5     	ldr	x21, [sp, #0x20]
    3cc8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3ccc: 910103ff     	add	sp, sp, #0x40
    3cd0: d50323bf     	autiasp
    3cd4: d65f03c0     	ret
    3cd8: aa0003f4     	mov	x20, x0
    3cdc: 94000000     	bl	0x3cdc <aw22xxx_multi_breath_pattern_store+0x168>
		0000000000003cdc:  R_AARCH64_CALL26	wake_up_process
    3ce0: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003ce0:  R_AARCH64_ADR_PREL_PG_HI21	cfg_update_kthread
    3ce4: 52800029     	mov	w9, #0x1                // =1
    3ce8: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1631
    3cec: 91000000     	add	x0, x0, #0x0
		0000000000003cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1631
    3cf0: f9000114     	str	x20, [x8]
		0000000000003cf0:  R_AARCH64_LDST64_ABS_LO12_NC	cfg_update_kthread
    3cf4: 390002a9     	strb	w9, [x21]
		0000000000003cf4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x61b8
    3cf8: 94000000     	bl	0x3cf8 <aw22xxx_multi_breath_pattern_store+0x184>
		0000000000003cf8:  R_AARCH64_CALL26	_printk
    3cfc: 17ffffeb     	b	0x3ca8 <aw22xxx_multi_breath_pattern_store+0x134>
    3d00: 94000000     	bl	0x3d00 <aw22xxx_multi_breath_pattern_store+0x18c>
		0000000000003d00:  R_AARCH64_CALL26	__stack_chk_fail
