
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006f74 <aw9620x_i2c_probe>:
    6f74: d503233f     	paciasp
    6f78: d101c3ff     	sub	sp, sp, #0x70
    6f7c: a9037bfd     	stp	x29, x30, [sp, #0x30]
    6f80: a9045ff8     	stp	x24, x23, [sp, #0x40]
    6f84: a90557f6     	stp	x22, x21, [sp, #0x50]
    6f88: a9064ff4     	stp	x20, x19, [sp, #0x60]
    6f8c: 9100c3fd     	add	x29, sp, #0x30
    6f90: d5384108     	mrs	x8, SP_EL0
    6f94: aa0003f5     	mov	x21, x0
    6f98: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ec
    6f9c: 91000000     	add	x0, x0, #0x0
		0000000000006f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ec
    6fa0: f9438908     	ldr	x8, [x8, #0x710]
    6fa4: 90000001     	adrp	x1, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    6fa8: 91000021     	add	x1, x1, #0x0
		0000000000006fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    6fac: f81f83a8     	stur	x8, [x29, #-0x8]
    6fb0: 390033ff     	strb	wzr, [sp, #0xc]
    6fb4: 94000000     	bl	0x6fb4 <aw9620x_i2c_probe+0x40>
		0000000000006fb4:  R_AARCH64_CALL26	_printk
    6fb8: f9400ea0     	ldr	x0, [x21, #0x18]
    6fbc: f9400808     	ldr	x8, [x0, #0x10]
    6fc0: f9401108     	ldr	x8, [x8, #0x20]
    6fc4: b85fc110     	ldur	w16, [x8, #-0x4]
    6fc8: 729d62d1     	movk	w17, #0xeb16
    6fcc: 72af9851     	movk	w17, #0x7cc2, lsl #16
    6fd0: 6b11021f     	cmp	w16, w17
    6fd4: 54000040     	b.eq	0x6fdc <aw9620x_i2c_probe+0x68>
    6fd8: d4304500     	brk	#0x8228
    6fdc: d63f0100     	blr	x8
    6fe0: 910082b4     	add	x20, x21, #0x20
    6fe4: 37000180     	tbnz	w0, #0x0, 0x7014 <aw9620x_i2c_probe+0xa0>
    6fe8: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6fec: 91000000     	add	x0, x0, #0x0
		0000000000006fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6ff0: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11bb
    6ff4: 91000042     	add	x2, x2, #0x0
		0000000000006ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11bb
    6ff8: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    6ffc: 91000063     	add	x3, x3, #0x0
		0000000000006ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7000: aa1403e1     	mov	x1, x20
    7004: 52821764     	mov	w4, #0x10bb             // =4283
    7008: 94000000     	bl	0x7008 <aw9620x_i2c_probe+0x94>
		0000000000007008:  R_AARCH64_CALL26	_dev_printk
    700c: 12800095     	mov	w21, #-0x5              // =-5
    7010: 1400005a     	b	0x7178 <aw9620x_i2c_probe+0x204>
    7014: aa1403e0     	mov	x0, x20
    7018: 52806801     	mov	w1, #0x340              // =832
    701c: 5281b802     	mov	w2, #0xdc0              // =3520
    7020: 94000000     	bl	0x7020 <aw9620x_i2c_probe+0xac>
		0000000000007020:  R_AARCH64_CALL26	devm_kmalloc
    7024: b5000180     	cbnz	x0, 0x7054 <aw9620x_i2c_probe+0xe0>
    7028: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    702c: 91000000     	add	x0, x0, #0x0
		000000000000702c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7030: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aee
    7034: 91000042     	add	x2, x2, #0x0
		0000000000007034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aee
    7038: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    703c: 91000063     	add	x3, x3, #0x0
		000000000000703c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7040: aa1403e1     	mov	x1, x20
    7044: 52821824     	mov	w4, #0x10c1             // =4289
    7048: 94000000     	bl	0x7048 <aw9620x_i2c_probe+0xd4>
		0000000000007048:  R_AARCH64_CALL26	_dev_printk
    704c: 12800015     	mov	w21, #-0x1              // =-1
    7050: 1400004a     	b	0x7178 <aw9620x_i2c_probe+0x204>
    7054: aa0003f3     	mov	x19, x0
    7058: a902d015     	stp	x21, x20, [x0, #0x28]
    705c: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000705c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d1f
    7060: 91000021     	add	x1, x1, #0x0
		0000000000007060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d1f
    7064: f9005ea0     	str	x0, [x21, #0xb8]
    7068: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007068:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    706c: 91000000     	add	x0, x0, #0x0
		000000000000706c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
    7070: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007070:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
    7074: 91000042     	add	x2, x2, #0x0
		0000000000007074:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x38
    7078: 94000000     	bl	0x7078 <aw9620x_i2c_probe+0x104>
		0000000000007078:  R_AARCH64_CALL26	__mutex_init
    707c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000707c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    7080: 91000000     	add	x0, x0, #0x0
		0000000000007080:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x40
    7084: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x421
    7088: 91000021     	add	x1, x1, #0x0
		0000000000007088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x421
    708c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000708c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x39
    7090: 91000042     	add	x2, x2, #0x0
		0000000000007090:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x39
    7094: 94000000     	bl	0x7094 <aw9620x_i2c_probe+0x120>
		0000000000007094:  R_AARCH64_CALL26	__mutex_init
    7098: f94186b5     	ldr	x21, [x21, #0x308]
    709c: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000709c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f23
    70a0: 91000021     	add	x1, x1, #0x0
		00000000000070a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f23
    70a4: 91002262     	add	x2, x19, #0x8
    70a8: 52800023     	mov	w3, #0x1                // =1
    70ac: aa1f03e4     	mov	x4, xzr
    70b0: aa1503e0     	mov	x0, x21
    70b4: 94000000     	bl	0x70b4 <aw9620x_i2c_probe+0x140>
		00000000000070b4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    70b8: f9401a61     	ldr	x1, [x19, #0x30]
    70bc: 37f80380     	tbnz	w0, #0x1f, 0x712c <aw9620x_i2c_probe+0x1b8>
    70c0: b9400a65     	ldr	w5, [x19, #0x8]
    70c4: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000070c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    70c8: 91000000     	add	x0, x0, #0x0
		00000000000070c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    70cc: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000070cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1960
    70d0: 91000042     	add	x2, x2, #0x0
		00000000000070d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1960
    70d4: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000070d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bf7
    70d8: 91000063     	add	x3, x3, #0x0
		00000000000070d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bf7
    70dc: 52805784     	mov	w4, #0x2bc              // =700
    70e0: 94000000     	bl	0x70e0 <aw9620x_i2c_probe+0x16c>
		00000000000070e0:  R_AARCH64_CALL26	_dev_printk
    70e4: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000070e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2edd
    70e8: 91000021     	add	x1, x1, #0x0
		00000000000070e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2edd
    70ec: aa1503e0     	mov	x0, x21
    70f0: 2a1f03e2     	mov	w2, wzr
    70f4: 94000000     	bl	0x70f4 <aw9620x_i2c_probe+0x180>
		00000000000070f4:  R_AARCH64_CALL26	of_get_named_gpio
    70f8: b9000e60     	str	w0, [x19, #0xc]
    70fc: 36f80580     	tbz	w0, #0x1f, 0x71ac <aw9620x_i2c_probe+0x238>
    7100: 12800008     	mov	w8, #-0x1               // =-1
    7104: f9401a61     	ldr	x1, [x19, #0x30]
    7108: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    710c: 91000000     	add	x0, x0, #0x0
		000000000000710c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7110: b9000e68     	str	w8, [x19, #0xc]
    7114: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c5
    7118: 91000042     	add	x2, x2, #0x0
		0000000000007118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c5
    711c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000711c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bf7
    7120: 91000063     	add	x3, x3, #0x0
		0000000000007120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bf7
    7124: 52805824     	mov	w4, #0x2c1              // =705
    7128: 14000008     	b	0x7148 <aw9620x_i2c_probe+0x1d4>
    712c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000712c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7130: 91000000     	add	x0, x0, #0x0
		0000000000007130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7134: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b7a
    7138: 91000042     	add	x2, x2, #0x0
		0000000000007138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b7a
    713c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000713c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bf7
    7140: 91000063     	add	x3, x3, #0x0
		0000000000007140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bf7
    7144: 52805724     	mov	w4, #0x2b9              // =697
    7148: 94000000     	bl	0x7148 <aw9620x_i2c_probe+0x1d4>
		0000000000007148:  R_AARCH64_CALL26	_dev_printk
    714c: f9401a61     	ldr	x1, [x19, #0x30]
    7150: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7154: 91000000     	add	x0, x0, #0x0
		0000000000007154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7158: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2286
    715c: 91000042     	add	x2, x2, #0x0
		000000000000715c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2286
    7160: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7164: 91000063     	add	x3, x3, #0x0
		0000000000007164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7168: 528219e4     	mov	w4, #0x10cf             // =4303
    716c: 12800005     	mov	w5, #-0x1               // =-1
    7170: 12800015     	mov	w21, #-0x1              // =-1
    7174: 94000000     	bl	0x7174 <aw9620x_i2c_probe+0x200>
		0000000000007174:  R_AARCH64_CALL26	_dev_printk
    7178: d5384108     	mrs	x8, SP_EL0
    717c: f9438908     	ldr	x8, [x8, #0x710]
    7180: f85f83a9     	ldur	x9, [x29, #-0x8]
    7184: eb09011f     	cmp	x8, x9
    7188: 54006581     	b.ne	0x7e38 <aw9620x_i2c_probe+0xec4>
    718c: 2a1503e0     	mov	w0, w21
    7190: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    7194: a94557f6     	ldp	x22, x21, [sp, #0x50]
    7198: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    719c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    71a0: 9101c3ff     	add	sp, sp, #0x70
    71a4: d50323bf     	autiasp
    71a8: d65f03c0     	ret
    71ac: f9401a61     	ldr	x1, [x19, #0x30]
    71b0: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000071b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    71b4: 91000000     	add	x0, x0, #0x0
		00000000000071b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    71b8: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000071b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345a
    71bc: 91000042     	add	x2, x2, #0x0
		00000000000071bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345a
    71c0: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000071c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bf7
    71c4: 91000063     	add	x3, x3, #0x0
		00000000000071c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bf7
    71c8: 52805884     	mov	w4, #0x2c4              // =708
    71cc: 94000000     	bl	0x71cc <aw9620x_i2c_probe+0x258>
		00000000000071cc:  R_AARCH64_CALL26	_dev_printk
    71d0: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000071d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x431
    71d4: 91000021     	add	x1, x1, #0x0
		00000000000071d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x431
    71d8: 91006262     	add	x2, x19, #0x18
    71dc: aa1503e0     	mov	x0, x21
    71e0: 52800023     	mov	w3, #0x1                // =1
    71e4: aa1f03e4     	mov	x4, xzr
    71e8: 94000000     	bl	0x71e8 <aw9620x_i2c_probe+0x274>
		00000000000071e8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    71ec: f9401a61     	ldr	x1, [x19, #0x30]
    71f0: 37f80aa0     	tbnz	w0, #0x1f, 0x7344 <aw9620x_i2c_probe+0x3d0>
    71f4: b9401a65     	ldr	w5, [x19, #0x18]
    71f8: 90000016     	adrp	x22, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000071f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    71fc: 910002d6     	add	x22, x22, #0x0
		00000000000071fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    7200: 90000017     	adrp	x23, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bf7
    7204: 910002f7     	add	x23, x23, #0x0
		0000000000007204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bf7
    7208: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e0b
    720c: 91000042     	add	x2, x2, #0x0
		000000000000720c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e0b
    7210: aa1603e0     	mov	x0, x22
    7214: aa1703e3     	mov	x3, x23
    7218: 52805964     	mov	w4, #0x2cb              // =715
    721c: 94000000     	bl	0x721c <aw9620x_i2c_probe+0x2a8>
		000000000000721c:  R_AARCH64_CALL26	_dev_printk
    7220: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ea
    7224: 91000021     	add	x1, x1, #0x0
		0000000000007224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ea
    7228: aa1503e0     	mov	x0, x21
    722c: aa1f03e2     	mov	x2, xzr
    7230: 94000000     	bl	0x7230 <aw9620x_i2c_probe+0x2bc>
		0000000000007230:  R_AARCH64_CALL26	of_find_property
    7234: f9401a61     	ldr	x1, [x19, #0x30]
    7238: f100001f     	cmp	x0, #0x0
    723c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000723c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e4
    7240: 91000042     	add	x2, x2, #0x0
		0000000000007240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e4
    7244: 1a9f07e5     	cset	w5, ne
    7248: aa1603e0     	mov	x0, x22
    724c: aa1703e3     	mov	x3, x23
    7250: 528059c4     	mov	w4, #0x2ce              // =718
    7254: 39000265     	strb	w5, [x19]
    7258: 94000000     	bl	0x7258 <aw9620x_i2c_probe+0x2e4>
		0000000000007258:  R_AARCH64_CALL26	_dev_printk
    725c: f9401a61     	ldr	x1, [x19, #0x30]
    7260: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4e
    7264: 91000063     	add	x3, x3, #0x0
		0000000000007264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4e
    7268: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    726c: 91000000     	add	x0, x0, #0x0
		000000000000726c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7270: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15d8
    7274: 91000042     	add	x2, x2, #0x0
		0000000000007274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15d8
    7278: 52820d04     	mov	w4, #0x1068             // =4200
    727c: aa0303e5     	mov	x5, x3
    7280: 94000000     	bl	0x7280 <aw9620x_i2c_probe+0x30c>
		0000000000007280:  R_AARCH64_CALL26	_dev_printk
    7284: f9401a60     	ldr	x0, [x19, #0x30]
    7288: 94000000     	bl	0x7288 <aw9620x_i2c_probe+0x314>
		0000000000007288:  R_AARCH64_CALL26	devm_pinctrl_get
    728c: aa0003e6     	mov	x6, x0
    7290: f9019260     	str	x0, [x19, #0x320]
    7294: b4000680     	cbz	x0, 0x7364 <aw9620x_i2c_probe+0x3f0>
    7298: b13ffcdf     	cmn	x6, #0xfff
    729c: 54000642     	b.hs	0x7364 <aw9620x_i2c_probe+0x3f0>
    72a0: b8408268     	ldur	w8, [x19, #0x8]
    72a4: 7100051f     	cmp	w8, #0x1
    72a8: 54000740     	b.eq	0x7390 <aw9620x_i2c_probe+0x41c>
    72ac: 35000a88     	cbnz	w8, 0x73fc <aw9620x_i2c_probe+0x488>
    72b0: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000072b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1007
    72b4: 91000021     	add	x1, x1, #0x0
		00000000000072b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1007
    72b8: aa0603e0     	mov	x0, x6
    72bc: 94000000     	bl	0x72bc <aw9620x_i2c_probe+0x348>
		00000000000072bc:  R_AARCH64_CALL26	pinctrl_lookup_state
    72c0: aa0003e7     	mov	x7, x0
    72c4: f9019e60     	str	x0, [x19, #0x338]
    72c8: b4000ba0     	cbz	x0, 0x743c <aw9620x_i2c_probe+0x4c8>
    72cc: b13ffcff     	cmn	x7, #0xfff
    72d0: 54000b62     	b.hs	0x743c <aw9620x_i2c_probe+0x4c8>
    72d4: f9419260     	ldr	x0, [x19, #0x320]
    72d8: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000072d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d
    72dc: 91000021     	add	x1, x1, #0x0
		00000000000072dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d
    72e0: 94000000     	bl	0x72e0 <aw9620x_i2c_probe+0x36c>
		00000000000072e0:  R_AARCH64_CALL26	pinctrl_lookup_state
    72e4: aa0003e7     	mov	x7, x0
    72e8: f9019660     	str	x0, [x19, #0x328]
    72ec: b4000e40     	cbz	x0, 0x74b4 <aw9620x_i2c_probe+0x540>
    72f0: b13ffcff     	cmn	x7, #0xfff
    72f4: 54000e02     	b.hs	0x74b4 <aw9620x_i2c_probe+0x540>
    72f8: f9419260     	ldr	x0, [x19, #0x320]
    72fc: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000072fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d
    7300: 91000021     	add	x1, x1, #0x0
		0000000000007300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d
    7304: 94000000     	bl	0x7304 <aw9620x_i2c_probe+0x390>
		0000000000007304:  R_AARCH64_CALL26	pinctrl_lookup_state
    7308: aa0003e7     	mov	x7, x0
    730c: f9019a60     	str	x0, [x19, #0x330]
    7310: b4000060     	cbz	x0, 0x731c <aw9620x_i2c_probe+0x3a8>
    7314: b13ffcff     	cmn	x7, #0xfff
    7318: 54000723     	b.lo	0x73fc <aw9620x_i2c_probe+0x488>
    731c: f9401a61     	ldr	x1, [x19, #0x30]
    7320: b9400a66     	ldr	w6, [x19, #0x8]
    7324: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7328: 91000000     	add	x0, x0, #0x0
		0000000000007328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    732c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000732c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b98
    7330: 91000042     	add	x2, x2, #0x0
		0000000000007330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b98
    7334: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4e
    7338: 91000063     	add	x3, x3, #0x0
		0000000000007338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4e
    733c: 528210c4     	mov	w4, #0x1086             // =4230
    7340: 1400007a     	b	0x7528 <aw9620x_i2c_probe+0x5b4>
    7344: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7348: 91000000     	add	x0, x0, #0x0
		0000000000007348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    734c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000734c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2c
    7350: 91000042     	add	x2, x2, #0x0
		0000000000007350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2c
    7354: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bf7
    7358: 91000063     	add	x3, x3, #0x0
		0000000000007358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bf7
    735c: 52805904     	mov	w4, #0x2c8              // =712
    7360: 17ffff7a     	b	0x7148 <aw9620x_i2c_probe+0x1d4>
    7364: f9401a61     	ldr	x1, [x19, #0x30]
    7368: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4e
    736c: 91000063     	add	x3, x3, #0x0
		000000000000736c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4e
    7370: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7374: 91000000     	add	x0, x0, #0x0
		0000000000007374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7378: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1f
    737c: 91000042     	add	x2, x2, #0x0
		000000000000737c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1f
    7380: 52820da4     	mov	w4, #0x106d             // =4205
    7384: aa0303e5     	mov	x5, x3
    7388: 94000000     	bl	0x7388 <aw9620x_i2c_probe+0x414>
		0000000000007388:  R_AARCH64_CALL26	_dev_printk
    738c: 1400006b     	b	0x7538 <aw9620x_i2c_probe+0x5c4>
    7390: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250
    7394: 91000021     	add	x1, x1, #0x0
		0000000000007394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250
    7398: aa0603e0     	mov	x0, x6
    739c: 94000000     	bl	0x739c <aw9620x_i2c_probe+0x428>
		000000000000739c:  R_AARCH64_CALL26	pinctrl_lookup_state
    73a0: aa0003e7     	mov	x7, x0
    73a4: f9019e60     	str	x0, [x19, #0x338]
    73a8: b40005e0     	cbz	x0, 0x7464 <aw9620x_i2c_probe+0x4f0>
    73ac: b13ffcff     	cmn	x7, #0xfff
    73b0: 540005a2     	b.hs	0x7464 <aw9620x_i2c_probe+0x4f0>
    73b4: f9419260     	ldr	x0, [x19, #0x320]
    73b8: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000073b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bd5
    73bc: 91000021     	add	x1, x1, #0x0
		00000000000073bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bd5
    73c0: 94000000     	bl	0x73c0 <aw9620x_i2c_probe+0x44c>
		00000000000073c0:  R_AARCH64_CALL26	pinctrl_lookup_state
    73c4: aa0003e7     	mov	x7, x0
    73c8: f9019660     	str	x0, [x19, #0x328]
    73cc: b4000880     	cbz	x0, 0x74dc <aw9620x_i2c_probe+0x568>
    73d0: b13ffcff     	cmn	x7, #0xfff
    73d4: 54000842     	b.hs	0x74dc <aw9620x_i2c_probe+0x568>
    73d8: f9419260     	ldr	x0, [x19, #0x320]
    73dc: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000073dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1605
    73e0: 91000021     	add	x1, x1, #0x0
		00000000000073e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1605
    73e4: 94000000     	bl	0x73e4 <aw9620x_i2c_probe+0x470>
		00000000000073e4:  R_AARCH64_CALL26	pinctrl_lookup_state
    73e8: aa0003e7     	mov	x7, x0
    73ec: f9019a60     	str	x0, [x19, #0x330]
    73f0: b40008a0     	cbz	x0, 0x7504 <aw9620x_i2c_probe+0x590>
    73f4: b13ffcff     	cmn	x7, #0xfff
    73f8: 54000862     	b.hs	0x7504 <aw9620x_i2c_probe+0x590>
    73fc: f9419260     	ldr	x0, [x19, #0x320]
    7400: b40009e0     	cbz	x0, 0x753c <aw9620x_i2c_probe+0x5c8>
    7404: f9419661     	ldr	x1, [x19, #0x328]
    7408: 94000000     	bl	0x7408 <aw9620x_i2c_probe+0x494>
		0000000000007408:  R_AARCH64_CALL26	pinctrl_select_state
    740c: f9401a61     	ldr	x1, [x19, #0x30]
    7410: b9400a66     	ldr	w6, [x19, #0x8]
    7414: 2a0003e7     	mov	w7, w0
    7418: 36f803a0     	tbz	w0, #0x1f, 0x748c <aw9620x_i2c_probe+0x518>
    741c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000741c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7420: 91000000     	add	x0, x0, #0x0
		0000000000007420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7424: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27a7
    7428: 91000042     	add	x2, x2, #0x0
		0000000000007428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27a7
    742c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000742c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7430: 91000063     	add	x3, x3, #0x0
		0000000000007430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7434: 52821b24     	mov	w4, #0x10d9             // =4313
    7438: 1400001c     	b	0x74a8 <aw9620x_i2c_probe+0x534>
    743c: f9401a61     	ldr	x1, [x19, #0x30]
    7440: b9400a66     	ldr	w6, [x19, #0x8]
    7444: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7448: 91000000     	add	x0, x0, #0x0
		0000000000007448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    744c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000744c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25f5
    7450: 91000042     	add	x2, x2, #0x0
		0000000000007450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25f5
    7454: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4e
    7458: 91000063     	add	x3, x3, #0x0
		0000000000007458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4e
    745c: 52820ea4     	mov	w4, #0x1075             // =4213
    7460: 14000032     	b	0x7528 <aw9620x_i2c_probe+0x5b4>
    7464: f9401a61     	ldr	x1, [x19, #0x30]
    7468: b9400a66     	ldr	w6, [x19, #0x8]
    746c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000746c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7470: 91000000     	add	x0, x0, #0x0
		0000000000007470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7474: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25f5
    7478: 91000042     	add	x2, x2, #0x0
		0000000000007478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25f5
    747c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000747c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4e
    7480: 91000063     	add	x3, x3, #0x0
		0000000000007480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4e
    7484: 528211e4     	mov	w4, #0x108f             // =4239
    7488: 14000028     	b	0x7528 <aw9620x_i2c_probe+0x5b4>
    748c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000748c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    7490: 91000000     	add	x0, x0, #0x0
		0000000000007490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7494: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f0
    7498: 91000042     	add	x2, x2, #0x0
		0000000000007498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f0
    749c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000749c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    74a0: 91000063     	add	x3, x3, #0x0
		00000000000074a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    74a4: 52821b64     	mov	w4, #0x10db             // =4315
    74a8: aa0303e5     	mov	x5, x3
    74ac: 94000000     	bl	0x74ac <aw9620x_i2c_probe+0x538>
		00000000000074ac:  R_AARCH64_CALL26	_dev_printk
    74b0: 14000023     	b	0x753c <aw9620x_i2c_probe+0x5c8>
    74b4: f9401a61     	ldr	x1, [x19, #0x30]
    74b8: b9400a66     	ldr	w6, [x19, #0x8]
    74bc: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000074bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    74c0: 91000000     	add	x0, x0, #0x0
		00000000000074c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    74c4: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000074c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d7
    74c8: 91000042     	add	x2, x2, #0x0
		00000000000074c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d7
    74cc: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000074cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4e
    74d0: 91000063     	add	x3, x3, #0x0
		00000000000074d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4e
    74d4: 52820fc4     	mov	w4, #0x107e             // =4222
    74d8: 14000014     	b	0x7528 <aw9620x_i2c_probe+0x5b4>
    74dc: f9401a61     	ldr	x1, [x19, #0x30]
    74e0: b9400a66     	ldr	w6, [x19, #0x8]
    74e4: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000074e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    74e8: 91000000     	add	x0, x0, #0x0
		00000000000074e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    74ec: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000074ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d7
    74f0: 91000042     	add	x2, x2, #0x0
		00000000000074f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d7
    74f4: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000074f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4e
    74f8: 91000063     	add	x3, x3, #0x0
		00000000000074f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4e
    74fc: 52821304     	mov	w4, #0x1098             // =4248
    7500: 1400000a     	b	0x7528 <aw9620x_i2c_probe+0x5b4>
    7504: f9401a61     	ldr	x1, [x19, #0x30]
    7508: b9400a66     	ldr	w6, [x19, #0x8]
    750c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000750c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7510: 91000000     	add	x0, x0, #0x0
		0000000000007510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7514: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b98
    7518: 91000042     	add	x2, x2, #0x0
		0000000000007518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b98
    751c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000751c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4e
    7520: 91000063     	add	x3, x3, #0x0
		0000000000007520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4e
    7524: 52821404     	mov	w4, #0x10a0             // =4256
    7528: aa0303e5     	mov	x5, x3
    752c: 94000000     	bl	0x752c <aw9620x_i2c_probe+0x5b8>
		000000000000752c:  R_AARCH64_CALL26	_dev_printk
    7530: f9419260     	ldr	x0, [x19, #0x320]
    7534: 94000000     	bl	0x7534 <aw9620x_i2c_probe+0x5c0>
		0000000000007534:  R_AARCH64_CALL26	devm_pinctrl_put
    7538: f901927f     	str	xzr, [x19, #0x320]
    753c: f9401a61     	ldr	x1, [x19, #0x30]
    7540: 90000015     	adrp	x21, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    7544: 910002b5     	add	x21, x21, #0x0
		0000000000007544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7548: 90000016     	adrp	x22, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe46
    754c: 910002d6     	add	x22, x22, #0x0
		000000000000754c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe46
    7550: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3479
    7554: 91000042     	add	x2, x2, #0x0
		0000000000007554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3479
    7558: aa1503e0     	mov	x0, x21
    755c: aa1603e3     	mov	x3, x22
    7560: 52805b24     	mov	w4, #0x2d9              // =729
    7564: b90023ff     	str	wzr, [sp, #0x20]
    7568: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    756c: 94000000     	bl	0x756c <aw9620x_i2c_probe+0x5f8>
		000000000000756c:  R_AARCH64_CALL26	_dev_printk
    7570: b9400a63     	ldr	w3, [x19, #0x8]
    7574: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11df
    7578: 91000042     	add	x2, x2, #0x0
		0000000000007578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11df
    757c: 910043e0     	add	x0, sp, #0x10
    7580: 52800281     	mov	w1, #0x14               // =20
    7584: 94000000     	bl	0x7584 <aw9620x_i2c_probe+0x610>
		0000000000007584:  R_AARCH64_CALL26	snprintf
    7588: f9401a61     	ldr	x1, [x19, #0x30]
    758c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000758c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x349b
    7590: 91000042     	add	x2, x2, #0x0
		0000000000007590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x349b
    7594: 910043e5     	add	x5, sp, #0x10
    7598: aa1503e0     	mov	x0, x21
    759c: aa1603e3     	mov	x3, x22
    75a0: 52805b84     	mov	w4, #0x2dc              // =732
    75a4: 94000000     	bl	0x75a4 <aw9620x_i2c_probe+0x630>
		00000000000075a4:  R_AARCH64_CALL26	_dev_printk
    75a8: f9401a60     	ldr	x0, [x19, #0x30]
    75ac: 910043e1     	add	x1, sp, #0x10
    75b0: 94000000     	bl	0x75b0 <aw9620x_i2c_probe+0x63c>
		00000000000075b0:  R_AARCH64_CALL26	regulator_get
    75b4: aa0003f5     	mov	x21, x0
    75b8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    75bc: f900fe60     	str	x0, [x19, #0x1f8]
    75c0: 540001a9     	b.ls	0x75f4 <aw9620x_i2c_probe+0x680>
    75c4: f9401a61     	ldr	x1, [x19, #0x30]
    75c8: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000075c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    75cc: 91000000     	add	x0, x0, #0x0
		00000000000075cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    75d0: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000075d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1619
    75d4: 91000042     	add	x2, x2, #0x0
		00000000000075d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1619
    75d8: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000075d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe46
    75dc: 91000063     	add	x3, x3, #0x0
		00000000000075dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe46
    75e0: 52805c24     	mov	w4, #0x2e1              // =737
    75e4: 2a1503e5     	mov	w5, w21
    75e8: 94000000     	bl	0x75e8 <aw9620x_i2c_probe+0x674>
		00000000000075e8:  R_AARCH64_CALL26	_dev_printk
    75ec: 340001b5     	cbz	w21, 0x7620 <aw9620x_i2c_probe+0x6ac>
    75f0: 14000131     	b	0x7ab4 <aw9620x_i2c_probe+0xb40>
    75f4: aa1503e0     	mov	x0, x21
    75f8: 94000000     	bl	0x75f8 <aw9620x_i2c_probe+0x684>
		00000000000075f8:  R_AARCH64_CALL26	regulator_count_voltages
    75fc: 7100041f     	cmp	w0, #0x1
    7600: 5400010b     	b.lt	0x7620 <aw9620x_i2c_probe+0x6ac>
    7604: f940fe60     	ldr	x0, [x19, #0x1f8]
    7608: 529e1401     	mov	w1, #0xf0a0             // =61600
    760c: 529dd002     	mov	w2, #0xee80             // =61056
    7610: 72a00321     	movk	w1, #0x19, lsl #16
    7614: 72a006c2     	movk	w2, #0x36, lsl #16
    7618: 94000000     	bl	0x7618 <aw9620x_i2c_probe+0x6a4>
		0000000000007618:  R_AARCH64_CALL26	regulator_set_voltage
    761c: 35002320     	cbnz	w0, 0x7a80 <aw9620x_i2c_probe+0xb0c>
    7620: f9401a61     	ldr	x1, [x19, #0x30]
    7624: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    7628: 91000000     	add	x0, x0, #0x0
		0000000000007628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    762c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000762c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1643
    7630: 91000042     	add	x2, x2, #0x0
		0000000000007630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1643
    7634: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc4b
    7638: 91000063     	add	x3, x3, #0x0
		0000000000007638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc4b
    763c: 52805f44     	mov	w4, #0x2fa              // =762
    7640: 94000000     	bl	0x7640 <aw9620x_i2c_probe+0x6cc>
		0000000000007640:  R_AARCH64_CALL26	_dev_printk
    7644: f940fe60     	ldr	x0, [x19, #0x1f8]
    7648: 94000000     	bl	0x7648 <aw9620x_i2c_probe+0x6d4>
		0000000000007648:  R_AARCH64_CALL26	regulator_enable
    764c: 35000080     	cbnz	w0, 0x765c <aw9620x_i2c_probe+0x6e8>
    7650: 52800028     	mov	w8, #0x1                // =1
    7654: 39000668     	strb	w8, [x19, #0x1]
    7658: 1400000b     	b	0x7684 <aw9620x_i2c_probe+0x710>
    765c: f9401a61     	ldr	x1, [x19, #0x30]
    7660: 2a0003e5     	mov	w5, w0
    7664: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7668: 91000000     	add	x0, x0, #0x0
		0000000000007668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    766c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000766c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x326b
    7670: 91000042     	add	x2, x2, #0x0
		0000000000007670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x326b
    7674: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc4b
    7678: 91000063     	add	x3, x3, #0x0
		0000000000007678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc4b
    767c: 52806004     	mov	w4, #0x300              // =768
    7680: 94000000     	bl	0x7680 <aw9620x_i2c_probe+0x70c>
		0000000000007680:  R_AARCH64_CALL26	_dev_printk
    7684: f9401a61     	ldr	x1, [x19, #0x30]
    7688: 90000015     	adrp	x21, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    768c: 910002b5     	add	x21, x21, #0x0
		000000000000768c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7690: 90000016     	adrp	x22, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    7694: 910002d6     	add	x22, x22, #0x0
		0000000000007694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    7698: 528d3ff8     	mov	w24, #0x69ff            // =27135
    769c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		000000000000769c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    76a0: 91000042     	add	x2, x2, #0x0
		00000000000076a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    76a4: aa1503e0     	mov	x0, x21
    76a8: aa1603e3     	mov	x3, x22
    76ac: 52806264     	mov	w4, #0x313              // =787
    76b0: 72a00318     	movk	w24, #0x18, lsl #16
    76b4: 94000000     	bl	0x76b4 <aw9620x_i2c_probe+0x740>
		00000000000076b4:  R_AARCH64_CALL26	_dev_printk
    76b8: f940fe60     	ldr	x0, [x19, #0x1f8]
    76bc: 94000000     	bl	0x76bc <aw9620x_i2c_probe+0x748>
		00000000000076bc:  R_AARCH64_CALL26	regulator_get_voltage
    76c0: f9401a61     	ldr	x1, [x19, #0x30]
    76c4: 2a0003f7     	mov	w23, w0
    76c8: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000076c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    76cc: 91000042     	add	x2, x2, #0x0
		00000000000076cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    76d0: aa1503e0     	mov	x0, x21
    76d4: aa1603e3     	mov	x3, x22
    76d8: 528062e4     	mov	w4, #0x317              // =791
    76dc: 2a1703e5     	mov	w5, w23
    76e0: 94000000     	bl	0x76e0 <aw9620x_i2c_probe+0x76c>
		00000000000076e0:  R_AARCH64_CALL26	_dev_printk
    76e4: 6b1802ff     	cmp	w23, w24
    76e8: 5400146c     	b.gt	0x7974 <aw9620x_i2c_probe+0xa00>
    76ec: 52912b00     	mov	w0, #0x8958             // =35160
    76f0: 72a00820     	movk	w0, #0x41, lsl #16
    76f4: 94000000     	bl	0x76f4 <aw9620x_i2c_probe+0x780>
		00000000000076f4:  R_AARCH64_CALL26	__const_udelay
    76f8: f940fe60     	ldr	x0, [x19, #0x1f8]
    76fc: 94000000     	bl	0x76fc <aw9620x_i2c_probe+0x788>
		00000000000076fc:  R_AARCH64_CALL26	regulator_get_voltage
    7700: f9401a61     	ldr	x1, [x19, #0x30]
    7704: 2a0003f5     	mov	w21, w0
    7708: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    770c: 91000000     	add	x0, x0, #0x0
		000000000000770c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7710: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    7714: 91000042     	add	x2, x2, #0x0
		0000000000007714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    7718: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    771c: 91000063     	add	x3, x3, #0x0
		000000000000771c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    7720: 528062e4     	mov	w4, #0x317              // =791
    7724: 2a1503e5     	mov	w5, w21
    7728: 94000000     	bl	0x7728 <aw9620x_i2c_probe+0x7b4>
		0000000000007728:  R_AARCH64_CALL26	_dev_printk
    772c: 6b1802bf     	cmp	w21, w24
    7730: 5400122c     	b.gt	0x7974 <aw9620x_i2c_probe+0xa00>
    7734: 52912b00     	mov	w0, #0x8958             // =35160
    7738: 72a00820     	movk	w0, #0x41, lsl #16
    773c: 94000000     	bl	0x773c <aw9620x_i2c_probe+0x7c8>
		000000000000773c:  R_AARCH64_CALL26	__const_udelay
    7740: f940fe60     	ldr	x0, [x19, #0x1f8]
    7744: 94000000     	bl	0x7744 <aw9620x_i2c_probe+0x7d0>
		0000000000007744:  R_AARCH64_CALL26	regulator_get_voltage
    7748: f9401a61     	ldr	x1, [x19, #0x30]
    774c: 2a0003f5     	mov	w21, w0
    7750: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    7754: 91000000     	add	x0, x0, #0x0
		0000000000007754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7758: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    775c: 91000042     	add	x2, x2, #0x0
		000000000000775c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    7760: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    7764: 91000063     	add	x3, x3, #0x0
		0000000000007764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    7768: 528062e4     	mov	w4, #0x317              // =791
    776c: 2a1503e5     	mov	w5, w21
    7770: 94000000     	bl	0x7770 <aw9620x_i2c_probe+0x7fc>
		0000000000007770:  R_AARCH64_CALL26	_dev_printk
    7774: 6b1802bf     	cmp	w21, w24
    7778: 54000fec     	b.gt	0x7974 <aw9620x_i2c_probe+0xa00>
    777c: 52912b00     	mov	w0, #0x8958             // =35160
    7780: 72a00820     	movk	w0, #0x41, lsl #16
    7784: 94000000     	bl	0x7784 <aw9620x_i2c_probe+0x810>
		0000000000007784:  R_AARCH64_CALL26	__const_udelay
    7788: f940fe60     	ldr	x0, [x19, #0x1f8]
    778c: 94000000     	bl	0x778c <aw9620x_i2c_probe+0x818>
		000000000000778c:  R_AARCH64_CALL26	regulator_get_voltage
    7790: f9401a61     	ldr	x1, [x19, #0x30]
    7794: 2a0003f5     	mov	w21, w0
    7798: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    779c: 91000000     	add	x0, x0, #0x0
		000000000000779c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    77a0: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000077a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    77a4: 91000042     	add	x2, x2, #0x0
		00000000000077a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    77a8: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000077a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    77ac: 91000063     	add	x3, x3, #0x0
		00000000000077ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    77b0: 528062e4     	mov	w4, #0x317              // =791
    77b4: 2a1503e5     	mov	w5, w21
    77b8: 94000000     	bl	0x77b8 <aw9620x_i2c_probe+0x844>
		00000000000077b8:  R_AARCH64_CALL26	_dev_printk
    77bc: 6b1802bf     	cmp	w21, w24
    77c0: 54000dac     	b.gt	0x7974 <aw9620x_i2c_probe+0xa00>
    77c4: 52912b00     	mov	w0, #0x8958             // =35160
    77c8: 72a00820     	movk	w0, #0x41, lsl #16
    77cc: 94000000     	bl	0x77cc <aw9620x_i2c_probe+0x858>
		00000000000077cc:  R_AARCH64_CALL26	__const_udelay
    77d0: f940fe60     	ldr	x0, [x19, #0x1f8]
    77d4: 94000000     	bl	0x77d4 <aw9620x_i2c_probe+0x860>
		00000000000077d4:  R_AARCH64_CALL26	regulator_get_voltage
    77d8: f9401a61     	ldr	x1, [x19, #0x30]
    77dc: 2a0003f5     	mov	w21, w0
    77e0: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000077e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    77e4: 91000000     	add	x0, x0, #0x0
		00000000000077e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    77e8: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000077e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    77ec: 91000042     	add	x2, x2, #0x0
		00000000000077ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    77f0: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000077f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    77f4: 91000063     	add	x3, x3, #0x0
		00000000000077f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    77f8: 528062e4     	mov	w4, #0x317              // =791
    77fc: 2a1503e5     	mov	w5, w21
    7800: 94000000     	bl	0x7800 <aw9620x_i2c_probe+0x88c>
		0000000000007800:  R_AARCH64_CALL26	_dev_printk
    7804: 6b1802bf     	cmp	w21, w24
    7808: 54000b6c     	b.gt	0x7974 <aw9620x_i2c_probe+0xa00>
    780c: 52912b00     	mov	w0, #0x8958             // =35160
    7810: 72a00820     	movk	w0, #0x41, lsl #16
    7814: 94000000     	bl	0x7814 <aw9620x_i2c_probe+0x8a0>
		0000000000007814:  R_AARCH64_CALL26	__const_udelay
    7818: f940fe60     	ldr	x0, [x19, #0x1f8]
    781c: 94000000     	bl	0x781c <aw9620x_i2c_probe+0x8a8>
		000000000000781c:  R_AARCH64_CALL26	regulator_get_voltage
    7820: f9401a61     	ldr	x1, [x19, #0x30]
    7824: 2a0003f5     	mov	w21, w0
    7828: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    782c: 91000000     	add	x0, x0, #0x0
		000000000000782c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7830: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    7834: 91000042     	add	x2, x2, #0x0
		0000000000007834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    7838: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    783c: 91000063     	add	x3, x3, #0x0
		000000000000783c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    7840: 528062e4     	mov	w4, #0x317              // =791
    7844: 2a1503e5     	mov	w5, w21
    7848: 94000000     	bl	0x7848 <aw9620x_i2c_probe+0x8d4>
		0000000000007848:  R_AARCH64_CALL26	_dev_printk
    784c: 6b1802bf     	cmp	w21, w24
    7850: 5400092c     	b.gt	0x7974 <aw9620x_i2c_probe+0xa00>
    7854: 52912b00     	mov	w0, #0x8958             // =35160
    7858: 72a00820     	movk	w0, #0x41, lsl #16
    785c: 94000000     	bl	0x785c <aw9620x_i2c_probe+0x8e8>
		000000000000785c:  R_AARCH64_CALL26	__const_udelay
    7860: f940fe60     	ldr	x0, [x19, #0x1f8]
    7864: 94000000     	bl	0x7864 <aw9620x_i2c_probe+0x8f0>
		0000000000007864:  R_AARCH64_CALL26	regulator_get_voltage
    7868: f9401a61     	ldr	x1, [x19, #0x30]
    786c: 2a0003f5     	mov	w21, w0
    7870: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    7874: 91000000     	add	x0, x0, #0x0
		0000000000007874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7878: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    787c: 91000042     	add	x2, x2, #0x0
		000000000000787c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    7880: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    7884: 91000063     	add	x3, x3, #0x0
		0000000000007884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    7888: 528062e4     	mov	w4, #0x317              // =791
    788c: 2a1503e5     	mov	w5, w21
    7890: 94000000     	bl	0x7890 <aw9620x_i2c_probe+0x91c>
		0000000000007890:  R_AARCH64_CALL26	_dev_printk
    7894: 6b1802bf     	cmp	w21, w24
    7898: 540006ec     	b.gt	0x7974 <aw9620x_i2c_probe+0xa00>
    789c: 52912b00     	mov	w0, #0x8958             // =35160
    78a0: 72a00820     	movk	w0, #0x41, lsl #16
    78a4: 94000000     	bl	0x78a4 <aw9620x_i2c_probe+0x930>
		00000000000078a4:  R_AARCH64_CALL26	__const_udelay
    78a8: f940fe60     	ldr	x0, [x19, #0x1f8]
    78ac: 94000000     	bl	0x78ac <aw9620x_i2c_probe+0x938>
		00000000000078ac:  R_AARCH64_CALL26	regulator_get_voltage
    78b0: f9401a61     	ldr	x1, [x19, #0x30]
    78b4: 2a0003f5     	mov	w21, w0
    78b8: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000078b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    78bc: 91000000     	add	x0, x0, #0x0
		00000000000078bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    78c0: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000078c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    78c4: 91000042     	add	x2, x2, #0x0
		00000000000078c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    78c8: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000078c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    78cc: 91000063     	add	x3, x3, #0x0
		00000000000078cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    78d0: 528062e4     	mov	w4, #0x317              // =791
    78d4: 2a1503e5     	mov	w5, w21
    78d8: 94000000     	bl	0x78d8 <aw9620x_i2c_probe+0x964>
		00000000000078d8:  R_AARCH64_CALL26	_dev_printk
    78dc: 6b1802bf     	cmp	w21, w24
    78e0: 540004ac     	b.gt	0x7974 <aw9620x_i2c_probe+0xa00>
    78e4: 52912b00     	mov	w0, #0x8958             // =35160
    78e8: 72a00820     	movk	w0, #0x41, lsl #16
    78ec: 94000000     	bl	0x78ec <aw9620x_i2c_probe+0x978>
		00000000000078ec:  R_AARCH64_CALL26	__const_udelay
    78f0: f940fe60     	ldr	x0, [x19, #0x1f8]
    78f4: 94000000     	bl	0x78f4 <aw9620x_i2c_probe+0x980>
		00000000000078f4:  R_AARCH64_CALL26	regulator_get_voltage
    78f8: f9401a61     	ldr	x1, [x19, #0x30]
    78fc: 2a0003f5     	mov	w21, w0
    7900: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    7904: 91000000     	add	x0, x0, #0x0
		0000000000007904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7908: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    790c: 91000042     	add	x2, x2, #0x0
		000000000000790c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    7910: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    7914: 91000063     	add	x3, x3, #0x0
		0000000000007914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    7918: 528062e4     	mov	w4, #0x317              // =791
    791c: 2a1503e5     	mov	w5, w21
    7920: 94000000     	bl	0x7920 <aw9620x_i2c_probe+0x9ac>
		0000000000007920:  R_AARCH64_CALL26	_dev_printk
    7924: 6b1802bf     	cmp	w21, w24
    7928: 5400026c     	b.gt	0x7974 <aw9620x_i2c_probe+0xa00>
    792c: 52912b00     	mov	w0, #0x8958             // =35160
    7930: 72a00820     	movk	w0, #0x41, lsl #16
    7934: 94000000     	bl	0x7934 <aw9620x_i2c_probe+0x9c0>
		0000000000007934:  R_AARCH64_CALL26	__const_udelay
    7938: f940fe60     	ldr	x0, [x19, #0x1f8]
    793c: 94000000     	bl	0x793c <aw9620x_i2c_probe+0x9c8>
		000000000000793c:  R_AARCH64_CALL26	regulator_get_voltage
    7940: f9401a61     	ldr	x1, [x19, #0x30]
    7944: 2a0003f5     	mov	w21, w0
    7948: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    794c: 91000000     	add	x0, x0, #0x0
		000000000000794c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    7950: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3613
    7954: 91000042     	add	x2, x2, #0x0
		0000000000007954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3613
    7958: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1758
    795c: 91000063     	add	x3, x3, #0x0
		000000000000795c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1758
    7960: 528062e4     	mov	w4, #0x317              // =791
    7964: 2a1503e5     	mov	w5, w21
    7968: 94000000     	bl	0x7968 <aw9620x_i2c_probe+0x9f4>
		0000000000007968:  R_AARCH64_CALL26	_dev_printk
    796c: 6b1802bf     	cmp	w21, w24
    7970: 5400216d     	b.le	0x7d9c <aw9620x_i2c_probe+0xe28>
    7974: 52800320     	mov	w0, #0x19               // =25
    7978: 94000000     	bl	0x7978 <aw9620x_i2c_probe+0xa04>
		0000000000007978:  R_AARCH64_CALL26	msleep
    797c: b9400a68     	ldr	w8, [x19, #0x8]
    7980: 90000009     	adrp	x9, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1a
    7984: 91000129     	add	x9, x9, #0x0
		0000000000007984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1a
    7988: 9000000a     	adrp	x10, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d2
    798c: 9100014a     	add	x10, x10, #0x0
		000000000000798c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d2
    7990: aa1303e1     	mov	x1, x19
    7994: 7100011f     	cmp	w8, #0x0
    7998: aa1f03e2     	mov	x2, xzr
    799c: 9a890148     	csel	x8, x10, x9, eq
    79a0: f8038c28     	str	x8, [x1, #0x38]!
    79a4: f85f8020     	ldur	x0, [x1, #-0x8]
    79a8: 90000008     	adrp	x8, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000079a8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x8014
    79ac: 91000108     	add	x8, x8, #0x0
		00000000000079ac:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x8014
    79b0: f9001028     	str	x8, [x1, #0x20]
    79b4: 94000000     	bl	0x79b4 <aw9620x_i2c_probe+0xa40>
		00000000000079b4:  R_AARCH64_CALL26	devm_led_classdev_register_ext
    79b8: 36f80100     	tbz	w0, #0x1f, 0x79d8 <aw9620x_i2c_probe+0xa64>
    79bc: 2a0003f5     	mov	w21, w0
    79c0: f9401a60     	ldr	x0, [x19, #0x30]
    79c4: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000079c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dc3
    79c8: 91000021     	add	x1, x1, #0x0
		00000000000079c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dc3
    79cc: 2a1503e2     	mov	w2, w21
    79d0: 94000000     	bl	0x79d0 <aw9620x_i2c_probe+0xa5c>
		00000000000079d0:  R_AARCH64_CALL26	_dev_err
    79d4: 17fffde9     	b	0x7178 <aw9620x_i2c_probe+0x204>
    79d8: f9404660     	ldr	x0, [x19, #0x88]
    79dc: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000079dc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x110
    79e0: 91000021     	add	x1, x1, #0x0
		00000000000079e0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x110
    79e4: 94000000     	bl	0x79e4 <aw9620x_i2c_probe+0xa70>
		00000000000079e4:  R_AARCH64_CALL26	sysfs_create_group
    79e8: 36f80180     	tbz	w0, #0x1f, 0x7a18 <aw9620x_i2c_probe+0xaa4>
    79ec: f9401a61     	ldr	x1, [x19, #0x30]
    79f0: 2a0003f5     	mov	w21, w0
    79f4: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000079f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    79f8: 91000000     	add	x0, x0, #0x0
		00000000000079f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    79fc: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		00000000000079fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1de2
    7a00: 91000042     	add	x2, x2, #0x0
		0000000000007a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1de2
    7a04: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7a08: 91000063     	add	x3, x3, #0x0
		0000000000007a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7a0c: 52822084     	mov	w4, #0x1104             // =4356
    7a10: 94000000     	bl	0x7a10 <aw9620x_i2c_probe+0xa9c>
		0000000000007a10:  R_AARCH64_CALL26	_dev_printk
    7a14: 1400007b     	b	0x7c00 <aw9620x_i2c_probe+0xc8c>
    7a18: 910033e1     	add	x1, sp, #0xc
    7a1c: aa1303e0     	mov	x0, x19
    7a20: 9400017e     	bl	0x8018 <aw9620x_input_init>
    7a24: 35000600     	cbnz	w0, 0x7ae4 <aw9620x_i2c_probe+0xb70>
    7a28: aa1303e0     	mov	x0, x19
    7a2c: 94000223     	bl	0x82b8 <aw9620x_irq_init>
    7a30: 350006c0     	cbnz	w0, 0x7b08 <aw9620x_i2c_probe+0xb94>
    7a34: aa1303e0     	mov	x0, x19
    7a38: 940002b6     	bl	0x8510 <aw9620x_old_boot_nvr_modify>
    7a3c: f9401a61     	ldr	x1, [x19, #0x30]
    7a40: 3100041f     	cmn	w0, #0x1
    7a44: 54000740     	b.eq	0x7b2c <aw9620x_i2c_probe+0xbb8>
    7a48: 35000f20     	cbnz	w0, 0x7c2c <aw9620x_i2c_probe+0xcb8>
    7a4c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7a50: 91000000     	add	x0, x0, #0x0
		0000000000007a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7a54: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7b
    7a58: 91000042     	add	x2, x2, #0x0
		0000000000007a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7b
    7a5c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7a60: 91000063     	add	x3, x3, #0x0
		0000000000007a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7a64: 52822324     	mov	w4, #0x1119             // =4377
    7a68: 94000000     	bl	0x7a68 <aw9620x_i2c_probe+0xaf4>
		0000000000007a68:  R_AARCH64_CALL26	_dev_printk
    7a6c: 528000a8     	mov	w8, #0x5                // =5
    7a70: 52800029     	mov	w9, #0x1                // =1
    7a74: 39001a68     	strb	w8, [x19, #0x6]
    7a78: b9002269     	str	w9, [x19, #0x20]
    7a7c: 14000092     	b	0x7cc4 <aw9620x_i2c_probe+0xd50>
    7a80: 2a0003f5     	mov	w21, w0
    7a84: f9401a61     	ldr	x1, [x19, #0x30]
    7a88: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7a8c: 91000000     	add	x0, x0, #0x0
		0000000000007a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7a90: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x172e
    7a94: 91000042     	add	x2, x2, #0x0
		0000000000007a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x172e
    7a98: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe46
    7a9c: 91000063     	add	x3, x3, #0x0
		0000000000007a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe46
    7aa0: 52805d44     	mov	w4, #0x2ea              // =746
    7aa4: 2a1503e5     	mov	w5, w21
    7aa8: 94000000     	bl	0x7aa8 <aw9620x_i2c_probe+0xb34>
		0000000000007aa8:  R_AARCH64_CALL26	_dev_printk
    7aac: f940fe60     	ldr	x0, [x19, #0x1f8]
    7ab0: 94000000     	bl	0x7ab0 <aw9620x_i2c_probe+0xb3c>
		0000000000007ab0:  R_AARCH64_CALL26	regulator_put
    7ab4: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7ab8: 91000000     	add	x0, x0, #0x0
		0000000000007ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7abc: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x192b
    7ac0: 91000042     	add	x2, x2, #0x0
		0000000000007ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x192b
    7ac4: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7ac8: 91000063     	add	x3, x3, #0x0
		0000000000007ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7acc: aa1403e1     	mov	x1, x20
    7ad0: 52821c64     	mov	w4, #0x10e3             // =4323
    7ad4: 94000000     	bl	0x7ad4 <aw9620x_i2c_probe+0xb60>
		0000000000007ad4:  R_AARCH64_CALL26	_dev_printk
    7ad8: 39400668     	ldrb	w8, [x19, #0x1]
    7adc: 350009e8     	cbnz	w8, 0x7c18 <aw9620x_i2c_probe+0xca4>
    7ae0: 17fffda6     	b	0x7178 <aw9620x_i2c_probe+0x204>
    7ae4: f9401a61     	ldr	x1, [x19, #0x30]
    7ae8: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7aec: 91000000     	add	x0, x0, #0x0
		0000000000007aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7af0: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b5f
    7af4: 91000042     	add	x2, x2, #0x0
		0000000000007af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b5f
    7af8: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7afc: 91000063     	add	x3, x3, #0x0
		0000000000007afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7b00: 52822184     	mov	w4, #0x110c             // =4364
    7b04: 14000011     	b	0x7b48 <aw9620x_i2c_probe+0xbd4>
    7b08: f9401a61     	ldr	x1, [x19, #0x30]
    7b0c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7b10: 91000000     	add	x0, x0, #0x0
		0000000000007b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7b14: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3934
    7b18: 91000042     	add	x2, x2, #0x0
		0000000000007b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3934
    7b1c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7b20: 91000063     	add	x3, x3, #0x0
		0000000000007b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7b24: 52822244     	mov	w4, #0x1112             // =4370
    7b28: 14000008     	b	0x7b48 <aw9620x_i2c_probe+0xbd4>
    7b2c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7b30: 91000000     	add	x0, x0, #0x0
		0000000000007b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7b34: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194e
    7b38: 91000042     	add	x2, x2, #0x0
		0000000000007b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194e
    7b3c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7b40: 91000063     	add	x3, x3, #0x0
		0000000000007b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7b44: 528223c4     	mov	w4, #0x111e             // =4382
    7b48: 94000000     	bl	0x7b48 <aw9620x_i2c_probe+0xbd4>
		0000000000007b48:  R_AARCH64_CALL26	_dev_printk
    7b4c: 394033e8     	ldrb	w8, [sp, #0xc]
    7b50: b4000168     	cbz	x8, 0x7b7c <aw9620x_i2c_probe+0xc08>
    7b54: 8b080508     	add	x8, x8, x8, lsl #1
    7b58: aa1f03f6     	mov	x22, xzr
    7b5c: d37ced15     	lsl	x21, x8, #4
    7b60: f9410268     	ldr	x8, [x19, #0x200]
    7b64: 8b160108     	add	x8, x8, x22
    7b68: f9400500     	ldr	x0, [x8, #0x8]
    7b6c: 94000000     	bl	0x7b6c <aw9620x_i2c_probe+0xbf8>
		0000000000007b6c:  R_AARCH64_CALL26	input_unregister_device
    7b70: 9100c2d6     	add	x22, x22, #0x30
    7b74: eb1602bf     	cmp	x21, x22
    7b78: 54ffff41     	b.ne	0x7b60 <aw9620x_i2c_probe+0xbec>
    7b7c: f9410268     	ldr	x8, [x19, #0x200]
    7b80: f9400500     	ldr	x0, [x8, #0x8]
    7b84: b4000060     	cbz	x0, 0x7b90 <aw9620x_i2c_probe+0xc1c>
    7b88: 94000000     	bl	0x7b88 <aw9620x_i2c_probe+0xc14>
		0000000000007b88:  R_AARCH64_CALL26	input_free_device
    7b8c: f9410268     	ldr	x8, [x19, #0x200]
    7b90: f9401d00     	ldr	x0, [x8, #0x38]
    7b94: b4000060     	cbz	x0, 0x7ba0 <aw9620x_i2c_probe+0xc2c>
    7b98: 94000000     	bl	0x7b98 <aw9620x_i2c_probe+0xc24>
		0000000000007b98:  R_AARCH64_CALL26	input_free_device
    7b9c: f9410268     	ldr	x8, [x19, #0x200]
    7ba0: f9403500     	ldr	x0, [x8, #0x68]
    7ba4: b4000060     	cbz	x0, 0x7bb0 <aw9620x_i2c_probe+0xc3c>
    7ba8: 94000000     	bl	0x7ba8 <aw9620x_i2c_probe+0xc34>
		0000000000007ba8:  R_AARCH64_CALL26	input_free_device
    7bac: f9410268     	ldr	x8, [x19, #0x200]
    7bb0: f9404d00     	ldr	x0, [x8, #0x98]
    7bb4: b4000060     	cbz	x0, 0x7bc0 <aw9620x_i2c_probe+0xc4c>
    7bb8: 94000000     	bl	0x7bb8 <aw9620x_i2c_probe+0xc44>
		0000000000007bb8:  R_AARCH64_CALL26	input_free_device
    7bbc: f9410268     	ldr	x8, [x19, #0x200]
    7bc0: f9406500     	ldr	x0, [x8, #0xc8]
    7bc4: b4000060     	cbz	x0, 0x7bd0 <aw9620x_i2c_probe+0xc5c>
    7bc8: 94000000     	bl	0x7bc8 <aw9620x_i2c_probe+0xc54>
		0000000000007bc8:  R_AARCH64_CALL26	input_free_device
    7bcc: f9410268     	ldr	x8, [x19, #0x200]
    7bd0: f9407d00     	ldr	x0, [x8, #0xf8]
    7bd4: b4000060     	cbz	x0, 0x7be0 <aw9620x_i2c_probe+0xc6c>
    7bd8: 94000000     	bl	0x7bd8 <aw9620x_i2c_probe+0xc64>
		0000000000007bd8:  R_AARCH64_CALL26	input_free_device
    7bdc: f9410268     	ldr	x8, [x19, #0x200]
    7be0: f9409500     	ldr	x0, [x8, #0x128]
    7be4: b4000060     	cbz	x0, 0x7bf0 <aw9620x_i2c_probe+0xc7c>
    7be8: 94000000     	bl	0x7be8 <aw9620x_i2c_probe+0xc74>
		0000000000007be8:  R_AARCH64_CALL26	input_free_device
    7bec: f9410268     	ldr	x8, [x19, #0x200]
    7bf0: f940ad00     	ldr	x0, [x8, #0x158]
    7bf4: b4000040     	cbz	x0, 0x7bfc <aw9620x_i2c_probe+0xc88>
    7bf8: 94000000     	bl	0x7bf8 <aw9620x_i2c_probe+0xc84>
		0000000000007bf8:  R_AARCH64_CALL26	input_free_device
    7bfc: 12800015     	mov	w21, #-0x1              // =-1
    7c00: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007c00:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x110
    7c04: 91000021     	add	x1, x1, #0x0
		0000000000007c04:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x110
    7c08: aa1403e0     	mov	x0, x20
    7c0c: 94000000     	bl	0x7c0c <aw9620x_i2c_probe+0xc98>
		0000000000007c0c:  R_AARCH64_CALL26	sysfs_remove_group
    7c10: 39400668     	ldrb	w8, [x19, #0x1]
    7c14: 34ffab28     	cbz	w8, 0x7178 <aw9620x_i2c_probe+0x204>
    7c18: f940fe60     	ldr	x0, [x19, #0x1f8]
    7c1c: 94000000     	bl	0x7c1c <aw9620x_i2c_probe+0xca8>
		0000000000007c1c:  R_AARCH64_CALL26	regulator_disable
    7c20: f940fe60     	ldr	x0, [x19, #0x1f8]
    7c24: 94000000     	bl	0x7c24 <aw9620x_i2c_probe+0xcb0>
		0000000000007c24:  R_AARCH64_CALL26	regulator_put
    7c28: 17fffd54     	b	0x7178 <aw9620x_i2c_probe+0x204>
    7c2c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7c30: 91000000     	add	x0, x0, #0x0
		0000000000007c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7c34: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ecb
    7c38: 91000042     	add	x2, x2, #0x0
		0000000000007c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ecb
    7c3c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7c40: 91000063     	add	x3, x3, #0x0
		0000000000007c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7c44: 52822424     	mov	w4, #0x1121             // =4385
    7c48: 94000000     	bl	0x7c48 <aw9620x_i2c_probe+0xcd4>
		0000000000007c48:  R_AARCH64_CALL26	_dev_printk
    7c4c: aa1303e0     	mov	x0, x19
    7c50: 97fffa64     	bl	0x65e0 <aw9620x_read_chipid>
    7c54: f9401a61     	ldr	x1, [x19, #0x30]
    7c58: 3100081f     	cmn	w0, #0x2
    7c5c: 540001e0     	b.eq	0x7c98 <aw9620x_i2c_probe+0xd24>
    7c60: 3100041f     	cmn	w0, #0x1
    7c64: 540003c1     	b.ne	0x7cdc <aw9620x_i2c_probe+0xd68>
    7c68: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7c6c: 91000000     	add	x0, x0, #0x0
		0000000000007c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7c70: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe20
    7c74: 91000042     	add	x2, x2, #0x0
		0000000000007c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe20
    7c78: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7c7c: 91000063     	add	x3, x3, #0x0
		0000000000007c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7c80: 528224e4     	mov	w4, #0x1127             // =4391
    7c84: 12800005     	mov	w5, #-0x1               // =-1
    7c88: 94000000     	bl	0x7c88 <aw9620x_i2c_probe+0xd14>
		0000000000007c88:  R_AARCH64_CALL26	_dev_printk
    7c8c: 394033e8     	ldrb	w8, [sp, #0xc]
    7c90: b5fff628     	cbnz	x8, 0x7b54 <aw9620x_i2c_probe+0xbe0>
    7c94: 17ffffba     	b	0x7b7c <aw9620x_i2c_probe+0xc08>
    7c98: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7c9c: 91000000     	add	x0, x0, #0x0
		0000000000007c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7ca0: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe20
    7ca4: 91000042     	add	x2, x2, #0x0
		0000000000007ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe20
    7ca8: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7cac: 91000063     	add	x3, x3, #0x0
		0000000000007cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7cb0: 52822544     	mov	w4, #0x112a             // =4394
    7cb4: 12800025     	mov	w5, #-0x2               // =-2
    7cb8: 94000000     	bl	0x7cb8 <aw9620x_i2c_probe+0xd44>
		0000000000007cb8:  R_AARCH64_CALL26	_dev_printk
    7cbc: 52800048     	mov	w8, #0x2                // =2
    7cc0: 39001a68     	strb	w8, [x19, #0x6]
    7cc4: aa1303e0     	mov	x0, x19
    7cc8: 94000000     	bl	0x7cc8 <aw9620x_i2c_probe+0xd54>
		0000000000007cc8:  R_AARCH64_CALL26	aw9620x_update
    7ccc: 52800048     	mov	w8, #0x2                // =2
    7cd0: 2a1f03f5     	mov	w21, wzr
    7cd4: 390a8268     	strb	w8, [x19, #0x2a0]
    7cd8: 17fffd28     	b	0x7178 <aw9620x_i2c_probe+0x204>
    7cdc: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7ce0: 91000000     	add	x0, x0, #0x0
		0000000000007ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7ce4: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27e6
    7ce8: 91000042     	add	x2, x2, #0x0
		0000000000007ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27e6
    7cec: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7cf0: 91000063     	add	x3, x3, #0x0
		0000000000007cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7cf4: 528225c4     	mov	w4, #0x112e             // =4398
    7cf8: 94000000     	bl	0x7cf8 <aw9620x_i2c_probe+0xd84>
		0000000000007cf8:  R_AARCH64_CALL26	_dev_printk
    7cfc: aa1303e0     	mov	x0, x19
    7d00: 52800021     	mov	w1, #0x1                // =1
    7d04: 97fff91e     	bl	0x617c <aw9620x_recover_fun>
    7d08: 35000260     	cbnz	w0, 0x7d54 <aw9620x_i2c_probe+0xde0>
    7d0c: aa1303e0     	mov	x0, x19
    7d10: 97fff9ab     	bl	0x63bc <aw9620x_soft_reset>
    7d14: 35000320     	cbnz	w0, 0x7d78 <aw9620x_i2c_probe+0xe04>
    7d18: aa1303e0     	mov	x0, x19
    7d1c: 97fff749     	bl	0x5a40 <aw9620x_read_init_over_irq>
    7d20: f9401a61     	ldr	x1, [x19, #0x30]
    7d24: 31000c1f     	cmn	w0, #0x3
    7d28: 540005a0     	b.eq	0x7ddc <aw9620x_i2c_probe+0xe68>
    7d2c: 3100041f     	cmn	w0, #0x1
    7d30: 54000701     	b.ne	0x7e10 <aw9620x_i2c_probe+0xe9c>
    7d34: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7d38: 91000000     	add	x0, x0, #0x0
		0000000000007d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7d3c: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf78
    7d40: 91000042     	add	x2, x2, #0x0
		0000000000007d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf78
    7d44: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7d48: 91000063     	add	x3, x3, #0x0
		0000000000007d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7d4c: 52822844     	mov	w4, #0x1142             // =4418
    7d50: 17ffff7e     	b	0x7b48 <aw9620x_i2c_probe+0xbd4>
    7d54: f9401a61     	ldr	x1, [x19, #0x30]
    7d58: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7d5c: 91000000     	add	x0, x0, #0x0
		0000000000007d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7d60: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad5
    7d64: 91000042     	add	x2, x2, #0x0
		0000000000007d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad5
    7d68: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7d6c: 91000063     	add	x3, x3, #0x0
		0000000000007d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7d70: 52822684     	mov	w4, #0x1134             // =4404
    7d74: 17ffff75     	b	0x7b48 <aw9620x_i2c_probe+0xbd4>
    7d78: f9401a61     	ldr	x1, [x19, #0x30]
    7d7c: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7d80: 91000000     	add	x0, x0, #0x0
		0000000000007d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7d84: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21a
    7d88: 91000042     	add	x2, x2, #0x0
		0000000000007d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21a
    7d8c: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7d90: 91000063     	add	x3, x3, #0x0
		0000000000007d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7d94: 52822764     	mov	w4, #0x113b             // =4411
    7d98: 17ffffbb     	b	0x7c84 <aw9620x_i2c_probe+0xd10>
    7d9c: 52912b00     	mov	w0, #0x8958             // =35160
    7da0: 72a00820     	movk	w0, #0x41, lsl #16
    7da4: 94000000     	bl	0x7da4 <aw9620x_i2c_probe+0xe30>
		0000000000007da4:  R_AARCH64_CALL26	__const_udelay
    7da8: f9401a61     	ldr	x1, [x19, #0x30]
    7dac: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7db0: 91000000     	add	x0, x0, #0x0
		0000000000007db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7db4: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b10
    7db8: 91000042     	add	x2, x2, #0x0
		0000000000007db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b10
    7dbc: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7dc0: 91000063     	add	x3, x3, #0x0
		0000000000007dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7dc4: 52821d44     	mov	w4, #0x10ea             // =4330
    7dc8: 94000000     	bl	0x7dc8 <aw9620x_i2c_probe+0xe54>
		0000000000007dc8:  R_AARCH64_CALL26	_dev_printk
    7dcc: 12800015     	mov	w21, #-0x1              // =-1
    7dd0: 39400668     	ldrb	w8, [x19, #0x1]
    7dd4: 35fff228     	cbnz	w8, 0x7c18 <aw9620x_i2c_probe+0xca4>
    7dd8: 17fffce8     	b	0x7178 <aw9620x_i2c_probe+0x204>
    7ddc: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7de0: 91000000     	add	x0, x0, #0x0
		0000000000007de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7de4: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c
    7de8: 91000042     	add	x2, x2, #0x0
		0000000000007de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c
    7dec: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7df0: 91000063     	add	x3, x3, #0x0
		0000000000007df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7df4: 528228a4     	mov	w4, #0x1145             // =4421
    7df8: 12800045     	mov	w5, #-0x3               // =-3
    7dfc: 94000000     	bl	0x7dfc <aw9620x_i2c_probe+0xe88>
		0000000000007dfc:  R_AARCH64_CALL26	_dev_printk
    7e00: aa1303e0     	mov	x0, x19
    7e04: 97fff76e     	bl	0x5bbc <aw9620x_get_err_info>
    7e08: 52800068     	mov	w8, #0x3                // =3
    7e0c: 17ffffad     	b	0x7cc0 <aw9620x_i2c_probe+0xd4c>
    7e10: 90000000     	adrp	x0, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    7e14: 91000000     	add	x0, x0, #0x0
		0000000000007e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    7e18: 90000002     	adrp	x2, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222b
    7e1c: 91000042     	add	x2, x2, #0x0
		0000000000007e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222b
    7e20: 90000003     	adrp	x3, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30fc
    7e24: 91000063     	add	x3, x3, #0x0
		0000000000007e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30fc
    7e28: 52822944     	mov	w4, #0x114a             // =4426
    7e2c: 94000000     	bl	0x7e2c <aw9620x_i2c_probe+0xeb8>
		0000000000007e2c:  R_AARCH64_CALL26	_dev_printk
    7e30: 39001a7f     	strb	wzr, [x19, #0x6]
    7e34: 17ffffa4     	b	0x7cc4 <aw9620x_i2c_probe+0xd50>
    7e38: 94000000     	bl	0x7e38 <aw9620x_i2c_probe+0xec4>
		0000000000007e38:  R_AARCH64_CALL26	__stack_chk_fail
