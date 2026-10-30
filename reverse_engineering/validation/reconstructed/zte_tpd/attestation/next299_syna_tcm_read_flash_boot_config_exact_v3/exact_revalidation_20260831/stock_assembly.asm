
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ea08 <syna_tcm_read_flash_boot_config>:
   1ea08: d503233f     	paciasp
   1ea0c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1ea10: f9000bf7     	str	x23, [sp, #0x10]
   1ea14: a90257f6     	stp	x22, x21, [sp, #0x20]
   1ea18: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1ea1c: 910003fd     	mov	x29, sp
   1ea20: b5000081     	cbnz	x1, 0x1ea30 <syna_tcm_read_flash_boot_config+0x28>
   1ea24: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ea24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2917
   1ea28: 91000000     	add	x0, x0, #0x0
		000000000001ea28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2917
   1ea2c: 14000004     	b	0x1ea3c <syna_tcm_read_flash_boot_config+0x34>
   1ea30: b50001a2     	cbnz	x2, 0x1ea64 <syna_tcm_read_flash_boot_config+0x5c>
   1ea34: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ea34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c0c
   1ea38: 91000000     	add	x0, x0, #0x0
		000000000001ea38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c0c
   1ea3c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ea3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c1e
   1ea40: 91000021     	add	x1, x1, #0x0
		000000000001ea40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c1e
   1ea44: 94000000     	bl	0x1ea44 <syna_tcm_read_flash_boot_config+0x3c>
		000000000001ea44:  R_AARCH64_CALL26	_printk
   1ea48: 12801e00     	mov	w0, #-0xf1              // =-241
   1ea4c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1ea50: f9400bf7     	ldr	x23, [sp, #0x10]
   1ea54: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1ea58: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1ea5c: d50323bf     	autiasp
   1ea60: d65f03c0     	ret
   1ea64: 39402408     	ldrb	w8, [x0, #0x9]
   1ea68: 7100051f     	cmp	w8, #0x1
   1ea6c: 540000e1     	b.ne	0x1ea88 <syna_tcm_read_flash_boot_config+0x80>
   1ea70: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ea70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc8
   1ea74: 91000000     	add	x0, x0, #0x0
		000000000001ea74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc8
   1ea78: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ea78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c1e
   1ea7c: 91000021     	add	x1, x1, #0x0
		000000000001ea7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c1e
   1ea80: 52800022     	mov	w2, #0x1                // =1
   1ea84: 14000050     	b	0x1ebc4 <syna_tcm_read_flash_boot_config+0x1bc>
   1ea88: f9401029     	ldr	x9, [x1, #0x20]
   1ea8c: 39400128     	ldrb	w8, [x9]
   1ea90: 7100051f     	cmp	w8, #0x1
   1ea94: 54000100     	b.eq	0x1eab4 <syna_tcm_read_flash_boot_config+0xac>
   1ea98: 71000d1f     	cmp	w8, #0x3
   1ea9c: 540008a1     	b.ne	0x1ebb0 <syna_tcm_read_flash_boot_config+0x1a8>
   1eaa0: 52800268     	mov	w8, #0x13               // =19
   1eaa4: 5280024a     	mov	w10, #0x12              // =18
   1eaa8: 5280022b     	mov	w11, #0x11              // =17
   1eaac: 5280020c     	mov	w12, #0x10              // =16
   1eab0: 14000005     	b	0x1eac4 <syna_tcm_read_flash_boot_config+0xbc>
   1eab4: 528001e8     	mov	w8, #0xf                // =15
   1eab8: 528001ca     	mov	w10, #0xe               // =14
   1eabc: 528001ab     	mov	w11, #0xd               // =13
   1eac0: 5280018c     	mov	w12, #0xc               // =12
   1eac4: 386c692c     	ldrb	w12, [x9, x12]
   1eac8: 386b692b     	ldrb	w11, [x9, x11]
   1eacc: 2a0b218c     	orr	w12, w12, w11, lsl #8
   1ead0: b9402c2b     	ldr	w11, [x1, #0x2c]
   1ead4: 1b0c7d74     	mul	w20, w11, w12
   1ead8: 34000674     	cbz	w20, 0x1eba4 <syna_tcm_read_flash_boot_config+0x19c>
   1eadc: 386a692a     	ldrb	w10, [x9, x10]
   1eae0: 38686928     	ldrb	w8, [x9, x8]
   1eae4: 2a082144     	orr	w4, w10, w8, lsl #8
   1eae8: 1b047d73     	mul	w19, w11, w4
   1eaec: 340005d3     	cbz	w19, 0x1eba4 <syna_tcm_read_flash_boot_config+0x19c>
   1eaf0: b9403828     	ldr	w8, [x1, #0x38]
   1eaf4: 6b14011f     	cmp	w8, w20
   1eaf8: 54000040     	b.eq	0x1eb00 <syna_tcm_read_flash_boot_config+0xf8>
   1eafc: b9003834     	str	w20, [x1, #0x38]
   1eb00: b9403428     	ldr	w8, [x1, #0x34]
   1eb04: aa0003f6     	mov	x22, x0
   1eb08: 2a0303f5     	mov	w21, w3
   1eb0c: aa0203f7     	mov	x23, x2
   1eb10: 6b04011f     	cmp	w8, w4
   1eb14: 54000040     	b.eq	0x1eb1c <syna_tcm_read_flash_boot_config+0x114>
   1eb18: b9003424     	str	w4, [x1, #0x34]
   1eb1c: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001eb1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2940
   1eb20: 91000000     	add	x0, x0, #0x0
		000000000001eb20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2940
   1eb24: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001eb24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c1e
   1eb28: 91000021     	add	x1, x1, #0x0
		000000000001eb28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c1e
   1eb2c: 2a1403e2     	mov	w2, w20
   1eb30: 2a1403e3     	mov	w3, w20
   1eb34: 2a1303e5     	mov	w5, w19
   1eb38: 94000000     	bl	0x1eb38 <syna_tcm_read_flash_boot_config+0x130>
		000000000001eb38:  R_AARCH64_CALL26	_printk
   1eb3c: b9400ae8     	ldr	w8, [x23, #0x8]
   1eb40: f94002e0     	ldr	x0, [x23]
   1eb44: 6b13011f     	cmp	w8, w19
   1eb48: 54000142     	b.hs	0x1eb70 <syna_tcm_read_flash_boot_config+0x168>
   1eb4c: b4000040     	cbz	x0, 0x1eb54 <syna_tcm_read_flash_boot_config+0x14c>
   1eb50: 94000c3a     	bl	0x21c38 <syna_pal_mem_free>
   1eb54: 2a1303e0     	mov	w0, w19
   1eb58: 94000a8e     	bl	0x21590 <syna_pal_mem_alloc>
   1eb5c: aa1703e8     	mov	x8, x23
   1eb60: f90002e0     	str	x0, [x23]
   1eb64: b40004a0     	cbz	x0, 0x1ebf8 <syna_tcm_read_flash_boot_config+0x1f0>
   1eb68: b9000913     	str	w19, [x8, #0x8]
   1eb6c: 2a1303e8     	mov	w8, w19
   1eb70: 2a0803e2     	mov	w2, w8
   1eb74: 2a1f03e1     	mov	w1, wzr
   1eb78: 94000000     	bl	0x1eb78 <syna_tcm_read_flash_boot_config+0x170>
		000000000001eb78:  R_AARCH64_CALL26	memset
   1eb7c: f94002e2     	ldr	x2, [x23]
   1eb80: aa1603e0     	mov	x0, x22
   1eb84: 2a1403e1     	mov	w1, w20
   1eb88: 2a1303e3     	mov	w3, w19
   1eb8c: 2a1503e4     	mov	w4, w21
   1eb90: b9000eff     	str	wzr, [x23, #0xc]
   1eb94: 97fffceb     	bl	0x1df40 <syna_tcm_read_flash>
   1eb98: 37f801a0     	tbnz	w0, #0x1f, 0x1ebcc <syna_tcm_read_flash_boot_config+0x1c4>
   1eb9c: b9000ef3     	str	w19, [x23, #0xc]
   1eba0: 17ffffab     	b	0x1ea4c <syna_tcm_read_flash_boot_config+0x44>
   1eba4: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001eba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c00
   1eba8: 91000000     	add	x0, x0, #0x0
		000000000001eba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c00
   1ebac: 17ffffa4     	b	0x1ea3c <syna_tcm_read_flash_boot_config+0x34>
   1ebb0: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ebb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0c6
   1ebb4: 91000000     	add	x0, x0, #0x0
		000000000001ebb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0c6
   1ebb8: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ebb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c1e
   1ebbc: 91000021     	add	x1, x1, #0x0
		000000000001ebbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c1e
   1ebc0: 2a0803e2     	mov	w2, w8
   1ebc4: 94000000     	bl	0x1ebc4 <syna_tcm_read_flash_boot_config+0x1bc>
		000000000001ebc4:  R_AARCH64_CALL26	_printk
   1ebc8: 17ffffa0     	b	0x1ea48 <syna_tcm_read_flash_boot_config+0x40>
   1ebcc: 90000008     	adrp	x8, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ebcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1003
   1ebd0: 91000108     	add	x8, x8, #0x0
		000000000001ebd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1003
   1ebd4: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ebd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c1e
   1ebd8: 91000021     	add	x1, x1, #0x0
		000000000001ebd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c1e
   1ebdc: 2a0003f5     	mov	w21, w0
   1ebe0: aa0803e0     	mov	x0, x8
   1ebe4: 2a1403e2     	mov	w2, w20
   1ebe8: 2a1303e3     	mov	w3, w19
   1ebec: 94000000     	bl	0x1ebec <syna_tcm_read_flash_boot_config+0x1e4>
		000000000001ebec:  R_AARCH64_CALL26	_printk
   1ebf0: 2a1503e0     	mov	w0, w21
   1ebf4: 17ffff96     	b	0x1ea4c <syna_tcm_read_flash_boot_config+0x44>
   1ebf8: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ebf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1ebfc: 91000000     	add	x0, x0, #0x0
		000000000001ebfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1ec00: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ec00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1ec04: 91000021     	add	x1, x1, #0x0
		000000000001ec04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1ec08: 2a1303e2     	mov	w2, w19
   1ec0c: aa0803f4     	mov	x20, x8
   1ec10: 94000000     	bl	0x1ec10 <syna_tcm_read_flash_boot_config+0x208>
		000000000001ec10:  R_AARCH64_CALL26	_printk
   1ec14: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ec14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x286f
   1ec18: 91000000     	add	x0, x0, #0x0
		000000000001ec18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x286f
   1ec1c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ec1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c1e
   1ec20: 91000021     	add	x1, x1, #0x0
		000000000001ec20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c1e
   1ec24: f900069f     	str	xzr, [x20, #0x8]
   1ec28: 94000000     	bl	0x1ec28 <syna_tcm_read_flash_boot_config+0x220>
		000000000001ec28:  R_AARCH64_CALL26	_printk
   1ec2c: 12801e40     	mov	w0, #-0xf3              // =-243
   1ec30: 17ffff87     	b	0x1ea4c <syna_tcm_read_flash_boot_config+0x44>
