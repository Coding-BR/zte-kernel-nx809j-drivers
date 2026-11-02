
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004940 <aw9620x_reg_write_to_flash_once>:
    4940: d503233f     	paciasp
    4944: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    4948: a9014ff4     	stp	x20, x19, [sp, #0x10]
    494c: 910003fd     	mov	x29, sp
    4950: 2a0203f4     	mov	w20, w2
    4954: 12003c22     	and	w2, w1, #0xffff
    4958: 5288e081     	mov	w1, #0x4704             // =18180
    495c: aa0003f3     	mov	x19, x0
    4960: 97fff3ac     	bl	0x1810 <aw9620x_i2c_write>
    4964: 35000380     	cbnz	w0, 0x49d4 <aw9620x_reg_write_to_flash_once+0x94>
    4968: aa1303e0     	mov	x0, x19
    496c: 5288e101     	mov	w1, #0x4708             // =18184
    4970: 2a1403e2     	mov	w2, w20
    4974: 97fff3a7     	bl	0x1810 <aw9620x_i2c_write>
    4978: 35000400     	cbnz	w0, 0x49f8 <aw9620x_reg_write_to_flash_once+0xb8>
    497c: aa1303e0     	mov	x0, x19
    4980: 5288e201     	mov	w1, #0x4710             // =18192
    4984: 52800182     	mov	w2, #0xc                // =12
    4988: 97fff3a2     	bl	0x1810 <aw9620x_i2c_write>
    498c: 35000480     	cbnz	w0, 0x4a1c <aw9620x_reg_write_to_flash_once+0xdc>
    4990: aa1303e0     	mov	x0, x19
    4994: 5288e281     	mov	w1, #0x4714             // =18196
    4998: 52800022     	mov	w2, #0x1                // =1
    499c: 97fff39d     	bl	0x1810 <aw9620x_i2c_write>
    49a0: 35000500     	cbnz	w0, 0x4a40 <aw9620x_reg_write_to_flash_once+0x100>
    49a4: aa1303e0     	mov	x0, x19
    49a8: 97ffffac     	bl	0x4858 <aw9620x_check_isp_go_reg>
    49ac: 340005e0     	cbz	w0, 0x4a68 <aw9620x_reg_write_to_flash_once+0x128>
    49b0: f9401a61     	ldr	x1, [x19, #0x30]
    49b4: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000049b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    49b8: 91000000     	add	x0, x0, #0x0
		00000000000049b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    49bc: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000049bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16db
    49c0: 91000042     	add	x2, x2, #0x0
		00000000000049c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16db
    49c4: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000049c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2935
    49c8: 91000063     	add	x3, x3, #0x0
		00000000000049c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2935
    49cc: 52809004     	mov	w4, #0x480              // =1152
    49d0: 14000024     	b	0x4a60 <aw9620x_reg_write_to_flash_once+0x120>
    49d4: f9401a61     	ldr	x1, [x19, #0x30]
    49d8: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000049d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    49dc: 91000000     	add	x0, x0, #0x0
		00000000000049dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    49e0: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000049e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    49e4: 91000042     	add	x2, x2, #0x0
		00000000000049e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    49e8: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000049e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2935
    49ec: 91000063     	add	x3, x3, #0x0
		00000000000049ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2935
    49f0: 52808ca4     	mov	w4, #0x465              // =1125
    49f4: 1400001b     	b	0x4a60 <aw9620x_reg_write_to_flash_once+0x120>
    49f8: f9401a61     	ldr	x1, [x19, #0x30]
    49fc: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000049fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4a00: 91000000     	add	x0, x0, #0x0
		0000000000004a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4a04: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    4a08: 91000042     	add	x2, x2, #0x0
		0000000000004a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    4a0c: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2935
    4a10: 91000063     	add	x3, x3, #0x0
		0000000000004a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2935
    4a14: 52808d84     	mov	w4, #0x46c              // =1132
    4a18: 14000012     	b	0x4a60 <aw9620x_reg_write_to_flash_once+0x120>
    4a1c: f9401a61     	ldr	x1, [x19, #0x30]
    4a20: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4a24: 91000000     	add	x0, x0, #0x0
		0000000000004a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4a28: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    4a2c: 91000042     	add	x2, x2, #0x0
		0000000000004a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    4a30: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2935
    4a34: 91000063     	add	x3, x3, #0x0
		0000000000004a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2935
    4a38: 52808e64     	mov	w4, #0x473              // =1139
    4a3c: 14000009     	b	0x4a60 <aw9620x_reg_write_to_flash_once+0x120>
    4a40: f9401a61     	ldr	x1, [x19, #0x30]
    4a44: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4a48: 91000000     	add	x0, x0, #0x0
		0000000000004a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4a4c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    4a50: 91000042     	add	x2, x2, #0x0
		0000000000004a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    4a54: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2935
    4a58: 91000063     	add	x3, x3, #0x0
		0000000000004a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2935
    4a5c: 52808f44     	mov	w4, #0x47a              // =1146
    4a60: 94000000     	bl	0x4a60 <aw9620x_reg_write_to_flash_once+0x120>
		0000000000004a60:  R_AARCH64_CALL26	_dev_printk
    4a64: 12800000     	mov	w0, #-0x1               // =-1
    4a68: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    4a6c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    4a70: d50323bf     	autiasp
    4a74: d65f03c0     	ret
