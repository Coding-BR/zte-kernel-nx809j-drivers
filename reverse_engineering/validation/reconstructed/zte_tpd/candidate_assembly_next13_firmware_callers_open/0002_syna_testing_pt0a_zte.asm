
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cf10 <syna_testing_pt0a_zte>:
   1cf10: d503233f     	paciasp
   1cf14: d10203ff     	sub	sp, sp, #0x80
   1cf18: a9057bfd     	stp	x29, x30, [sp, #0x50]
   1cf1c: a90657f6     	stp	x22, x21, [sp, #0x60]
   1cf20: a9074ff4     	stp	x20, x19, [sp, #0x70]
   1cf24: 910143fd     	add	x29, sp, #0x50
   1cf28: d5384108     	mrs	x8, SP_EL0
   1cf2c: aa0003f4     	mov	x20, x0
   1cf30: f9438908     	ldr	x8, [x8, #0x710]
   1cf34: f81f83a8     	stur	x8, [x29, #-0x8]
   1cf38: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1cf3c: f90003ff     	str	xzr, [sp]
   1cf40: d5384108     	mrs	x8, SP_EL0
   1cf44: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1cf48: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1cf4c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1cf50: d503201f     	nop
   1cf54: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cf54:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1cf58: 5281b801     	mov	w1, #0xdc0              // =3520
   1cf5c: 52820002     	mov	w2, #0x1000             // =4096
   1cf60: f9400100     	ldr	x0, [x8]
		000000000001cf60:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1cf64: 94000000     	bl	0x1cf64 <syna_testing_pt0a_zte+0x54>
		000000000001cf64:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1cf68: aa0003f3     	mov	x19, x0
   1cf6c: b4000dd3     	cbz	x19, 0x1d124 <syna_testing_pt0a_zte+0x214>
   1cf70: 39560a88     	ldrb	w8, [x20, #0x582]
   1cf74: 370000e8     	tbnz	w8, #0x0, 0x1cf90 <syna_testing_pt0a_zte+0x80>
   1cf78: 90000002     	adrp	x2, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cf78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e3
   1cf7c: 91000042     	add	x2, x2, #0x0
		000000000001cf7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e3
   1cf80: aa1303e0     	mov	x0, x19
   1cf84: 52820001     	mov	w1, #0x1000             // =4096
   1cf88: 94000000     	bl	0x1cf88 <syna_testing_pt0a_zte+0x78>
		000000000001cf88:  R_AARCH64_CALL26	scnprintf
   1cf8c: 1400006d     	b	0x1d140 <syna_testing_pt0a_zte+0x230>
   1cf90: 94000000     	bl	0x1cf90 <syna_testing_pt0a_zte+0x80>
		000000000001cf90:  R_AARCH64_CALL26	syna_tcm_get_testing_0A00
   1cf94: b4000800     	cbz	x0, 0x1d094 <syna_testing_pt0a_zte+0x184>
   1cf98: f9400288     	ldr	x8, [x20]
   1cf9c: aa0003f5     	mov	x21, x0
   1cfa0: 90000001     	adrp	x1, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cfa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f96
   1cfa4: 91000021     	add	x1, x1, #0x0
		000000000001cfa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f96
   1cfa8: 90000002     	adrp	x2, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cfa8:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
   1cfac: 91000042     	add	x2, x2, #0x0
		000000000001cfac:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
   1cfb0: b9402108     	ldr	w8, [x8, #0x20]
   1cfb4: f90003ff     	str	xzr, [sp]
   1cfb8: b9002408     	str	w8, [x0, #0x24]
   1cfbc: f9400288     	ldr	x8, [x20]
   1cfc0: b9401d08     	ldr	w8, [x8, #0x1c]
   1cfc4: b9002008     	str	w8, [x0, #0x20]
   1cfc8: 910063e0     	add	x0, sp, #0x18
   1cfcc: 94000000     	bl	0x1cfcc <syna_testing_pt0a_zte+0xbc>
		000000000001cfcc:  R_AARCH64_CALL26	__mutex_init
   1cfd0: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cfd0:  R_AARCH64_ADR_PREL_PG_HI21	pt0a_hi_limits
   1cfd4: 91000109     	add	x9, x8, #0x0
		000000000001cfd4:  R_AARCH64_ADD_ABS_LO12_NC	pt0a_hi_limits
   1cfd8: aa1503e1     	mov	x1, x21
   1cfdc: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cfdc:  R_AARCH64_ADR_PREL_PG_HI21	pt0a_lo_limits
   1cfe0: 91000108     	add	x8, x8, #0x0
		000000000001cfe0:  R_AARCH64_ADD_ABS_LO12_NC	pt0a_lo_limits
   1cfe4: 2a1f03e2     	mov	w2, wzr
   1cfe8: a900a3e9     	stp	x9, x8, [sp, #0x8]
   1cfec: 910003e8     	mov	x8, sp
   1cff0: 910043e9     	add	x9, sp, #0x10
   1cff4: f9006ea8     	str	x8, [x21, #0xd8]
   1cff8: 910023e8     	add	x8, sp, #0x8
   1cffc: a903a6a8     	stp	x8, x9, [x21, #0x38]
   1d000: f9400ea8     	ldr	x8, [x21, #0x18]
   1d004: f9400280     	ldr	x0, [x20]
   1d008: b85fc110     	ldur	w16, [x8, #-0x4]
   1d00c: 72895251     	movk	w17, #0x4a92
   1d010: 72b03811     	movk	w17, #0x81c0, lsl #16
   1d014: 6b11021f     	cmp	w16, w17
   1d018: 54000040     	b.eq	0x1d020 <syna_testing_pt0a_zte+0x110>
   1d01c: d4304500     	brk	#0x8228
   1d020: d63f0100     	blr	x8
   1d024: 37f80460     	tbnz	w0, #0x1f, 0x1d0b0 <syna_testing_pt0a_zte+0x1a0>
   1d028: 394042a8     	ldrb	w8, [x21, #0x10]
   1d02c: 90000009     	adrp	x9, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d02c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f5a
   1d030: 91000129     	add	x9, x9, #0x0
		000000000001d030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f5a
   1d034: 7100011f     	cmp	w8, #0x0
   1d038: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f8
   1d03c: 91000108     	add	x8, x8, #0x0
		000000000001d03c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f8
   1d040: 9a890105     	csel	x5, x8, x9, eq
   1d044: f94006a3     	ldr	x3, [x21, #0x8]
   1d048: b94002a4     	ldr	w4, [x21]
   1d04c: 90000002     	adrp	x2, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d04c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe58
   1d050: 91000042     	add	x2, x2, #0x0
		000000000001d050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe58
   1d054: aa1303e0     	mov	x0, x19
   1d058: 52820001     	mov	w1, #0x1000             // =4096
   1d05c: 94000000     	bl	0x1d05c <syna_testing_pt0a_zte+0x14c>
		000000000001d05c:  R_AARCH64_CALL26	scnprintf
   1d060: 2a0003f4     	mov	w20, w0
   1d064: aa1303e0     	mov	x0, x19
   1d068: 94000000     	bl	0x1d068 <syna_testing_pt0a_zte+0x158>
		000000000001d068:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   1d06c: f94003f5     	ldr	x21, [sp]
   1d070: 94000000     	bl	0x1d070 <syna_testing_pt0a_zte+0x160>
		000000000001d070:  R_AARCH64_CALL26	syna_request_managed_device
   1d074: b4000300     	cbz	x0, 0x1d0d4 <syna_testing_pt0a_zte+0x1c4>
   1d078: b4000075     	cbz	x21, 0x1d084 <syna_testing_pt0a_zte+0x174>
   1d07c: aa1503e1     	mov	x1, x21
   1d080: 94000000     	bl	0x1d080 <syna_testing_pt0a_zte+0x170>
		000000000001d080:  R_AARCH64_CALL26	devm_kfree
   1d084: aa1303e0     	mov	x0, x19
   1d088: 94000000     	bl	0x1d088 <syna_testing_pt0a_zte+0x178>
		000000000001d088:  R_AARCH64_CALL26	kfree
   1d08c: 2a1403e0     	mov	w0, w20
   1d090: 1400002c     	b	0x1d140 <syna_testing_pt0a_zte+0x230>
   1d094: 90000002     	adrp	x2, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e61
   1d098: 91000042     	add	x2, x2, #0x0
		000000000001d098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e61
   1d09c: aa1303e0     	mov	x0, x19
   1d0a0: 52820001     	mov	w1, #0x1000             // =4096
   1d0a4: 52814003     	mov	w3, #0xa00              // =2560
   1d0a8: 94000000     	bl	0x1d0a8 <syna_testing_pt0a_zte+0x198>
		000000000001d0a8:  R_AARCH64_CALL26	scnprintf
   1d0ac: 14000025     	b	0x1d140 <syna_testing_pt0a_zte+0x230>
   1d0b0: f94006a2     	ldr	x2, [x21, #0x8]
   1d0b4: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d0b4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D2FD
   1d0b8: 91000000     	add	x0, x0, #0x0
		000000000001d0b8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D2FD
   1d0bc: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d0bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190a
   1d0c0: 91000021     	add	x1, x1, #0x0
		000000000001d0c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190a
   1d0c4: 94000000     	bl	0x1d0c4 <syna_testing_pt0a_zte+0x1b4>
		000000000001d0c4:  R_AARCH64_CALL26	_printk
   1d0c8: 90000005     	adrp	x5, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d0c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f8
   1d0cc: 910000a5     	add	x5, x5, #0x0
		000000000001d0cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f8
   1d0d0: 17ffffdd     	b	0x1d044 <syna_testing_pt0a_zte+0x134>
   1d0d4: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d0d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   1d0d8: 91000000     	add	x0, x0, #0x0
		000000000001d0d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   1d0dc: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d0dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b1
   1d0e0: 91000021     	add	x1, x1, #0x0
		000000000001d0e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b1
   1d0e4: aa1f03e2     	mov	x2, xzr
   1d0e8: 94000000     	bl	0x1d0e8 <syna_testing_pt0a_zte+0x1d8>
		000000000001d0e8:  R_AARCH64_CALL26	_printk
   1d0ec: 17ffffe6     	b	0x1d084 <syna_testing_pt0a_zte+0x174>
   1d0f0: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d0f0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x1b8
   1d0f4: 91000108     	add	x8, x8, #0x0
		000000000001d0f4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x1b8
   1d0f8: d5384115     	mrs	x21, SP_EL0
   1d0fc: f9402ab6     	ldr	x22, [x21, #0x50]
   1d100: f9002aa8     	str	x8, [x21, #0x50]
   1d104: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d104:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1d108: f9400100     	ldr	x0, [x8]
		000000000001d108:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1d10c: 5281b801     	mov	w1, #0xdc0              // =3520
   1d110: 52820002     	mov	w2, #0x1000             // =4096
   1d114: 94000000     	bl	0x1d114 <syna_testing_pt0a_zte+0x204>
		000000000001d114:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1d118: aa0003f3     	mov	x19, x0
   1d11c: f9002ab6     	str	x22, [x21, #0x50]
   1d120: b5fff293     	cbnz	x19, 0x1cf70 <syna_testing_pt0a_zte+0x60>
   1d124: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d124:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C045
   1d128: 91000000     	add	x0, x0, #0x0
		000000000001d128:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C045
   1d12c: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001d12c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190a
   1d130: 91000021     	add	x1, x1, #0x0
		000000000001d130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190a
   1d134: aa1f03e2     	mov	x2, xzr
   1d138: 94000000     	bl	0x1d138 <syna_testing_pt0a_zte+0x228>
		000000000001d138:  R_AARCH64_CALL26	_printk
   1d13c: 12800160     	mov	w0, #-0xc               // =-12
   1d140: d5384108     	mrs	x8, SP_EL0
   1d144: f9438908     	ldr	x8, [x8, #0x710]
   1d148: d5384109     	mrs	x9, SP_EL0
   1d14c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1d150: eb09011f     	cmp	x8, x9
   1d154: 540000e1     	b.ne	0x1d170 <syna_testing_pt0a_zte+0x260>
   1d158: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   1d15c: a94657f6     	ldp	x22, x21, [sp, #0x60]
   1d160: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   1d164: 910203ff     	add	sp, sp, #0x80
   1d168: d50323bf     	autiasp
   1d16c: d65f03c0     	ret
   1d170: 94000000     	bl	0x1d170 <syna_testing_pt0a_zte+0x260>
		000000000001d170:  R_AARCH64_CALL26	__stack_chk_fail
