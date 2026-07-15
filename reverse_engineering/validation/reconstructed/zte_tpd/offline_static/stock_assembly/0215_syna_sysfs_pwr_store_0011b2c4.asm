
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014a3c <syna_sysfs_pwr_store>:
   14a3c: d503233f     	paciasp
   14a40: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   14a44: a90157f6     	stp	x22, x21, [sp, #0x10]
   14a48: a9024ff4     	stp	x20, x19, [sp, #0x20]
   14a4c: 910003fd     	mov	x29, sp
   14a50: f9400c08     	ldr	x8, [x0, #0x18]
   14a54: aa0303f3     	mov	x19, x3
   14a58: f9400d14     	ldr	x20, [x8, #0x18]
   14a5c: f9404e96     	ldr	x22, [x20, #0x98]
   14a60: 39560ac8     	ldrb	w8, [x22, #0x582]
   14a64: 36000448     	tbz	w8, #0x0, 0x14aec <syna_sysfs_pwr_store+0xb0>
   14a68: aa0203f5     	mov	x21, x2
   14a6c: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x920
   14a70: 91000021     	add	x1, x1, #0x0
		0000000000014a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x920
   14a74: aa0203e0     	mov	x0, x2
   14a78: 528000c2     	mov	w2, #0x6                // =6
   14a7c: 94000000     	bl	0x14a7c <syna_sysfs_pwr_store+0x40>
		0000000000014a7c:  R_AARCH64_CALL26	strncmp
   14a80: 34000300     	cbz	w0, 0x14ae0 <syna_sysfs_pwr_store+0xa4>
   14a84: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5523
   14a88: 91000021     	add	x1, x1, #0x0
		0000000000014a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5523
   14a8c: aa1503e0     	mov	x0, x21
   14a90: 528000e2     	mov	w2, #0x7                // =7
   14a94: 94000000     	bl	0x14a94 <syna_sysfs_pwr_store+0x58>
		0000000000014a94:  R_AARCH64_CALL26	strncmp
   14a98: 35000360     	cbnz	w0, 0x14b04 <syna_sysfs_pwr_store+0xc8>
   14a9c: f94366c8     	ldr	x8, [x22, #0x6c8]
   14aa0: b4000128     	cbz	x8, 0x14ac4 <syna_sysfs_pwr_store+0x88>
   14aa4: aa1403e0     	mov	x0, x20
   14aa8: b85fc110     	ldur	w16, [x8, #-0x4]
   14aac: 72878171     	movk	w17, #0x3c0b
   14ab0: 72a54e11     	movk	w17, #0x2a70, lsl #16
   14ab4: 6b11021f     	cmp	w16, w17
   14ab8: 54000040     	b.eq	0x14ac0 <syna_sysfs_pwr_store+0x84>
   14abc: d4304500     	brk	#0x8228
   14ac0: d63f0100     	blr	x8
   14ac4: 93407e73     	sxtw	x19, w19
   14ac8: aa1303e0     	mov	x0, x19
   14acc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   14ad0: a94157f6     	ldp	x22, x21, [sp, #0x10]
   14ad4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   14ad8: d50323bf     	autiasp
   14adc: d65f03c0     	ret
   14ae0: f94362c8     	ldr	x8, [x22, #0x6c0]
   14ae4: b5fffe08     	cbnz	x8, 0x14aa4 <syna_sysfs_pwr_store+0x68>
   14ae8: 17fffff7     	b	0x14ac4 <syna_sysfs_pwr_store+0x88>
   14aec: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473c
   14af0: 91000000     	add	x0, x0, #0x0
		0000000000014af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473c
   14af4: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x82fb
   14af8: 91000021     	add	x1, x1, #0x0
		0000000000014af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x82fb
   14afc: 94000000     	bl	0x14afc <syna_sysfs_pwr_store+0xc0>
		0000000000014afc:  R_AARCH64_CALL26	_printk
   14b00: 17fffff2     	b	0x14ac8 <syna_sysfs_pwr_store+0x8c>
   14b04: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139e
   14b08: 91000000     	add	x0, x0, #0x0
		0000000000014b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139e
   14b0c: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x82fb
   14b10: 91000021     	add	x1, x1, #0x0
		0000000000014b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x82fb
   14b14: aa1503e2     	mov	x2, x21
   14b18: 94000000     	bl	0x14b18 <syna_sysfs_pwr_store+0xdc>
		0000000000014b18:  R_AARCH64_CALL26	_printk
   14b1c: 928002b3     	mov	x19, #-0x16             // =-22
   14b20: 17ffffea     	b	0x14ac8 <syna_sysfs_pwr_store+0x8c>
