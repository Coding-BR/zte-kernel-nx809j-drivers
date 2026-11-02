
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018b80 <ghost_check_area>:
   18b80: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018b80:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   18b84: 79403009     	ldrh	w9, [x0, #0x18]
   18b88: f9400108     	ldr	x8, [x8]
		0000000000018b88:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   18b8c: b940110c     	ldr	w12, [x8, #0x10]
   18b90: 321f018a     	orr	w10, w12, #0x2
   18b94: 71000d5f     	cmp	w10, #0x3
   18b98: 54000201     	b.ne	0x18bd8 <ghost_check_area+0x58>
   18b9c: 7940380a     	ldrh	w10, [x0, #0x1c]
   18ba0: b9449d0d     	ldr	w13, [x8, #0x49c]
   18ba4: 6b0a01bf     	cmp	w13, w10
   18ba8: 540005ac     	b.gt	0x18c5c <ghost_check_area+0xdc>
   18bac: 7948890b     	ldrh	w11, [x8, #0x444]
   18bb0: 4b0d016b     	sub	w11, w11, w13
   18bb4: 6b0a017f     	cmp	w11, w10
   18bb8: 5400052b     	b.lt	0x18c5c <ghost_check_area+0xdc>
   18bbc: 6b0901bf     	cmp	w13, w9
   18bc0: 540004ec     	b.gt	0x18c5c <ghost_check_area+0xdc>
   18bc4: 7948850b     	ldrh	w11, [x8, #0x442]
   18bc8: 4b0d016d     	sub	w13, w11, w13
   18bcc: 6b0901bf     	cmp	w13, w9
   18bd0: 5400014a     	b.ge	0x18bf8 <ghost_check_area+0x78>
   18bd4: 14000022     	b	0x18c5c <ghost_check_area+0xdc>
   18bd8: b9449d0a     	ldr	w10, [x8, #0x49c]
   18bdc: 6b09015f     	cmp	w10, w9
   18be0: 540003ec     	b.gt	0x18c5c <ghost_check_area+0xdc>
   18be4: 7948850b     	ldrh	w11, [x8, #0x442]
   18be8: 4b0a016a     	sub	w10, w11, w10
   18bec: 6b09015f     	cmp	w10, w9
   18bf0: 5400036b     	b.lt	0x18c5c <ghost_check_area+0xdc>
   18bf4: 7940380a     	ldrh	w10, [x0, #0x1c]
   18bf8: 7100059f     	cmp	w12, #0x1
   18bfc: 52800020     	mov	w0, #0x1                // =1
   18c00: 540000ac     	b.gt	0x18c14 <ghost_check_area+0x94>
   18c04: 3400032c     	cbz	w12, 0x18c68 <ghost_check_area+0xe8>
   18c08: 7100059f     	cmp	w12, #0x1
   18c0c: 540000c0     	b.eq	0x18c24 <ghost_check_area+0xa4>
   18c10: 14000025     	b	0x18ca4 <ghost_check_area+0x124>
   18c14: 7100099f     	cmp	w12, #0x2
   18c18: 54000340     	b.eq	0x18c80 <ghost_check_area+0x100>
   18c1c: 71000d9f     	cmp	w12, #0x3
   18c20: 54000421     	b.ne	0x18ca4 <ghost_check_area+0x124>
   18c24: b944a50c     	ldr	w12, [x8, #0x4a4]
   18c28: 6b09019f     	cmp	w12, w9
   18c2c: 5400008c     	b.gt	0x18c3c <ghost_check_area+0xbc>
   18c30: 4b0c016b     	sub	w11, w11, w12
   18c34: 6b09017f     	cmp	w11, w9
   18c38: 5400036a     	b.ge	0x18ca4 <ghost_check_area+0x124>
   18c3c: b944a109     	ldr	w9, [x8, #0x4a0]
   18c40: 6b0a013f     	cmp	w9, w10
   18c44: 5400032c     	b.gt	0x18ca8 <ghost_check_area+0x128>
   18c48: 79488908     	ldrh	w8, [x8, #0x444]
   18c4c: 4b090108     	sub	w8, w8, w9
   18c50: 6b0a011f     	cmp	w8, w10
   18c54: 5400028a     	b.ge	0x18ca4 <ghost_check_area+0x124>
   18c58: 14000014     	b	0x18ca8 <ghost_check_area+0x128>
   18c5c: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf2
   18c60: 91000000     	add	x0, x0, #0x0
		0000000000018c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf2
   18c64: 14000013     	b	0x18cb0 <ghost_check_area+0x130>
   18c68: 7948890c     	ldrh	w12, [x8, #0x444]
   18c6c: b944a50d     	ldr	w13, [x8, #0x4a4]
   18c70: 4b0d018c     	sub	w12, w12, w13
   18c74: 6b0a019f     	cmp	w12, w10
   18c78: 5400016a     	b.ge	0x18ca4 <ghost_check_area+0x124>
   18c7c: 14000004     	b	0x18c8c <ghost_check_area+0x10c>
   18c80: b944a50c     	ldr	w12, [x8, #0x4a4]
   18c84: 6b0a019f     	cmp	w12, w10
   18c88: 540000ed     	b.le	0x18ca4 <ghost_check_area+0x124>
   18c8c: b944a108     	ldr	w8, [x8, #0x4a0]
   18c90: 6b09011f     	cmp	w8, w9
   18c94: 540000ac     	b.gt	0x18ca8 <ghost_check_area+0x128>
   18c98: 4b080168     	sub	w8, w11, w8
   18c9c: 6b09011f     	cmp	w8, w9
   18ca0: 5400004b     	b.lt	0x18ca8 <ghost_check_area+0x128>
   18ca4: d65f03c0     	ret
   18ca8: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaef6
   18cac: 91000000     	add	x0, x0, #0x0
		0000000000018cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaef6
   18cb0: d503233f     	paciasp
   18cb4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   18cb8: 910003fd     	mov	x29, sp
   18cbc: 94000000     	bl	0x18cbc <ghost_check_area+0x13c>
		0000000000018cbc:  R_AARCH64_CALL26	_printk
   18cc0: 2a1f03e0     	mov	w0, wzr
   18cc4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   18cc8: d50323bf     	autiasp
   18ccc: d65f03c0     	ret
