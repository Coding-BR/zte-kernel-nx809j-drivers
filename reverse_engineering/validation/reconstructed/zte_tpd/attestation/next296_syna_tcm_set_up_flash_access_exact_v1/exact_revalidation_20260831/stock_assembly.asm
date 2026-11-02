
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001dc5c <syna_tcm_set_up_flash_access>:
   1dc5c: d503233f     	paciasp
   1dc60: d101c3ff     	sub	sp, sp, #0x70
   1dc64: a9047bfd     	stp	x29, x30, [sp, #0x40]
   1dc68: a90557f6     	stp	x22, x21, [sp, #0x50]
   1dc6c: a9064ff4     	stp	x20, x19, [sp, #0x60]
   1dc70: 910103fd     	add	x29, sp, #0x40
   1dc74: d5384108     	mrs	x8, SP_EL0
   1dc78: f9438908     	ldr	x8, [x8, #0x710]
   1dc7c: f81f83a8     	stur	x8, [x29, #-0x8]
   1dc80: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1dc84: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1dc88: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1dc8c: b5000101     	cbnz	x1, 0x1dcac <syna_tcm_set_up_flash_access+0x50>
   1dc90: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dc90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2917
   1dc94: 91000000     	add	x0, x0, #0x0
		000000000001dc94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2917
   1dc98: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dc98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9334
   1dc9c: 91000021     	add	x1, x1, #0x0
		000000000001dc9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9334
   1dca0: 94000000     	bl	0x1dca0 <syna_tcm_set_up_flash_access+0x44>
		000000000001dca0:  R_AARCH64_CALL26	_printk
   1dca4: 12801e00     	mov	w0, #-0xf1              // =-241
   1dca8: 1400007c     	b	0x1de98 <syna_tcm_set_up_flash_access+0x23c>
   1dcac: aa0103f3     	mov	x19, x1
   1dcb0: aa0003f4     	mov	x20, x0
   1dcb4: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dcb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77dc
   1dcb8: 91000000     	add	x0, x0, #0x0
		000000000001dcb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77dc
   1dcbc: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dcbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9334
   1dcc0: 91000021     	add	x1, x1, #0x0
		000000000001dcc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9334
   1dcc4: 2a0203f5     	mov	w21, w2
   1dcc8: 2a0303f6     	mov	w22, w3
   1dccc: 94000000     	bl	0x1dccc <syna_tcm_set_up_flash_access+0x70>
		000000000001dccc:  R_AARCH64_CALL26	_printk
   1dcd0: 910023e1     	add	x1, sp, #0x8
   1dcd4: aa1403e0     	mov	x0, x20
   1dcd8: 2a1503e2     	mov	w2, w21
   1dcdc: 94000000     	bl	0x1dcdc <syna_tcm_set_up_flash_access+0x80>
		000000000001dcdc:  R_AARCH64_CALL26	syna_tcm_identify
   1dce0: 36f80140     	tbz	w0, #0x1f, 0x1dd08 <syna_tcm_set_up_flash_access+0xac>
   1dce4: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa99d
   1dce8: 91000108     	add	x8, x8, #0x0
		000000000001dce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa99d
   1dcec: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dcec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9334
   1dcf0: 91000021     	add	x1, x1, #0x0
		000000000001dcf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9334
   1dcf4: 2a0003f3     	mov	w19, w0
   1dcf8: aa0803e0     	mov	x0, x8
   1dcfc: 94000000     	bl	0x1dcfc <syna_tcm_set_up_flash_access+0xa0>
		000000000001dcfc:  R_AARCH64_CALL26	_printk
   1dd00: 2a1303e0     	mov	w0, w19
   1dd04: 14000065     	b	0x1de98 <syna_tcm_set_up_flash_access+0x23c>
   1dd08: 394027e8     	ldrb	w8, [sp, #0x9]
   1dd0c: 7100051f     	cmp	w8, #0x1
   1dd10: 540001c1     	b.ne	0x1dd48 <syna_tcm_set_up_flash_access+0xec>
   1dd14: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dd14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ebb
   1dd18: 91000000     	add	x0, x0, #0x0
		000000000001dd18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ebb
   1dd1c: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dd1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9334
   1dd20: 91000021     	add	x1, x1, #0x0
		000000000001dd20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9334
   1dd24: 94000000     	bl	0x1dd24 <syna_tcm_set_up_flash_access+0xc8>
		000000000001dd24:  R_AARCH64_CALL26	_printk
   1dd28: aa1403e0     	mov	x0, x20
   1dd2c: 52800161     	mov	w1, #0xb                // =11
   1dd30: 2a1603e2     	mov	w2, w22
   1dd34: 94000000     	bl	0x1dd34 <syna_tcm_set_up_flash_access+0xd8>
		000000000001dd34:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   1dd38: 36f80080     	tbz	w0, #0x1f, 0x1dd48 <syna_tcm_set_up_flash_access+0xec>
   1dd3c: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dd3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2b8
   1dd40: 91000108     	add	x8, x8, #0x0
		000000000001dd40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2b8
   1dd44: 17ffffea     	b	0x1dcec <syna_tcm_set_up_flash_access+0x90>
   1dd48: 39402682     	ldrb	w2, [x20, #0x9]
   1dd4c: 71002c5f     	cmp	w2, #0xb
   1dd50: 54000241     	b.ne	0x1dd98 <syna_tcm_set_up_flash_access+0x13c>
   1dd54: aa1f03e8     	mov	x8, xzr
   1dd58: 52800029     	mov	w9, #0x1                // =1
   1dd5c: 14000004     	b	0x1dd6c <syna_tcm_set_up_flash_access+0x110>
   1dd60: 91000508     	add	x8, x8, #0x1
   1dd64: f100411f     	cmp	x8, #0x10
   1dd68: 540002a0     	b.eq	0x1ddbc <syna_tcm_set_up_flash_access+0x160>
   1dd6c: 8b08028a     	add	x10, x20, x8
   1dd70: 3942094a     	ldrb	w10, [x10, #0x82]
   1dd74: 7100e95f     	cmp	w10, #0x3a
   1dd78: 54ffff41     	b.ne	0x1dd60 <syna_tcm_set_up_flash_access+0x104>
   1dd7c: f100311f     	cmp	x8, #0xc
   1dd80: 54000dc8     	b.hi	0x1df38 <syna_tcm_set_up_flash_access+0x2dc>
   1dd84: 8b08028a     	add	x10, x20, x8
   1dd88: 3942154a     	ldrb	w10, [x10, #0x85]
   1dd8c: 362ffeaa     	tbz	w10, #0x5, 0x1dd60 <syna_tcm_set_up_flash_access+0x104>
   1dd90: 39022269     	strb	w9, [x19, #0x88]
   1dd94: 17fffff3     	b	0x1dd60 <syna_tcm_set_up_flash_access+0x104>
   1dd98: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dd98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4239
   1dd9c: 91000108     	add	x8, x8, #0x0
		000000000001dd9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4239
   1dda0: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dda0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9334
   1dda4: 91000021     	add	x1, x1, #0x0
		000000000001dda4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9334
   1dda8: 2a0003f3     	mov	w19, w0
   1ddac: aa0803e0     	mov	x0, x8
   1ddb0: 94000000     	bl	0x1ddb0 <syna_tcm_set_up_flash_access+0x154>
		000000000001ddb0:  R_AARCH64_CALL26	_printk
   1ddb4: 2a1303e0     	mov	w0, w19
   1ddb8: 14000038     	b	0x1de98 <syna_tcm_set_up_flash_access+0x23c>
   1ddbc: 91038281     	add	x1, x20, #0xe0
   1ddc0: aa1403e0     	mov	x0, x20
   1ddc4: 2a1503e2     	mov	w2, w21
   1ddc8: f9001261     	str	x1, [x19, #0x20]
   1ddcc: 94000000     	bl	0x1ddcc <syna_tcm_set_up_flash_access+0x170>
		000000000001ddcc:  R_AARCH64_CALL26	syna_tcm_get_boot_info
   1ddd0: 36f80080     	tbz	w0, #0x1f, 0x1dde0 <syna_tcm_set_up_flash_access+0x184>
   1ddd4: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001ddd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f35
   1ddd8: 91000108     	add	x8, x8, #0x0
		000000000001ddd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f35
   1dddc: 17ffffc4     	b	0x1dcec <syna_tcm_set_up_flash_access+0x90>
   1dde0: f9401268     	ldr	x8, [x19, #0x20]
   1dde4: 90000015     	adrp	x21, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dde4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9334
   1dde8: 910002b5     	add	x21, x21, #0x0
		000000000001dde8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9334
   1ddec: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001ddec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4276
   1ddf0: 91000000     	add	x0, x0, #0x0
		000000000001ddf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4276
   1ddf4: aa1503e1     	mov	x1, x21
   1ddf8: 39400102     	ldrb	w2, [x8]
   1ddfc: 94000000     	bl	0x1ddfc <syna_tcm_set_up_flash_access+0x1a0>
		000000000001ddfc:  R_AARCH64_CALL26	_printk
   1de00: f9401268     	ldr	x8, [x19, #0x20]
   1de04: b9403a94     	ldr	w20, [x20, #0x38]
   1de08: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001de08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb091
   1de0c: 91000000     	add	x0, x0, #0x0
		000000000001de0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb091
   1de10: aa1503e1     	mov	x1, x21
   1de14: 39401103     	ldrb	w3, [x8, #0x4]
   1de18: 531f7862     	lsl	w2, w3, #1
   1de1c: b9002e62     	str	w2, [x19, #0x2c]
   1de20: 94000000     	bl	0x1de20 <syna_tcm_set_up_flash_access+0x1c4>
		000000000001de20:  R_AARCH64_CALL26	_printk
   1de24: f9401268     	ldr	x8, [x19, #0x20]
   1de28: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001de28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1564
   1de2c: 91000000     	add	x0, x0, #0x0
		000000000001de2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1564
   1de30: aa1503e1     	mov	x1, x21
   1de34: 78405103     	ldurh	w3, [x8, #0x5]
   1de38: 531f7862     	lsl	w2, w3, #1
   1de3c: b9002a62     	str	w2, [x19, #0x28]
   1de40: 94000000     	bl	0x1de40 <syna_tcm_set_up_flash_access+0x1e4>
		000000000001de40:  R_AARCH64_CALL26	_printk
   1de44: f9401268     	ldr	x8, [x19, #0x20]
   1de48: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001de48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6619
   1de4c: 91000000     	add	x0, x0, #0x0
		000000000001de4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6619
   1de50: aa1503e1     	mov	x1, x21
   1de54: 78407102     	ldurh	w2, [x8, #0x7]
   1de58: b9003262     	str	w2, [x19, #0x30]
   1de5c: 94000000     	bl	0x1de5c <syna_tcm_set_up_flash_access+0x200>
		000000000001de5c:  R_AARCH64_CALL26	_printk
   1de60: b9402e68     	ldr	w8, [x19, #0x2c]
   1de64: 340000b4     	cbz	w20, 0x1de78 <syna_tcm_set_up_flash_access+0x21c>
   1de68: 6b14011f     	cmp	w8, w20
   1de6c: 54000069     	b.ls	0x1de78 <syna_tcm_set_up_flash_access+0x21c>
   1de70: b9002e74     	str	w20, [x19, #0x2c]
   1de74: 14000002     	b	0x1de7c <syna_tcm_set_up_flash_access+0x220>
   1de78: 34000508     	cbz	w8, 0x1df18 <syna_tcm_set_up_flash_access+0x2bc>
   1de7c: b9402a68     	ldr	w8, [x19, #0x28]
   1de80: 34000228     	cbz	w8, 0x1dec4 <syna_tcm_set_up_flash_access+0x268>
   1de84: f9401269     	ldr	x9, [x19, #0x20]
   1de88: 3940012a     	ldrb	w10, [x9]
   1de8c: 71000d5f     	cmp	w10, #0x3
   1de90: 54000200     	b.eq	0x1ded0 <syna_tcm_set_up_flash_access+0x274>
   1de94: 2a1f03e0     	mov	w0, wzr
   1de98: d5384108     	mrs	x8, SP_EL0
   1de9c: f9438908     	ldr	x8, [x8, #0x710]
   1dea0: f85f83a9     	ldur	x9, [x29, #-0x8]
   1dea4: eb09011f     	cmp	x8, x9
   1dea8: 540004a1     	b.ne	0x1df3c <syna_tcm_set_up_flash_access+0x2e0>
   1deac: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   1deb0: a94557f6     	ldp	x22, x21, [sp, #0x50]
   1deb4: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   1deb8: 9101c3ff     	add	sp, sp, #0x70
   1debc: d50323bf     	autiasp
   1dec0: d65f03c0     	ret
   1dec4: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2e5
   1dec8: 91000000     	add	x0, x0, #0x0
		000000000001dec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2e5
   1decc: 14000015     	b	0x1df20 <syna_tcm_set_up_flash_access+0x2c4>
   1ded0: 39405129     	ldrb	w9, [x9, #0x14]
   1ded4: 90000014     	adrp	x20, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001ded4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9334
   1ded8: 91000294     	add	x20, x20, #0x0
		000000000001ded8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9334
   1dedc: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dedc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bac
   1dee0: 91000000     	add	x0, x0, #0x0
		000000000001dee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bac
   1dee4: aa1403e1     	mov	x1, x20
   1dee8: 1b097d02     	mul	w2, w8, w9
   1deec: 2a0203e3     	mov	w3, w2
   1def0: b9003e62     	str	w2, [x19, #0x3c]
   1def4: 94000000     	bl	0x1def4 <syna_tcm_set_up_flash_access+0x298>
		000000000001def4:  R_AARCH64_CALL26	_printk
   1def8: f9401268     	ldr	x8, [x19, #0x20]
   1defc: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001defc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9c6
   1df00: 91000000     	add	x0, x0, #0x0
		000000000001df00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9c6
   1df04: aa1403e1     	mov	x1, x20
   1df08: 39405102     	ldrb	w2, [x8, #0x14]
   1df0c: 39405503     	ldrb	w3, [x8, #0x15]
   1df10: 94000000     	bl	0x1df10 <syna_tcm_set_up_flash_access+0x2b4>
		000000000001df10:  R_AARCH64_CALL26	_printk
   1df14: 17ffffe0     	b	0x1de94 <syna_tcm_set_up_flash_access+0x238>
   1df18: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001df18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9bf3
   1df1c: 91000000     	add	x0, x0, #0x0
		000000000001df1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9bf3
   1df20: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001df20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9334
   1df24: 91000021     	add	x1, x1, #0x0
		000000000001df24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9334
   1df28: 2a1f03e2     	mov	w2, wzr
   1df2c: 94000000     	bl	0x1df2c <syna_tcm_set_up_flash_access+0x2d0>
		000000000001df2c:  R_AARCH64_CALL26	_printk
   1df30: 12801e00     	mov	w0, #-0xf1              // =-241
   1df34: 17ffffd9     	b	0x1de98 <syna_tcm_set_up_flash_access+0x23c>
   1df38: d42aa240     	brk	#0x5512
   1df3c: 94000000     	bl	0x1df3c <syna_tcm_set_up_flash_access+0x2e0>
		000000000001df3c:  R_AARCH64_CALL26	__stack_chk_fail
