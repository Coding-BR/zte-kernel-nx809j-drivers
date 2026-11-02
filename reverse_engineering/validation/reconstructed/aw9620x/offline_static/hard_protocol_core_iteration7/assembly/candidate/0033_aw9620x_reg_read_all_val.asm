
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000057cc <aw9620x_reg_read_all_val>:
    57cc: d503233f     	paciasp
    57d0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    57d4: a90157f6     	stp	x22, x21, [sp, #0x10]
    57d8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    57dc: 910003fd     	mov	x29, sp
    57e0: aa0103f5     	mov	x21, x1
    57e4: f9401801     	ldr	x1, [x0, #0x30]
    57e8: 2a0203f4     	mov	w20, w2
    57ec: aa0003f3     	mov	x19, x0
    57f0: 529e0236     	mov	w22, #0xf011            // =61457
    57f4: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000057f4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    57f8: 91000000     	add	x0, x0, #0x0
		00000000000057f8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    57fc: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000057fc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    5800: 91000042     	add	x2, x2, #0x0
		0000000000005800:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    5804: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005804:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x33f4
    5808: 91000063     	add	x3, x3, #0x0
		0000000000005808:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x33f4
    580c: 5280fc84     	mov	w4, #0x7e4              // =2020
    5810: 72a78016     	movk	w22, #0x3c00, lsl #16
    5814: 94000000     	bl	0x5814 <aw9620x_reg_read_all_val+0x48>
		0000000000005814:  R_AARCH64_CALL26	_dev_printk
    5818: 321906c2     	orr	w2, w22, #0x180
    581c: aa1303e0     	mov	x0, x19
    5820: 529fe401     	mov	w1, #0xff20             // =65312
    5824: 97ffeffb     	bl	0x1810 <aw9620x_i2c_write>
		0000000000005824:  R_AARCH64_CALL26	aw9620x_i2c_write
    5828: 350004a0     	cbnz	w0, 0x58bc <aw9620x_reg_read_all_val+0xf0>
    582c: aa1303e0     	mov	x0, x19
    5830: 52890401     	mov	w1, #0x4820             // =18464
    5834: 52800082     	mov	w2, #0x4                // =4
    5838: 97ffeff6     	bl	0x1810 <aw9620x_i2c_write>
		0000000000005838:  R_AARCH64_CALL26	aw9620x_i2c_write
    583c: 35000520     	cbnz	w0, 0x58e0 <aw9620x_reg_read_all_val+0x114>
    5840: aa1303e0     	mov	x0, x19
    5844: aa1503e1     	mov	x1, x21
    5848: 2a1403e2     	mov	w2, w20
    584c: 97fffc8b     	bl	0x4a78 <aw9620x_reg_read_val>
		000000000000584c:  R_AARCH64_CALL26	aw9620x_reg_read_val
    5850: f9401a61     	ldr	x1, [x19, #0x30]
    5854: 35000580     	cbnz	w0, 0x5904 <aw9620x_reg_read_all_val+0x138>
    5858: b94002a6     	ldr	w6, [x21]
    585c: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000585c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    5860: 91000000     	add	x0, x0, #0x0
		0000000000005860:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    5864: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005864:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x316f
    5868: 91000042     	add	x2, x2, #0x0
		0000000000005868:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x316f
    586c: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000586c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x33f4
    5870: 91000063     	add	x3, x3, #0x0
		0000000000005870:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x33f4
    5874: 12003e85     	and	w5, w20, #0xffff
    5878: 5280ff24     	mov	w4, #0x7f9              // =2041
    587c: 94000000     	bl	0x587c <aw9620x_reg_read_all_val+0xb0>
		000000000000587c:  R_AARCH64_CALL26	_dev_printk
    5880: 529e0222     	mov	w2, #0xf011             // =61457
    5884: aa1303e0     	mov	x0, x19
    5888: 529fe401     	mov	w1, #0xff20             // =65312
    588c: 72a78002     	movk	w2, #0x3c00, lsl #16
    5890: 97ffefe0     	bl	0x1810 <aw9620x_i2c_write>
		0000000000005890:  R_AARCH64_CALL26	aw9620x_i2c_write
    5894: 340004a0     	cbz	w0, 0x5928 <aw9620x_reg_read_all_val+0x15c>
    5898: f9401a61     	ldr	x1, [x19, #0x30]
    589c: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000589c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    58a0: 91000000     	add	x0, x0, #0x0
		00000000000058a0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    58a4: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000058a4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x17d8
    58a8: 91000042     	add	x2, x2, #0x0
		00000000000058a8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x17d8
    58ac: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000058ac:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x33f4
    58b0: 91000063     	add	x3, x3, #0x0
		00000000000058b0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x33f4
    58b4: 5280ffa4     	mov	w4, #0x7fd              // =2045
    58b8: 1400001a     	b	0x5920 <aw9620x_reg_read_all_val+0x154>
    58bc: f9401a61     	ldr	x1, [x19, #0x30]
    58c0: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000058c0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    58c4: 91000000     	add	x0, x0, #0x0
		00000000000058c4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    58c8: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000058c8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x17d8
    58cc: 91000042     	add	x2, x2, #0x0
		00000000000058cc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x17d8
    58d0: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000058d0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x33f4
    58d4: 91000063     	add	x3, x3, #0x0
		00000000000058d4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x33f4
    58d8: 5280fd24     	mov	w4, #0x7e9              // =2025
    58dc: 14000011     	b	0x5920 <aw9620x_reg_read_all_val+0x154>
    58e0: f9401a61     	ldr	x1, [x19, #0x30]
    58e4: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000058e4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    58e8: 91000000     	add	x0, x0, #0x0
		00000000000058e8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    58ec: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000058ec:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x13ad
    58f0: 91000042     	add	x2, x2, #0x0
		00000000000058f0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x13ad
    58f4: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000058f4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x33f4
    58f8: 91000063     	add	x3, x3, #0x0
		00000000000058f8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x33f4
    58fc: 5280fde4     	mov	w4, #0x7ef              // =2031
    5900: 14000008     	b	0x5920 <aw9620x_reg_read_all_val+0x154>
    5904: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005904:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    5908: 91000000     	add	x0, x0, #0x0
		0000000000005908:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    590c: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000590c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x22de
    5910: 91000042     	add	x2, x2, #0x0
		0000000000005910:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x22de
    5914: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005914:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x33f4
    5918: 91000063     	add	x3, x3, #0x0
		0000000000005918:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x33f4
    591c: 5280fea4     	mov	w4, #0x7f5              // =2037
    5920: 94000000     	bl	0x5920 <aw9620x_reg_read_all_val+0x154>
		0000000000005920:  R_AARCH64_CALL26	_dev_printk
    5924: 12800000     	mov	w0, #-0x1               // =-1
    5928: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    592c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    5930: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    5934: d50323bf     	autiasp
    5938: d65f03c0     	ret
