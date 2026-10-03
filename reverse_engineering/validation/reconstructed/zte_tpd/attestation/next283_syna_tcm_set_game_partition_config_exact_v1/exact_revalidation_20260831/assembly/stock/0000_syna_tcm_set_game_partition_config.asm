
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cc90 <syna_tcm_set_game_partition_config>:
   1cc90: d503233f     	paciasp
   1cc94: d10243ff     	sub	sp, sp, #0x90
   1cc98: a9037bfd     	stp	x29, x30, [sp, #0x30]
   1cc9c: a9046ffc     	stp	x28, x27, [sp, #0x40]
   1cca0: a90567fa     	stp	x26, x25, [sp, #0x50]
   1cca4: a9065ff8     	stp	x24, x23, [sp, #0x60]
   1cca8: a90757f6     	stp	x22, x21, [sp, #0x70]
   1ccac: a9084ff4     	stp	x20, x19, [sp, #0x80]
   1ccb0: 9100c3fd     	add	x29, sp, #0x30
   1ccb4: 2a0403f5     	mov	w21, w4
   1ccb8: aa0303f6     	mov	x22, x3
   1ccbc: 2a0203f9     	mov	w25, w2
   1ccc0: 2a0103f7     	mov	w23, w1
   1ccc4: aa0003fa     	mov	x26, x0
   1ccc8: d503201f     	nop
   1cccc: 11000728     	add	w8, w25, #0x1
   1ccd0: 52819801     	mov	w1, #0xcc0              // =3264
   1ccd4: 93407d18     	sxtw	x24, w8
   1ccd8: aa1803e0     	mov	x0, x24
   1ccdc: 94000000     	bl	0x1ccdc <syna_tcm_set_game_partition_config+0x4c>
		000000000001ccdc:  R_AARCH64_CALL26	__kmalloc_noprof
   1cce0: aa0003f4     	mov	x20, x0
   1cce4: b40006fa     	cbz	x26, 0x1cdc0 <syna_tcm_set_game_partition_config+0x130>
   1cce8: 39402742     	ldrb	w2, [x26, #0x9]
   1ccec: 7100045f     	cmp	w2, #0x1
   1ccf0: 54000321     	b.ne	0x1cd54 <syna_tcm_set_game_partition_config+0xc4>
   1ccf4: 350000b5     	cbnz	w21, 0x1cd08 <syna_tcm_set_game_partition_config+0x78>
   1ccf8: f9402748     	ldr	x8, [x26, #0x48]
   1ccfc: 39405108     	ldrb	w8, [x8, #0x14]
   1cd00: 36000388     	tbz	w8, #0x0, 0x1cd70 <syna_tcm_set_game_partition_config+0xe0>
   1cd04: 2a1f03f5     	mov	w21, wzr
   1cd08: 0b190728     	add	w8, w25, w25, lsl #1
   1cd0c: f9000bfa     	str	x26, [sp, #0x10]
   1cd10: b81ec3b5     	stur	w21, [x29, #-0x14]
   1cd14: 531f791c     	lsl	w28, w8, #1
   1cd18: 11008393     	add	w19, w28, #0x20
   1cd1c: d503201f     	nop
   1cd20: 93407e60     	sxtw	x0, w19
   1cd24: 52819801     	mov	w1, #0xcc0              // =3264
   1cd28: 94000000     	bl	0x1cd28 <syna_tcm_set_game_partition_config+0x98>
		000000000001cd28:  R_AARCH64_CALL26	__kmalloc_noprof
   1cd2c: aa0003fa     	mov	x26, x0
   1cd30: b400071a     	cbz	x26, 0x1ce10 <syna_tcm_set_game_partition_config+0x180>
   1cd34: 93407e61     	sxtw	x1, w19
   1cd38: 90000002     	adrp	x2, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cd38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e5e
   1cd3c: 91000042     	add	x2, x2, #0x0
		000000000001cd3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e5e
   1cd40: aa1a03e0     	mov	x0, x26
   1cd44: 94000000     	bl	0x1cd44 <syna_tcm_set_game_partition_config+0xb4>
		000000000001cd44:  R_AARCH64_CALL26	snprintf
   1cd48: 2a0003fb     	mov	w27, w0
   1cd4c: b5000678     	cbnz	x24, 0x1ce18 <syna_tcm_set_game_partition_config+0x188>
   1cd50: 14000083     	b	0x1cf5c <syna_tcm_set_game_partition_config+0x2cc>
   1cd54: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cd54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb022
   1cd58: 91000000     	add	x0, x0, #0x0
		000000000001cd58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb022
   1cd5c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cd5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b98
   1cd60: 91000021     	add	x1, x1, #0x0
		000000000001cd60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b98
   1cd64: 94000000     	bl	0x1cd64 <syna_tcm_set_game_partition_config+0xd4>
		000000000001cd64:  R_AARCH64_CALL26	_printk
   1cd68: 12801e00     	mov	w0, #-0xf1              // =-241
   1cd6c: 1400005e     	b	0x1cee4 <syna_tcm_set_game_partition_config+0x254>
   1cd70: b9420f55     	ldr	w21, [x26, #0x20c]
   1cd74: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cd74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8885
   1cd78: 91000000     	add	x0, x0, #0x0
		000000000001cd78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8885
   1cd7c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cd7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b98
   1cd80: 91000021     	add	x1, x1, #0x0
		000000000001cd80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b98
   1cd84: 94000000     	bl	0x1cd84 <syna_tcm_set_game_partition_config+0xf4>
		000000000001cd84:  R_AARCH64_CALL26	_printk
   1cd88: 17ffffe0     	b	0x1cd08 <syna_tcm_set_game_partition_config+0x78>
   1cd8c: 11000728     	add	w8, w25, #0x1
   1cd90: d5384113     	mrs	x19, SP_EL0
   1cd94: f9402a74     	ldr	x20, [x19, #0x50]
   1cd98: 93407d18     	sxtw	x24, w8
   1cd9c: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cd9c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x280
   1cda0: 91000108     	add	x8, x8, #0x0
		000000000001cda0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x280
   1cda4: 52819801     	mov	w1, #0xcc0              // =3264
   1cda8: f9002a68     	str	x8, [x19, #0x50]
   1cdac: aa1803e0     	mov	x0, x24
   1cdb0: 94000000     	bl	0x1cdb0 <syna_tcm_set_game_partition_config+0x120>
		000000000001cdb0:  R_AARCH64_CALL26	__kmalloc_noprof
   1cdb4: f9002a74     	str	x20, [x19, #0x50]
   1cdb8: aa0003f4     	mov	x20, x0
   1cdbc: b5fff97a     	cbnz	x26, 0x1cce8 <syna_tcm_set_game_partition_config+0x58>
   1cdc0: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cdc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1cdc4: 91000000     	add	x0, x0, #0x0
		000000000001cdc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1cdc8: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cdc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b98
   1cdcc: 91000021     	add	x1, x1, #0x0
		000000000001cdcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b98
   1cdd0: 94000000     	bl	0x1cdd0 <syna_tcm_set_game_partition_config+0x140>
		000000000001cdd0:  R_AARCH64_CALL26	_printk
   1cdd4: 12801e00     	mov	w0, #-0xf1              // =-241
   1cdd8: 14000043     	b	0x1cee4 <syna_tcm_set_game_partition_config+0x254>
   1cddc: 93407e60     	sxtw	x0, w19
   1cde0: aa1403fb     	mov	x27, x20
   1cde4: d5384114     	mrs	x20, SP_EL0
   1cde8: f9402a95     	ldr	x21, [x20, #0x50]
   1cdec: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cdec:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x2a8
   1cdf0: 91000108     	add	x8, x8, #0x0
		000000000001cdf0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x2a8
   1cdf4: 52819801     	mov	w1, #0xcc0              // =3264
   1cdf8: f9002a88     	str	x8, [x20, #0x50]
   1cdfc: 94000000     	bl	0x1cdfc <syna_tcm_set_game_partition_config+0x16c>
		000000000001cdfc:  R_AARCH64_CALL26	__kmalloc_noprof
   1ce00: aa0003fa     	mov	x26, x0
   1ce04: f9002a95     	str	x21, [x20, #0x50]
   1ce08: aa1b03f4     	mov	x20, x27
   1ce0c: b5fff95a     	cbnz	x26, 0x1cd34 <syna_tcm_set_game_partition_config+0xa4>
   1ce10: 2a1f03fb     	mov	w27, wzr
   1ce14: b4000a58     	cbz	x24, 0x1cf5c <syna_tcm_set_game_partition_config+0x2cc>
   1ce18: 11000728     	add	w8, w25, #0x1
   1ce1c: b9000ff7     	str	w23, [sp, #0xc]
   1ce20: 7100091f     	cmp	w8, #0x2
   1ce24: f81f03a8     	stur	x8, [x29, #-0x10]
   1ce28: f81f83b4     	stur	x20, [x29, #-0x8]
   1ce2c: 39000297     	strb	w23, [x20]
   1ce30: 5400036b     	b.lt	0x1ce9c <syna_tcm_set_game_partition_config+0x20c>
   1ce34: a97f27a8     	ldp	x8, x9, [x29, #-0x10]
   1ce38: aa1f03f4     	mov	x20, xzr
   1ce3c: 11006397     	add	w23, w28, #0x18
   1ce40: 9000001c     	adrp	x28, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001ce40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x777a
   1ce44: 9100039c     	add	x28, x28, #0x0
		000000000001ce44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x777a
   1ce48: 91000535     	add	x21, x9, #0x1
   1ce4c: d1000519     	sub	x25, x8, #0x1
   1ce50: 14000004     	b	0x1ce60 <syna_tcm_set_game_partition_config+0x1d0>
   1ce54: 91000694     	add	x20, x20, #0x1
   1ce58: eb14033f     	cmp	x25, x20
   1ce5c: 54000200     	b.eq	0x1ce9c <syna_tcm_set_game_partition_config+0x20c>
   1ce60: 91000688     	add	x8, x20, #0x1
   1ce64: eb08031f     	cmp	x24, x8
   1ce68: 540007a9     	b.ls	0x1cf5c <syna_tcm_set_game_partition_config+0x2cc>
   1ce6c: 38746ac3     	ldrb	w3, [x22, x20]
   1ce70: 38346aa3     	strb	w3, [x21, x20]
   1ce74: b4ffff1a     	cbz	x26, 0x1ce54 <syna_tcm_set_game_partition_config+0x1c4>
   1ce78: 6b17037f     	cmp	w27, w23
   1ce7c: 54fffeca     	b.ge	0x1ce54 <syna_tcm_set_game_partition_config+0x1c4>
   1ce80: 4b1b0268     	sub	w8, w19, w27
   1ce84: 8b3bc340     	add	x0, x26, w27, sxtw
   1ce88: aa1c03e2     	mov	x2, x28
   1ce8c: 93407d01     	sxtw	x1, w8
   1ce90: 94000000     	bl	0x1ce90 <syna_tcm_set_game_partition_config+0x200>
		000000000001ce90:  R_AARCH64_CALL26	snprintf
   1ce94: 0b1b001b     	add	w27, w0, w27
   1ce98: 17ffffef     	b	0x1ce54 <syna_tcm_set_game_partition_config+0x1c4>
   1ce9c: b500037a     	cbnz	x26, 0x1cf08 <syna_tcm_set_game_partition_config+0x278>
   1cea0: f9400be0     	ldr	x0, [sp, #0x10]
   1cea4: a97f0bb4     	ldp	x20, x2, [x29, #-0x10]
   1cea8: b85ec3a5     	ldur	w5, [x29, #-0x14]
   1ceac: 528018e1     	mov	w1, #0xc7               // =199
   1ceb0: aa1f03e4     	mov	x4, xzr
   1ceb4: f941cc08     	ldr	x8, [x0, #0x398]
   1ceb8: 2a1403e3     	mov	w3, w20
   1cebc: b85fc110     	ldur	w16, [x8, #-0x4]
   1cec0: 728751d1     	movk	w17, #0x3a8e
   1cec4: 72a48411     	movk	w17, #0x2420, lsl #16
   1cec8: 6b11021f     	cmp	w16, w17
   1cecc: 54000040     	b.eq	0x1ced4 <syna_tcm_set_game_partition_config+0x244>
   1ced0: d4304500     	brk	#0x8228
   1ced4: d63f0100     	blr	x8
   1ced8: b9400fe9     	ldr	w9, [sp, #0xc]
   1cedc: 37f80280     	tbnz	w0, #0x1f, 0x1cf2c <syna_tcm_set_game_partition_config+0x29c>
   1cee0: 2a1f03e0     	mov	w0, wzr
   1cee4: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   1cee8: a94757f6     	ldp	x22, x21, [sp, #0x70]
   1ceec: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   1cef0: a94567fa     	ldp	x26, x25, [sp, #0x50]
   1cef4: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   1cef8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   1cefc: 910243ff     	add	sp, sp, #0x90
   1cf00: d50323bf     	autiasp
   1cf04: d65f03c0     	ret
   1cf08: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cf08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd02
   1cf0c: 91000000     	add	x0, x0, #0x0
		000000000001cf0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd02
   1cf10: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cf10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b98
   1cf14: 91000021     	add	x1, x1, #0x0
		000000000001cf14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b98
   1cf18: aa1a03e2     	mov	x2, x26
   1cf1c: 94000000     	bl	0x1cf1c <syna_tcm_set_game_partition_config+0x28c>
		000000000001cf1c:  R_AARCH64_CALL26	_printk
   1cf20: aa1a03e0     	mov	x0, x26
   1cf24: 94000000     	bl	0x1cf24 <syna_tcm_set_game_partition_config+0x294>
		000000000001cf24:  R_AARCH64_CALL26	kfree
   1cf28: 17ffffde     	b	0x1cea0 <syna_tcm_set_game_partition_config+0x210>
   1cf2c: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cf2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcbf
   1cf30: 91000108     	add	x8, x8, #0x0
		000000000001cf30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcbf
   1cf34: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cf34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b98
   1cf38: 91000021     	add	x1, x1, #0x0
		000000000001cf38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b98
   1cf3c: 12001d24     	and	w4, w9, #0xff
   1cf40: 2a0003f3     	mov	w19, w0
   1cf44: aa0803e0     	mov	x0, x8
   1cf48: 528018e2     	mov	w2, #0xc7               // =199
   1cf4c: 2a1403e3     	mov	w3, w20
   1cf50: 94000000     	bl	0x1cf50 <syna_tcm_set_game_partition_config+0x2c0>
		000000000001cf50:  R_AARCH64_CALL26	_printk
   1cf54: 2a1303e0     	mov	w0, w19
   1cf58: 17ffffe3     	b	0x1cee4 <syna_tcm_set_game_partition_config+0x254>
   1cf5c: d4200020     	brk	#0x1
