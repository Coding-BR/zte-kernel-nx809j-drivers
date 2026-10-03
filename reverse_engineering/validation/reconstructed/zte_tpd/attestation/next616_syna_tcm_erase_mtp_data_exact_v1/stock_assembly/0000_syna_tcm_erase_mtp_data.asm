
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021940 <syna_tcm_erase_mtp_data>:
   21940: d503233f     	paciasp
   21944: d103c3ff     	sub	sp, sp, #0xf0
   21948: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
   2194c: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
   21950: a90d57f6     	stp	x22, x21, [sp, #0xd0]
   21954: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
   21958: 9102c3fd     	add	x29, sp, #0xb0
   2195c: d5384108     	mrs	x8, SP_EL0
   21960: f9438908     	ldr	x8, [x8, #0x710]
   21964: f81f83a8     	stur	x8, [x29, #-0x8]
   21968: b4000d60     	cbz	x0, 0x21b14 <syna_tcm_erase_mtp_data+0x1d4>
   2196c: aa0003f3     	mov	x19, x0
   21970: 910043e8     	add	x8, sp, #0x10
   21974: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   21978: a908fd1f     	stp	xzr, xzr, [x8, #0x88]
   2197c: f900411f     	str	xzr, [x8, #0x80]
   21980: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   21984: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   21988: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   2198c: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   21990: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   21994: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   21998: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   2199c: 34000081     	cbz	w1, 0x219ac <syna_tcm_erase_mtp_data+0x6c>
   219a0: b9420e77     	ldr	w23, [x19, #0x20c]
   219a4: b941ea74     	ldr	w20, [x19, #0x1e8]
   219a8: 14000003     	b	0x219b4 <syna_tcm_erase_mtp_data+0x74>
   219ac: 2a1f03f4     	mov	w20, wzr
   219b0: 2a1f03f7     	mov	w23, wzr
   219b4: 910043e8     	add	x8, sp, #0x10
   219b8: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000219b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   219bc: 91000021     	add	x1, x1, #0x0
		00000000000219bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   219c0: 90000002     	adrp	x2, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000219c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   219c4: 91000042     	add	x2, x2, #0x0
		00000000000219c4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   219c8: 91014100     	add	x0, x8, #0x50
   219cc: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   219d0: 94000000     	bl	0x219d0 <syna_tcm_erase_mtp_data+0x90>
		00000000000219d0:  R_AARCH64_CALL26	__mutex_init
   219d4: 910043e1     	add	x1, sp, #0x10
   219d8: aa1303e0     	mov	x0, x19
   219dc: 2a1703e2     	mov	w2, w23
   219e0: 2a1403e3     	mov	w3, w20
   219e4: 97fff09e     	bl	0x1dc5c <syna_tcm_set_up_flash_access>
   219e8: 37f80a40     	tbnz	w0, #0x1f, 0x21b30 <syna_tcm_erase_mtp_data+0x1f0>
   219ec: f9401be8     	ldr	x8, [sp, #0x30]
   219f0: 39400102     	ldrb	w2, [x8]
   219f4: 7100085f     	cmp	w2, #0x2
   219f8: 54000bc9     	b.ls	0x21b70 <syna_tcm_erase_mtp_data+0x230>
   219fc: b9403be9     	ldr	w9, [sp, #0x38]
   21a00: 39405508     	ldrb	w8, [x8, #0x15]
   21a04: b9404fea     	ldr	w10, [sp, #0x4c]
   21a08: b9000fff     	str	wzr, [sp, #0xc]
   21a0c: 1b082528     	madd	w8, w9, w8, w9
   21a10: 1ac90955     	udiv	w21, w10, w9
   21a14: 51000508     	sub	w8, w8, #0x1
   21a18: 1ac90916     	udiv	w22, w8, w9
   21a1c: 2a1502c8     	orr	w8, w22, w21
   21a20: 7104011f     	cmp	w8, #0x100
   21a24: 54000082     	b.hs	0x21a34 <syna_tcm_erase_mtp_data+0xf4>
   21a28: 52800043     	mov	w3, #0x2                // =2
   21a2c: 2a1603e8     	mov	w8, w22
   21a30: 14000004     	b	0x21a40 <syna_tcm_erase_mtp_data+0x100>
   21a34: 53087ea8     	lsr	w8, w21, #8
   21a38: 52800083     	mov	w3, #0x4                // =4
   21a3c: 79001ff6     	strh	w22, [sp, #0xe]
   21a40: 39402662     	ldrb	w2, [x19, #0x9]
   21a44: 1b177ec5     	mul	w5, w22, w23
   21a48: 390033f5     	strb	w21, [sp, #0xc]
   21a4c: 390037e8     	strb	w8, [sp, #0xd]
   21a50: 71002c5f     	cmp	w2, #0xb
   21a54: 540009c1     	b.ne	0x21b8c <syna_tcm_erase_mtp_data+0x24c>
   21a58: 350000a5     	cbnz	w5, 0x21a6c <syna_tcm_erase_mtp_data+0x12c>
   21a5c: f9402668     	ldr	x8, [x19, #0x48]
   21a60: 39405108     	ldrb	w8, [x8, #0x14]
   21a64: 36000d28     	tbz	w8, #0x0, 0x21c08 <syna_tcm_erase_mtp_data+0x2c8>
   21a68: 2a1f03e5     	mov	w5, wzr
   21a6c: f941ce68     	ldr	x8, [x19, #0x398]
   21a70: 910033e2     	add	x2, sp, #0xc
   21a74: aa1303e0     	mov	x0, x19
   21a78: 52800221     	mov	w1, #0x11               // =17
   21a7c: aa1f03e4     	mov	x4, xzr
   21a80: b85fc110     	ldur	w16, [x8, #-0x4]
   21a84: 728751d1     	movk	w17, #0x3a8e
   21a88: 72a48411     	movk	w17, #0x2420, lsl #16
   21a8c: 6b11021f     	cmp	w16, w17
   21a90: 54000040     	b.eq	0x21a98 <syna_tcm_erase_mtp_data+0x158>
   21a94: d4304500     	brk	#0x8228
   21a98: d63f0100     	blr	x8
   21a9c: 37f808e0     	tbnz	w0, #0x1f, 0x21bb8 <syna_tcm_erase_mtp_data+0x278>
   21aa0: 2a1f03f7     	mov	w23, wzr
   21aa4: 39402668     	ldrb	w8, [x19, #0x9]
   21aa8: 71002d1f     	cmp	w8, #0xb
   21aac: 540000a1     	b.ne	0x21ac0 <syna_tcm_erase_mtp_data+0x180>
   21ab0: aa1303e0     	mov	x0, x19
   21ab4: 52800021     	mov	w1, #0x1                // =1
   21ab8: 2a1403e2     	mov	w2, w20
   21abc: 94000000     	bl	0x21abc <syna_tcm_erase_mtp_data+0x17c>
		0000000000021abc:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   21ac0: 394243e2     	ldrb	w2, [sp, #0x90]
   21ac4: 350003e2     	cbnz	w2, 0x21b40 <syna_tcm_erase_mtp_data+0x200>
   21ac8: f9402bf3     	ldr	x19, [sp, #0x50]
   21acc: 94000000     	bl	0x21acc <syna_tcm_erase_mtp_data+0x18c>
		0000000000021acc:  R_AARCH64_CALL26	syna_request_managed_device
   21ad0: b4000440     	cbz	x0, 0x21b58 <syna_tcm_erase_mtp_data+0x218>
   21ad4: b4000073     	cbz	x19, 0x21ae0 <syna_tcm_erase_mtp_data+0x1a0>
   21ad8: aa1303e1     	mov	x1, x19
   21adc: 94000000     	bl	0x21adc <syna_tcm_erase_mtp_data+0x19c>
		0000000000021adc:  R_AARCH64_CALL26	devm_kfree
   21ae0: 2a1703e0     	mov	w0, w23
   21ae4: d5384108     	mrs	x8, SP_EL0
   21ae8: f9438908     	ldr	x8, [x8, #0x710]
   21aec: f85f83a9     	ldur	x9, [x29, #-0x8]
   21af0: eb09011f     	cmp	x8, x9
   21af4: 54000a01     	b.ne	0x21c34 <syna_tcm_erase_mtp_data+0x2f4>
   21af8: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
   21afc: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
   21b00: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
   21b04: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
   21b08: 9103c3ff     	add	sp, sp, #0xf0
   21b0c: d50323bf     	autiasp
   21b10: d65f03c0     	ret
   21b14: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   21b18: 91000000     	add	x0, x0, #0x0
		0000000000021b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   21b1c: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x486b
   21b20: 91000021     	add	x1, x1, #0x0
		0000000000021b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x486b
   21b24: 94000000     	bl	0x21b24 <syna_tcm_erase_mtp_data+0x1e4>
		0000000000021b24:  R_AARCH64_CALL26	_printk
   21b28: 12801e00     	mov	w0, #-0xf1              // =-241
   21b2c: 17ffffee     	b	0x21ae4 <syna_tcm_erase_mtp_data+0x1a4>
   21b30: 2a0003f7     	mov	w23, w0
   21b34: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   21b38: 91000000     	add	x0, x0, #0x0
		0000000000021b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   21b3c: 1400002f     	b	0x21bf8 <syna_tcm_erase_mtp_data+0x2b8>
   21b40: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   21b44: 91000000     	add	x0, x0, #0x0
		0000000000021b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   21b48: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   21b4c: 91000021     	add	x1, x1, #0x0
		0000000000021b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   21b50: 94000000     	bl	0x21b50 <syna_tcm_erase_mtp_data+0x210>
		0000000000021b50:  R_AARCH64_CALL26	_printk
   21b54: 17ffffdd     	b	0x21ac8 <syna_tcm_erase_mtp_data+0x188>
   21b58: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   21b5c: 91000000     	add	x0, x0, #0x0
		0000000000021b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   21b60: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   21b64: 91000021     	add	x1, x1, #0x0
		0000000000021b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   21b68: 94000000     	bl	0x21b68 <syna_tcm_erase_mtp_data+0x228>
		0000000000021b68:  R_AARCH64_CALL26	_printk
   21b6c: 17ffffdd     	b	0x21ae0 <syna_tcm_erase_mtp_data+0x1a0>
   21b70: 2a0003f7     	mov	w23, w0
   21b74: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2eac
   21b78: 91000000     	add	x0, x0, #0x0
		0000000000021b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2eac
   21b7c: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x486b
   21b80: 91000021     	add	x1, x1, #0x0
		0000000000021b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x486b
   21b84: 94000000     	bl	0x21b84 <syna_tcm_erase_mtp_data+0x244>
		0000000000021b84:  R_AARCH64_CALL26	_printk
   21b88: 17ffffc7     	b	0x21aa4 <syna_tcm_erase_mtp_data+0x164>
   21b8c: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x666c
   21b90: 91000000     	add	x0, x0, #0x0
		0000000000021b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x666c
   21b94: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   21b98: 91000021     	add	x1, x1, #0x0
		0000000000021b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   21b9c: 2a0303f7     	mov	w23, w3
   21ba0: 2a0503f8     	mov	w24, w5
   21ba4: 94000000     	bl	0x21ba4 <syna_tcm_erase_mtp_data+0x264>
		0000000000021ba4:  R_AARCH64_CALL26	_printk
   21ba8: 2a1803e5     	mov	w5, w24
   21bac: 2a1703e3     	mov	w3, w23
   21bb0: 35fff5e5     	cbnz	w5, 0x21a6c <syna_tcm_erase_mtp_data+0x12c>
   21bb4: 17ffffaa     	b	0x21a5c <syna_tcm_erase_mtp_data+0x11c>
   21bb8: 2a0003f7     	mov	w23, w0
   21bbc: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   21bc0: 91000000     	add	x0, x0, #0x0
		0000000000021bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   21bc4: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   21bc8: 91000021     	add	x1, x1, #0x0
		0000000000021bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   21bcc: 52800222     	mov	w2, #0x11               // =17
   21bd0: 94000000     	bl	0x21bd0 <syna_tcm_erase_mtp_data+0x290>
		0000000000021bd0:  R_AARCH64_CALL26	_printk
   21bd4: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fa1
   21bd8: 91000000     	add	x0, x0, #0x0
		0000000000021bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fa1
   21bdc: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c54
   21be0: 91000021     	add	x1, x1, #0x0
		0000000000021be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c54
   21be4: 2a1503e2     	mov	w2, w21
   21be8: 2a1603e3     	mov	w3, w22
   21bec: 94000000     	bl	0x21bec <syna_tcm_erase_mtp_data+0x2ac>
		0000000000021bec:  R_AARCH64_CALL26	_printk
   21bf0: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d44
   21bf4: 91000000     	add	x0, x0, #0x0
		0000000000021bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d44
   21bf8: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x486b
   21bfc: 91000021     	add	x1, x1, #0x0
		0000000000021bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x486b
   21c00: 94000000     	bl	0x21c00 <syna_tcm_erase_mtp_data+0x2c0>
		0000000000021c00:  R_AARCH64_CALL26	_printk
   21c04: 17ffffa8     	b	0x21aa4 <syna_tcm_erase_mtp_data+0x164>
   21c08: b9420e77     	ldr	w23, [x19, #0x20c]
   21c0c: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53b6
   21c10: 91000000     	add	x0, x0, #0x0
		0000000000021c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53b6
   21c14: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   21c18: 91000021     	add	x1, x1, #0x0
		0000000000021c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   21c1c: 2a0303f8     	mov	w24, w3
   21c20: 2a1703e2     	mov	w2, w23
   21c24: 94000000     	bl	0x21c24 <syna_tcm_erase_mtp_data+0x2e4>
		0000000000021c24:  R_AARCH64_CALL26	_printk
   21c28: 2a1703e5     	mov	w5, w23
   21c2c: 2a1803e3     	mov	w3, w24
   21c30: 17ffff8f     	b	0x21a6c <syna_tcm_erase_mtp_data+0x12c>
   21c34: 94000000     	bl	0x21c34 <syna_tcm_erase_mtp_data+0x2f4>
		0000000000021c34:  R_AARCH64_CALL26	__stack_chk_fail
