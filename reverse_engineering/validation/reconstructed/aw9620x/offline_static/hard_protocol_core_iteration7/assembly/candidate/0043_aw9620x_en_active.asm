
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006e04 <aw9620x_en_active>:
    6e04: d503233f     	paciasp
    6e08: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    6e0c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    6e10: 910003fd     	mov	x29, sp
    6e14: f9401801     	ldr	x1, [x0, #0x30]
    6e18: aa0003f3     	mov	x19, x0
    6e1c: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006e1c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    6e20: 91000000     	add	x0, x0, #0x0
		0000000000006e20:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    6e24: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006e24:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    6e28: 91000042     	add	x2, x2, #0x0
		0000000000006e28:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    6e2c: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006e2c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x30c1
    6e30: 91000063     	add	x3, x3, #0x0
		0000000000006e30:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x30c1
    6e34: 528170a4     	mov	w4, #0xb85              // =2949
    6e38: 94000000     	bl	0x6e38 <aw9620x_en_active+0x34>
		0000000000006e38:  R_AARCH64_CALL26	_dev_printk
    6e3c: aa1303e0     	mov	x0, x19
    6e40: 52888101     	mov	w1, #0x4408             // =17416
    6e44: 52800042     	mov	w2, #0x2                // =2
    6e48: 52800054     	mov	w20, #0x2               // =2
    6e4c: 97ffea71     	bl	0x1810 <aw9620x_i2c_write>
		0000000000006e4c:  R_AARCH64_CALL26	aw9620x_i2c_write
    6e50: 35000440     	cbnz	w0, 0x6ed8 <aw9620x_en_active+0xd4>
    6e54: f9401a61     	ldr	x1, [x19, #0x30]
    6e58: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006e58:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    6e5c: 91000000     	add	x0, x0, #0x0
		0000000000006e5c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    6e60: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006e60:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x74
    6e64: 91000042     	add	x2, x2, #0x0
		0000000000006e64:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x74
    6e68: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006e68:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x30c1
    6e6c: 91000063     	add	x3, x3, #0x0
		0000000000006e6c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x30c1
    6e70: 528171c4     	mov	w4, #0xb8e              // =2958
    6e74: 52888105     	mov	w5, #0x4408             // =17416
    6e78: 52800026     	mov	w6, #0x1                // =1
    6e7c: b9001274     	str	w20, [x19, #0x10]
    6e80: 94000000     	bl	0x6e80 <aw9620x_en_active+0x7c>
		0000000000006e80:  R_AARCH64_CALL26	_dev_printk
    6e84: b9401662     	ldr	w2, [x19, #0x14]
    6e88: aa1303e0     	mov	x0, x19
    6e8c: 52888281     	mov	w1, #0x4414             // =17428
    6e90: 97ffea60     	bl	0x1810 <aw9620x_i2c_write>
		0000000000006e90:  R_AARCH64_CALL26	aw9620x_i2c_write
    6e94: f9401a61     	ldr	x1, [x19, #0x30]
    6e98: b9401666     	ldr	w6, [x19, #0x14]
    6e9c: 35000320     	cbnz	w0, 0x6f00 <aw9620x_en_active+0xfc>
    6ea0: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006ea0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    6ea4: 91000000     	add	x0, x0, #0x0
		0000000000006ea4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    6ea8: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006ea8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x74
    6eac: 91000042     	add	x2, x2, #0x0
		0000000000006eac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x74
    6eb0: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006eb0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x30c1
    6eb4: 91000063     	add	x3, x3, #0x0
		0000000000006eb4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x30c1
    6eb8: 528172c4     	mov	w4, #0xb96              // =2966
    6ebc: 52888285     	mov	w5, #0x4414             // =17428
    6ec0: 94000000     	bl	0x6ec0 <aw9620x_en_active+0xbc>
		0000000000006ec0:  R_AARCH64_CALL26	_dev_printk
    6ec4: 39401668     	ldrb	w8, [x19, #0x5]
    6ec8: 7100051f     	cmp	w8, #0x1
    6ecc: 54000360     	b.eq	0x6f38 <aw9620x_en_active+0x134>
    6ed0: 2a1f03e0     	mov	w0, wzr
    6ed4: 14000015     	b	0x6f28 <aw9620x_en_active+0x124>
    6ed8: f9401a61     	ldr	x1, [x19, #0x30]
    6edc: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006edc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    6ee0: 91000000     	add	x0, x0, #0x0
		0000000000006ee0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    6ee4: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006ee4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2ea9
    6ee8: 91000042     	add	x2, x2, #0x0
		0000000000006ee8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2ea9
    6eec: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006eec:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x30c1
    6ef0: 91000063     	add	x3, x3, #0x0
		0000000000006ef0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x30c1
    6ef4: 52817144     	mov	w4, #0xb8a              // =2954
    6ef8: 94000000     	bl	0x6ef8 <aw9620x_en_active+0xf4>
		0000000000006ef8:  R_AARCH64_CALL26	_dev_printk
    6efc: 1400000a     	b	0x6f24 <aw9620x_en_active+0x120>
    6f00: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006f00:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    6f04: 91000000     	add	x0, x0, #0x0
		0000000000006f04:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    6f08: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006f08:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x74
    6f0c: 91000042     	add	x2, x2, #0x0
		0000000000006f0c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x74
    6f10: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006f10:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x30c1
    6f14: 91000063     	add	x3, x3, #0x0
		0000000000006f14:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x30c1
    6f18: 52817264     	mov	w4, #0xb93              // =2963
    6f1c: 52888285     	mov	w5, #0x4414             // =17428
    6f20: 94000000     	bl	0x6f20 <aw9620x_en_active+0x11c>
		0000000000006f20:  R_AARCH64_CALL26	_dev_printk
    6f24: 12800000     	mov	w0, #-0x1               // =-1
    6f28: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    6f2c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    6f30: d50323bf     	autiasp
    6f34: d65f03c0     	ret
    6f38: f9401a61     	ldr	x1, [x19, #0x30]
    6f3c: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006f3c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    6f40: 91000000     	add	x0, x0, #0x0
		0000000000006f40:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    6f44: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006f44:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x93
    6f48: 91000042     	add	x2, x2, #0x0
		0000000000006f48:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x93
    6f4c: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006f4c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x30c1
    6f50: 91000063     	add	x3, x3, #0x0
		0000000000006f50:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x30c1
    6f54: 52817324     	mov	w4, #0xb99              // =2969
    6f58: 94000000     	bl	0x6f58 <aw9620x_en_active+0x154>
		0000000000006f58:  R_AARCH64_CALL26	_dev_printk
    6f5c: b9401e60     	ldr	w0, [x19, #0x1c]
    6f60: 94000000     	bl	0x6f60 <aw9620x_en_active+0x15c>
		0000000000006f60:  R_AARCH64_CALL26	enable_irq
    6f64: 2a1f03e0     	mov	w0, wzr
    6f68: 3900167f     	strb	wzr, [x19, #0x5]
    6f6c: 17ffffef     	b	0x6f28 <aw9620x_en_active+0x124>
