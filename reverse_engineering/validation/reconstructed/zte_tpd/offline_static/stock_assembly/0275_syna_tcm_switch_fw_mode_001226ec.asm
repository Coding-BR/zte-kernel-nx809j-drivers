
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001be64 <syna_tcm_switch_fw_mode>:
   1be64: d503233f     	paciasp
   1be68: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1be6c: f9000bf5     	str	x21, [sp, #0x10]
   1be70: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1be74: 910003fd     	mov	x29, sp
   1be78: b4000540     	cbz	x0, 0x1bf20 <syna_tcm_switch_fw_mode+0xbc>
   1be7c: 340000a2     	cbz	w2, 0x1be90 <syna_tcm_switch_fw_mode+0x2c>
   1be80: b941e808     	ldr	w8, [x0, #0x1e8]
   1be84: 6b02011f     	cmp	w8, w2
   1be88: 1a828113     	csel	w19, w8, w2, hi
   1be8c: 14000005     	b	0x1bea0 <syna_tcm_switch_fw_mode+0x3c>
   1be90: f9402408     	ldr	x8, [x0, #0x48]
   1be94: 39405108     	ldrb	w8, [x8, #0x14]
   1be98: 36000648     	tbz	w8, #0x0, 0x1bf60 <syna_tcm_switch_fw_mode+0xfc>
   1be9c: 2a1f03f3     	mov	w19, wzr
   1bea0: 12001c28     	and	w8, w1, #0xff
   1bea4: 71002d1f     	cmp	w8, #0xb
   1bea8: 54000180     	b.eq	0x1bed8 <syna_tcm_switch_fw_mode+0x74>
   1beac: 7100051f     	cmp	w8, #0x1
   1beb0: 540003e1     	b.ne	0x1bf2c <syna_tcm_switch_fw_mode+0xc8>
   1beb4: 39402408     	ldrb	w8, [x0, #0x9]
   1beb8: 7100051f     	cmp	w8, #0x1
   1bebc: 54000140     	b.eq	0x1bee4 <syna_tcm_switch_fw_mode+0x80>
   1bec0: 350007d3     	cbnz	w19, 0x1bfb8 <syna_tcm_switch_fw_mode+0x154>
   1bec4: f9402408     	ldr	x8, [x0, #0x48]
   1bec8: 39405108     	ldrb	w8, [x8, #0x14]
   1becc: 36000648     	tbz	w8, #0x0, 0x1bf94 <syna_tcm_switch_fw_mode+0x130>
   1bed0: 2a1f03f3     	mov	w19, wzr
   1bed4: 14000039     	b	0x1bfb8 <syna_tcm_switch_fw_mode+0x154>
   1bed8: 39402408     	ldrb	w8, [x0, #0x9]
   1bedc: 71002d1f     	cmp	w8, #0xb
   1bee0: 54000341     	b.ne	0x1bf48 <syna_tcm_switch_fw_mode+0xe4>
   1bee4: f941d808     	ldr	x8, [x0, #0x3b0]
   1bee8: b4000108     	cbz	x8, 0x1bf08 <syna_tcm_switch_fw_mode+0xa4>
   1beec: b85fc110     	ldur	w16, [x8, #-0x4]
   1bef0: 728ca131     	movk	w17, #0x6509
   1bef4: 72baaf51     	movk	w17, #0xd57a, lsl #16
   1bef8: 6b11021f     	cmp	w16, w17
   1befc: 54000040     	b.eq	0x1bf04 <syna_tcm_switch_fw_mode+0xa0>
   1bf00: d4304500     	brk	#0x8228
   1bf04: d63f0100     	blr	x8
   1bf08: 2a1f03e0     	mov	w0, wzr
   1bf0c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1bf10: f9400bf5     	ldr	x21, [sp, #0x10]
   1bf14: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1bf18: d50323bf     	autiasp
   1bf1c: d65f03c0     	ret
   1bf20: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bf20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1bf24: 91000000     	add	x0, x0, #0x0
		000000000001bf24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1bf28: 14000003     	b	0x1bf34 <syna_tcm_switch_fw_mode+0xd0>
   1bf2c: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bf2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x585d
   1bf30: 91000000     	add	x0, x0, #0x0
		000000000001bf30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x585d
   1bf34: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bf34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb00a
   1bf38: 91000021     	add	x1, x1, #0x0
		000000000001bf38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb00a
   1bf3c: 94000000     	bl	0x1bf3c <syna_tcm_switch_fw_mode+0xd8>
		000000000001bf3c:  R_AARCH64_CALL26	_printk
   1bf40: 12801e00     	mov	w0, #-0xf1              // =-241
   1bf44: 17fffff2     	b	0x1bf0c <syna_tcm_switch_fw_mode+0xa8>
   1bf48: 350009b3     	cbnz	w19, 0x1c07c <syna_tcm_switch_fw_mode+0x218>
   1bf4c: f9402408     	ldr	x8, [x0, #0x48]
   1bf50: 39405108     	ldrb	w8, [x8, #0x14]
   1bf54: 36000828     	tbz	w8, #0x0, 0x1c058 <syna_tcm_switch_fw_mode+0x1f4>
   1bf58: 2a1f03f3     	mov	w19, wzr
   1bf5c: 14000048     	b	0x1c07c <syna_tcm_switch_fw_mode+0x218>
   1bf60: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bf60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b1d
   1bf64: 91000108     	add	x8, x8, #0x0
		000000000001bf64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b1d
   1bf68: 90000009     	adrp	x9, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bf68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb00a
   1bf6c: 91000129     	add	x9, x9, #0x0
		000000000001bf6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb00a
   1bf70: b941e813     	ldr	w19, [x0, #0x1e8]
   1bf74: aa0003f4     	mov	x20, x0
   1bf78: aa0803e0     	mov	x0, x8
   1bf7c: 2a0103f5     	mov	w21, w1
   1bf80: aa0903e1     	mov	x1, x9
   1bf84: 94000000     	bl	0x1bf84 <syna_tcm_switch_fw_mode+0x120>
		000000000001bf84:  R_AARCH64_CALL26	_printk
   1bf88: 2a1503e1     	mov	w1, w21
   1bf8c: aa1403e0     	mov	x0, x20
   1bf90: 17ffffc4     	b	0x1bea0 <syna_tcm_switch_fw_mode+0x3c>
   1bf94: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bf94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1bf98: 91000108     	add	x8, x8, #0x0
		000000000001bf98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1bf9c: b941e813     	ldr	w19, [x0, #0x1e8]
   1bfa0: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bfa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6b
   1bfa4: 91000021     	add	x1, x1, #0x0
		000000000001bfa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6b
   1bfa8: aa0003f4     	mov	x20, x0
   1bfac: aa0803e0     	mov	x0, x8
   1bfb0: 94000000     	bl	0x1bfb0 <syna_tcm_switch_fw_mode+0x14c>
		000000000001bfb0:  R_AARCH64_CALL26	_printk
   1bfb4: aa1403e0     	mov	x0, x20
   1bfb8: f941cc08     	ldr	x8, [x0, #0x398]
   1bfbc: 52800281     	mov	w1, #0x14               // =20
   1bfc0: aa1f03e2     	mov	x2, xzr
   1bfc4: 2a1f03e3     	mov	w3, wzr
   1bfc8: aa1f03e4     	mov	x4, xzr
   1bfcc: 2a1303e5     	mov	w5, w19
   1bfd0: aa0003f4     	mov	x20, x0
   1bfd4: b85fc110     	ldur	w16, [x8, #-0x4]
   1bfd8: 728751d1     	movk	w17, #0x3a8e
   1bfdc: 72a48411     	movk	w17, #0x2420, lsl #16
   1bfe0: 6b11021f     	cmp	w16, w17
   1bfe4: 54000040     	b.eq	0x1bfec <syna_tcm_switch_fw_mode+0x188>
   1bfe8: d4304500     	brk	#0x8228
   1bfec: d63f0100     	blr	x8
   1bff0: 36f80120     	tbz	w0, #0x1f, 0x1c014 <syna_tcm_switch_fw_mode+0x1b0>
   1bff4: 2a0003f3     	mov	w19, w0
   1bff8: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1bffc: 91000000     	add	x0, x0, #0x0
		000000000001bffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1c000: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6b
   1c004: 91000021     	add	x1, x1, #0x0
		000000000001c004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6b
   1c008: 52800282     	mov	w2, #0x14               // =20
   1c00c: 94000000     	bl	0x1c00c <syna_tcm_switch_fw_mode+0x1a8>
		000000000001c00c:  R_AARCH64_CALL26	_printk
   1c010: 1400000f     	b	0x1c04c <syna_tcm_switch_fw_mode+0x1e8>
   1c014: 39402682     	ldrb	w2, [x20, #0x9]
   1c018: 7100045f     	cmp	w2, #0x1
   1c01c: 540000c1     	b.ne	0x1c034 <syna_tcm_switch_fw_mode+0x1d0>
   1c020: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b77
   1c024: 91000000     	add	x0, x0, #0x0
		000000000001c024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b77
   1c028: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6b
   1c02c: 91000021     	add	x1, x1, #0x0
		000000000001c02c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6b
   1c030: 14000031     	b	0x1c0f4 <syna_tcm_switch_fw_mode+0x290>
   1c034: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b76
   1c038: 91000000     	add	x0, x0, #0x0
		000000000001c038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b76
   1c03c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c03c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6b
   1c040: 91000021     	add	x1, x1, #0x0
		000000000001c040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6b
   1c044: 94000000     	bl	0x1c044 <syna_tcm_switch_fw_mode+0x1e0>
		000000000001c044:  R_AARCH64_CALL26	_printk
   1c048: 12801e33     	mov	w19, #-0xf2             // =-242
   1c04c: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c04c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1e2
   1c050: 91000000     	add	x0, x0, #0x0
		000000000001c050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1e2
   1c054: 14000035     	b	0x1c128 <syna_tcm_switch_fw_mode+0x2c4>
   1c058: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1c05c: 91000108     	add	x8, x8, #0x0
		000000000001c05c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1c060: b941e813     	ldr	w19, [x0, #0x1e8]
   1c064: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14eb
   1c068: 91000021     	add	x1, x1, #0x0
		000000000001c068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14eb
   1c06c: aa0003f4     	mov	x20, x0
   1c070: aa0803e0     	mov	x0, x8
   1c074: 94000000     	bl	0x1c074 <syna_tcm_switch_fw_mode+0x210>
		000000000001c074:  R_AARCH64_CALL26	_printk
   1c078: aa1403e0     	mov	x0, x20
   1c07c: f941cc08     	ldr	x8, [x0, #0x398]
   1c080: 528003e1     	mov	w1, #0x1f               // =31
   1c084: aa1f03e2     	mov	x2, xzr
   1c088: 2a1f03e3     	mov	w3, wzr
   1c08c: aa1f03e4     	mov	x4, xzr
   1c090: 2a1303e5     	mov	w5, w19
   1c094: aa0003f4     	mov	x20, x0
   1c098: b85fc110     	ldur	w16, [x8, #-0x4]
   1c09c: 728751d1     	movk	w17, #0x3a8e
   1c0a0: 72a48411     	movk	w17, #0x2420, lsl #16
   1c0a4: 6b11021f     	cmp	w16, w17
   1c0a8: 54000040     	b.eq	0x1c0b0 <syna_tcm_switch_fw_mode+0x24c>
   1c0ac: d4304500     	brk	#0x8228
   1c0b0: d63f0100     	blr	x8
   1c0b4: 36f80120     	tbz	w0, #0x1f, 0x1c0d8 <syna_tcm_switch_fw_mode+0x274>
   1c0b8: 2a0003f3     	mov	w19, w0
   1c0bc: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c0bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1c0c0: 91000000     	add	x0, x0, #0x0
		000000000001c0c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1c0c4: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c0c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14eb
   1c0c8: 91000021     	add	x1, x1, #0x0
		000000000001c0c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14eb
   1c0cc: 528003e2     	mov	w2, #0x1f               // =31
   1c0d0: 94000000     	bl	0x1c0d0 <syna_tcm_switch_fw_mode+0x26c>
		000000000001c0d0:  R_AARCH64_CALL26	_printk
   1c0d4: 14000013     	b	0x1c120 <syna_tcm_switch_fw_mode+0x2bc>
   1c0d8: 39402682     	ldrb	w2, [x20, #0x9]
   1c0dc: 71002c5f     	cmp	w2, #0xb
   1c0e0: 54000141     	b.ne	0x1c108 <syna_tcm_switch_fw_mode+0x2a4>
   1c0e4: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c0e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb676
   1c0e8: 91000000     	add	x0, x0, #0x0
		000000000001c0e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb676
   1c0ec: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c0ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14eb
   1c0f0: 91000021     	add	x1, x1, #0x0
		000000000001c0f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14eb
   1c0f4: 94000000     	bl	0x1c0f4 <syna_tcm_switch_fw_mode+0x290>
		000000000001c0f4:  R_AARCH64_CALL26	_printk
   1c0f8: aa1403e0     	mov	x0, x20
   1c0fc: f941d808     	ldr	x8, [x0, #0x3b0]
   1c100: b5ffef68     	cbnz	x8, 0x1beec <syna_tcm_switch_fw_mode+0x88>
   1c104: 17ffff81     	b	0x1bf08 <syna_tcm_switch_fw_mode+0xa4>
   1c108: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x719f
   1c10c: 91000000     	add	x0, x0, #0x0
		000000000001c10c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x719f
   1c110: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14eb
   1c114: 91000021     	add	x1, x1, #0x0
		000000000001c114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14eb
   1c118: 94000000     	bl	0x1c118 <syna_tcm_switch_fw_mode+0x2b4>
		000000000001c118:  R_AARCH64_CALL26	_printk
   1c11c: 12801e33     	mov	w19, #-0xf2             // =-242
   1c120: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e97
   1c124: 91000000     	add	x0, x0, #0x0
		000000000001c124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e97
   1c128: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb00a
   1c12c: 91000021     	add	x1, x1, #0x0
		000000000001c12c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb00a
   1c130: 94000000     	bl	0x1c130 <syna_tcm_switch_fw_mode+0x2cc>
		000000000001c130:  R_AARCH64_CALL26	_printk
   1c134: 2a1303e0     	mov	w0, w19
   1c138: 17ffff75     	b	0x1bf0c <syna_tcm_switch_fw_mode+0xa8>
