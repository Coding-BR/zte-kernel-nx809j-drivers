
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008a24 <ghost_check_area>:
    8a24: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008a24:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    8a28: 79403009     	ldrh	w9, [x0, #0x18]
    8a2c: f9400108     	ldr	x8, [x8]
		0000000000008a2c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    8a30: b940110c     	ldr	w12, [x8, #0x10]
    8a34: 321f018a     	orr	w10, w12, #0x2
    8a38: 71000d5f     	cmp	w10, #0x3
    8a3c: 54000201     	b.ne	0x8a7c <ghost_check_area+0x58>
    8a40: 7940380a     	ldrh	w10, [x0, #0x1c]
    8a44: b9449d0d     	ldr	w13, [x8, #0x49c]
    8a48: 6b0a01bf     	cmp	w13, w10
    8a4c: 540005ac     	b.gt	0x8b00 <ghost_check_area+0xdc>
    8a50: 7948890b     	ldrh	w11, [x8, #0x444]
    8a54: 4b0d016b     	sub	w11, w11, w13
    8a58: 6b0a017f     	cmp	w11, w10
    8a5c: 5400052b     	b.lt	0x8b00 <ghost_check_area+0xdc>
    8a60: 6b0901bf     	cmp	w13, w9
    8a64: 540004ec     	b.gt	0x8b00 <ghost_check_area+0xdc>
    8a68: 7948850b     	ldrh	w11, [x8, #0x442]
    8a6c: 4b0d016d     	sub	w13, w11, w13
    8a70: 6b0901bf     	cmp	w13, w9
    8a74: 5400014a     	b.ge	0x8a9c <ghost_check_area+0x78>
    8a78: 14000022     	b	0x8b00 <ghost_check_area+0xdc>
    8a7c: b9449d0a     	ldr	w10, [x8, #0x49c]
    8a80: 6b09015f     	cmp	w10, w9
    8a84: 540003ec     	b.gt	0x8b00 <ghost_check_area+0xdc>
    8a88: 7948850b     	ldrh	w11, [x8, #0x442]
    8a8c: 4b0a016a     	sub	w10, w11, w10
    8a90: 6b09015f     	cmp	w10, w9
    8a94: 5400036b     	b.lt	0x8b00 <ghost_check_area+0xdc>
    8a98: 7940380a     	ldrh	w10, [x0, #0x1c]
    8a9c: 7100059f     	cmp	w12, #0x1
    8aa0: 52800020     	mov	w0, #0x1                // =1
    8aa4: 540000ac     	b.gt	0x8ab8 <ghost_check_area+0x94>
    8aa8: 3400032c     	cbz	w12, 0x8b0c <ghost_check_area+0xe8>
    8aac: 7100059f     	cmp	w12, #0x1
    8ab0: 540000c0     	b.eq	0x8ac8 <ghost_check_area+0xa4>
    8ab4: 14000025     	b	0x8b48 <ghost_check_area+0x124>
    8ab8: 7100099f     	cmp	w12, #0x2
    8abc: 54000340     	b.eq	0x8b24 <ghost_check_area+0x100>
    8ac0: 71000d9f     	cmp	w12, #0x3
    8ac4: 54000421     	b.ne	0x8b48 <ghost_check_area+0x124>
    8ac8: b944a50c     	ldr	w12, [x8, #0x4a4]
    8acc: 6b09019f     	cmp	w12, w9
    8ad0: 5400008c     	b.gt	0x8ae0 <ghost_check_area+0xbc>
    8ad4: 4b0c016b     	sub	w11, w11, w12
    8ad8: 6b09017f     	cmp	w11, w9
    8adc: 5400036a     	b.ge	0x8b48 <ghost_check_area+0x124>
    8ae0: b944a109     	ldr	w9, [x8, #0x4a0]
    8ae4: 6b0a013f     	cmp	w9, w10
    8ae8: 5400032c     	b.gt	0x8b4c <ghost_check_area+0x128>
    8aec: 79488908     	ldrh	w8, [x8, #0x444]
    8af0: 4b090108     	sub	w8, w8, w9
    8af4: 6b0a011f     	cmp	w8, w10
    8af8: 5400028a     	b.ge	0x8b48 <ghost_check_area+0x124>
    8afc: 14000014     	b	0x8b4c <ghost_check_area+0x128>
    8b00: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcc2
    8b04: 91000000     	add	x0, x0, #0x0
		0000000000008b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcc2
    8b08: 14000013     	b	0x8b54 <ghost_check_area+0x130>
    8b0c: 7948890c     	ldrh	w12, [x8, #0x444]
    8b10: b944a50d     	ldr	w13, [x8, #0x4a4]
    8b14: 4b0d018c     	sub	w12, w12, w13
    8b18: 6b0a019f     	cmp	w12, w10
    8b1c: 5400016a     	b.ge	0x8b48 <ghost_check_area+0x124>
    8b20: 14000004     	b	0x8b30 <ghost_check_area+0x10c>
    8b24: b944a50c     	ldr	w12, [x8, #0x4a4]
    8b28: 6b0a019f     	cmp	w12, w10
    8b2c: 540000ed     	b.le	0x8b48 <ghost_check_area+0x124>
    8b30: b944a108     	ldr	w8, [x8, #0x4a0]
    8b34: 6b09011f     	cmp	w8, w9
    8b38: 540000ac     	b.gt	0x8b4c <ghost_check_area+0x128>
    8b3c: 4b080168     	sub	w8, w11, w8
    8b40: 6b09011f     	cmp	w8, w9
    8b44: 5400004b     	b.lt	0x8b4c <ghost_check_area+0x128>
    8b48: d65f03c0     	ret
    8b4c: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac53
    8b50: 91000000     	add	x0, x0, #0x0
		0000000000008b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac53
    8b54: d503233f     	paciasp
    8b58: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    8b5c: 910003fd     	mov	x29, sp
    8b60: 94000000     	bl	0x8b60 <ghost_check_area+0x13c>
		0000000000008b60:  R_AARCH64_CALL26	_printk
    8b64: 2a1f03e0     	mov	w0, wzr
    8b68: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    8b6c: d50323bf     	autiasp
    8b70: d65f03c0     	ret
