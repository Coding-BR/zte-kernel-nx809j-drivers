
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002df4 <aw22xxx_multi_breath_pattern_store>:
    2df4: d503233f     	paciasp
    2df8: d10103ff     	sub	sp, sp, #0x40
    2dfc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2e00: f90013f5     	str	x21, [sp, #0x20]
    2e04: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2e08: 910043fd     	add	x29, sp, #0x10
    2e0c: d5384109     	mrs	x9, SP_EL0
    2e10: aa0203e8     	mov	x8, x2
    2e14: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x406
    2e18: 91000021     	add	x1, x1, #0x0
		0000000000002e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x406
    2e1c: f9438929     	ldr	x9, [x9, #0x710]
    2e20: 910013e2     	add	x2, sp, #0x4
    2e24: aa0303f3     	mov	x19, x3
    2e28: f90007e9     	str	x9, [sp, #0x8]
    2e2c: f9404c15     	ldr	x21, [x0, #0x98]
    2e30: aa0803e0     	mov	x0, x8
    2e34: b90007ff     	str	wzr, [sp, #0x4]
    2e38: 94000000     	bl	0x2e38 <aw22xxx_multi_breath_pattern_store+0x44>
		0000000000002e38:  R_AARCH64_CALL26	sscanf
    2e3c: 7100041f     	cmp	w0, #0x1
    2e40: 540003e1     	b.ne	0x2ebc <aw22xxx_multi_breath_pattern_store+0xc8>
    2e44: b94007e8     	ldr	w8, [sp, #0x4]
    2e48: d10042b4     	sub	x20, x21, #0x10
    2e4c: b902faa8     	str	w8, [x21, #0x2f8]
    2e50: 340003a8     	cbz	w8, 0x2ec4 <aw22xxx_multi_breath_pattern_store+0xd0>
    2e54: 7100051f     	cmp	w8, #0x1
    2e58: 54000681     	b.ne	0x2f28 <aw22xxx_multi_breath_pattern_store+0x134>
    2e5c: 90000015     	adrp	x21, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002e5c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18728
    2e60: 90000009     	adrp	x9, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002e60:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18724
    2e64: 394002a8     	ldrb	w8, [x21]
		0000000000002e64:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18728
    2e68: b900013f     	str	wzr, [x9]
		0000000000002e68:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18724
    2e6c: 370005e8     	tbnz	w8, #0x0, 0x2f28 <aw22xxx_multi_breath_pattern_store+0x134>
    2e70: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002e70:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x80
    2e74: b9400108     	ldr	w8, [x8]
		0000000000002e74:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x80
    2e78: 34000588     	cbz	w8, 0x2f28 <aw22xxx_multi_breath_pattern_store+0x134>
    2e7c: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002e7c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2f7c
    2e80: 91000000     	add	x0, x0, #0x0
		0000000000002e80:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2f7c
    2e84: 90000003     	adrp	x3, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85e
    2e88: 91000063     	add	x3, x3, #0x0
		0000000000002e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85e
    2e8c: aa1403e1     	mov	x1, x20
    2e90: 12800002     	mov	w2, #-0x1               // =-1
    2e94: 94000000     	bl	0x2e94 <aw22xxx_multi_breath_pattern_store+0xa0>
		0000000000002e94:  R_AARCH64_CALL26	kthread_create_on_node
    2e98: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002e98:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18730
    2e9c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    2ea0: f9000100     	str	x0, [x8]
		0000000000002ea0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18730
    2ea4: 540005a9     	b.ls	0x2f58 <aw22xxx_multi_breath_pattern_store+0x164>
    2ea8: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1778
    2eac: 91000000     	add	x0, x0, #0x0
		0000000000002eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1778
    2eb0: 390002bf     	strb	wzr, [x21]
		0000000000002eb0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18728
    2eb4: 94000000     	bl	0x2eb4 <aw22xxx_multi_breath_pattern_store+0xc0>
		0000000000002eb4:  R_AARCH64_CALL26	_printk
    2eb8: 1400001c     	b	0x2f28 <aw22xxx_multi_breath_pattern_store+0x134>
    2ebc: 928002b3     	mov	x19, #-0x16             // =-22
    2ec0: 1400001a     	b	0x2f28 <aw22xxx_multi_breath_pattern_store+0x134>
    2ec4: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002ec4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18728
    2ec8: 9000000a     	adrp	x10, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002ec8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18724
    2ecc: 39400109     	ldrb	w9, [x8]
		0000000000002ecc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18728
    2ed0: b900015f     	str	wzr, [x10]
		0000000000002ed0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18724
    2ed4: 9000000a     	adrp	x10, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002ed4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x80
    2ed8: b900015f     	str	wzr, [x10]
		0000000000002ed8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x80
    2edc: 7100053f     	cmp	w9, #0x1
    2ee0: 54000041     	b.ne	0x2ee8 <aw22xxx_multi_breath_pattern_store+0xf4>
    2ee4: 3900011f     	strb	wzr, [x8]
		0000000000002ee4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18728
    2ee8: aa1403e0     	mov	x0, x20
    2eec: 52801fe1     	mov	w1, #0xff               // =255
    2ef0: 2a1f03e2     	mov	w2, wzr
    2ef4: 97fff45b     	bl	0x60 <aw22xxx_i2c_write>
    2ef8: aa1403e0     	mov	x0, x20
    2efc: 528000a1     	mov	w1, #0x5                // =5
    2f00: 2a1f03e2     	mov	w2, wzr
    2f04: 97fff457     	bl	0x60 <aw22xxx_i2c_write>
    2f08: aa1403e0     	mov	x0, x20
    2f0c: 52800081     	mov	w1, #0x4                // =4
    2f10: 52800022     	mov	w2, #0x1                // =1
    2f14: 97fff453     	bl	0x60 <aw22xxx_i2c_write>
    2f18: aa1403e0     	mov	x0, x20
    2f1c: 52800041     	mov	w1, #0x2                // =2
    2f20: 2a1f03e2     	mov	w2, wzr
    2f24: 97fff44f     	bl	0x60 <aw22xxx_i2c_write>
    2f28: d5384108     	mrs	x8, SP_EL0
    2f2c: f9438908     	ldr	x8, [x8, #0x710]
    2f30: f94007e9     	ldr	x9, [sp, #0x8]
    2f34: eb09011f     	cmp	x8, x9
    2f38: 540001e1     	b.ne	0x2f74 <aw22xxx_multi_breath_pattern_store+0x180>
    2f3c: aa1303e0     	mov	x0, x19
    2f40: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2f44: f94013f5     	ldr	x21, [sp, #0x20]
    2f48: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2f4c: 910103ff     	add	sp, sp, #0x40
    2f50: d50323bf     	autiasp
    2f54: d65f03c0     	ret
    2f58: 94000000     	bl	0x2f58 <aw22xxx_multi_breath_pattern_store+0x164>
		0000000000002f58:  R_AARCH64_CALL26	wake_up_process
    2f5c: 52800028     	mov	w8, #0x1                // =1
    2f60: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x420
    2f64: 91000000     	add	x0, x0, #0x0
		0000000000002f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x420
    2f68: 390002a8     	strb	w8, [x21]
		0000000000002f68:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18728
    2f6c: 94000000     	bl	0x2f6c <aw22xxx_multi_breath_pattern_store+0x178>
		0000000000002f6c:  R_AARCH64_CALL26	_printk
    2f70: 17ffffee     	b	0x2f28 <aw22xxx_multi_breath_pattern_store+0x134>
    2f74: 94000000     	bl	0x2f74 <aw22xxx_multi_breath_pattern_store+0x180>
		0000000000002f74:  R_AARCH64_CALL26	__stack_chk_fail
