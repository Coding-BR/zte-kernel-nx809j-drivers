
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018f08 <syna_tcm_v1_check_max_rw_size>:
   18f08: d503233f     	paciasp
   18f0c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   18f10: 910003fd     	mov	x29, sp
   18f14: b4000320     	cbz	x0, 0x18f78 <syna_tcm_v1_check_max_rw_size+0x70>
   18f18: 39420008     	ldrb	w8, [x0, #0x80]
   18f1c: 7100051f     	cmp	w8, #0x1
   18f20: 54000321     	b.ne	0x18f84 <syna_tcm_v1_check_max_rw_size+0x7c>
   18f24: 79412c09     	ldrh	w9, [x0, #0x96]
   18f28: 34000349     	cbz	w9, 0x18f90 <syna_tcm_v1_check_max_rw_size+0x88>
   18f2c: b9404008     	ldr	w8, [x0, #0x40]
   18f30: b940380b     	ldr	w11, [x0, #0x38]
   18f34: 6b08013f     	cmp	w9, w8
   18f38: 1a88312a     	csel	w10, w9, w8, lo
   18f3c: 7100011f     	cmp	w8, #0x0
   18f40: 1a8a0129     	csel	w9, w9, w10, eq
   18f44: 6b09017f     	cmp	w11, w9
   18f48: 54000040     	b.eq	0x18f50 <syna_tcm_v1_check_max_rw_size+0x48>
   18f4c: b9003809     	str	w9, [x0, #0x38]
   18f50: 340000c8     	cbz	w8, 0x18f68 <syna_tcm_v1_check_max_rw_size+0x60>
   18f54: b9403c09     	ldr	w9, [x0, #0x3c]
   18f58: b9404408     	ldr	w8, [x0, #0x44]
   18f5c: 6b08013f     	cmp	w9, w8
   18f60: 54000049     	b.ls	0x18f68 <syna_tcm_v1_check_max_rw_size+0x60>
   18f64: b9003c08     	str	w8, [x0, #0x3c]
   18f68: 2a1f03e0     	mov	w0, wzr
   18f6c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   18f70: d50323bf     	autiasp
   18f74: d65f03c0     	ret
   18f78: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   18f7c: 91000000     	add	x0, x0, #0x0
		0000000000018f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   18f80: 14000006     	b	0x18f98 <syna_tcm_v1_check_max_rw_size+0x90>
   18f84: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57b9
   18f88: 91000000     	add	x0, x0, #0x0
		0000000000018f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57b9
   18f8c: 14000003     	b	0x18f98 <syna_tcm_v1_check_max_rw_size+0x90>
   18f90: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5db4
   18f94: 91000000     	add	x0, x0, #0x0
		0000000000018f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5db4
   18f98: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140d
   18f9c: 91000021     	add	x1, x1, #0x0
		0000000000018f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140d
   18fa0: 94000000     	bl	0x18fa0 <syna_tcm_v1_check_max_rw_size+0x98>
		0000000000018fa0:  R_AARCH64_CALL26	_printk
   18fa4: 12801e00     	mov	w0, #-0xf1              // =-241
   18fa8: 17fffff1     	b	0x18f6c <syna_tcm_v1_check_max_rw_size+0x64>
