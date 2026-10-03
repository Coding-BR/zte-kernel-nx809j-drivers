
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000027e5c <zte_touch_probe>:
   27e5c: d503233f     	paciasp
   27e60: d10103ff     	sub	sp, sp, #0x40
   27e64: a9017bfd     	stp	x29, x30, [sp, #0x10]
   27e68: a90257f6     	stp	x22, x21, [sp, #0x20]
   27e6c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   27e70: 910043fd     	add	x29, sp, #0x10
   27e74: d5384108     	mrs	x8, SP_EL0
   27e78: aa0003f4     	mov	x20, x0
   27e7c: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe4
   27e80: 91000000     	add	x0, x0, #0x0
		0000000000027e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe4
   27e84: f9438908     	ldr	x8, [x8, #0x710]
   27e88: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1df2
   27e8c: 91000021     	add	x1, x1, #0x0
		0000000000027e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1df2
   27e90: 52816542     	mov	w2, #0xb2a              // =2858
   27e94: f90007e8     	str	x8, [sp, #0x8]
   27e98: 94000000     	bl	0x27e98 <zte_touch_probe+0x3c>
		0000000000027e98:  R_AARCH64_CALL26	_printk
   27e9c: 91004280     	add	x0, x20, #0x10
   27ea0: 52820101     	mov	w1, #0x1008             // =4104
   27ea4: 5281b802     	mov	w2, #0xdc0              // =3520
   27ea8: 94000000     	bl	0x27ea8 <zte_touch_probe+0x4c>
		0000000000027ea8:  R_AARCH64_CALL26	devm_kmalloc
   27eac: b50000a0     	cbnz	x0, 0x27ec0 <zte_touch_probe+0x64>
   27eb0: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb62
   27eb4: 91000000     	add	x0, x0, #0x0
		0000000000027eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb62
   27eb8: 94000000     	bl	0x27eb8 <zte_touch_probe+0x5c>
		0000000000027eb8:  R_AARCH64_CALL26	_printk
   27ebc: 14000246     	b	0x287d4 <zte_touch_probe+0x978>
   27ec0: 90000015     	adrp	x21, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027ec0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   27ec4: aa0003f3     	mov	x19, x0
   27ec8: f906e414     	str	x20, [x0, #0xdc8]
   27ecc: f90002a0     	str	x0, [x21]
		0000000000027ecc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   27ed0: f9005680     	str	x0, [x20, #0xa8]
   27ed4: 94000000     	bl	0x27ed4 <zte_touch_probe+0x78>
		0000000000027ed4:  R_AARCH64_CALL26	zte_touch_pdev_register
   27ed8: f9417e94     	ldr	x20, [x20, #0x2f8]
   27edc: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44f8
   27ee0: 91000021     	add	x1, x1, #0x0
		0000000000027ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44f8
   27ee4: aa1f03e2     	mov	x2, xzr
   27ee8: b90007ff     	str	wzr, [sp, #0x4]
   27eec: aa1403e0     	mov	x0, x20
   27ef0: 94000000     	bl	0x27ef0 <zte_touch_probe+0x94>
		0000000000027ef0:  R_AARCH64_CALL26	of_find_property
   27ef4: f100001f     	cmp	x0, #0x0
   27ef8: 1a9f07e8     	cset	w8, ne
   27efc: 39006e68     	strb	w8, [x19, #0x1b]
   27f00: b4000080     	cbz	x0, 0x27f10 <zte_touch_probe+0xb4>
   27f04: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027f04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e02
   27f08: 91000000     	add	x0, x0, #0x0
		0000000000027f08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e02
   27f0c: 94000000     	bl	0x27f0c <zte_touch_probe+0xb0>
		0000000000027f0c:  R_AARCH64_CALL26	_printk
   27f10: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37b4
   27f14: 91000021     	add	x1, x1, #0x0
		0000000000027f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37b4
   27f18: aa1403e0     	mov	x0, x20
   27f1c: aa1f03e2     	mov	x2, xzr
   27f20: 94000000     	bl	0x27f20 <zte_touch_probe+0xc4>
		0000000000027f20:  R_AARCH64_CALL26	of_find_property
   27f24: f100001f     	cmp	x0, #0x0
   27f28: 1a9f07e8     	cset	w8, ne
   27f2c: 39009668     	strb	w8, [x19, #0x25]
   27f30: b40006c0     	cbz	x0, 0x28008 <zte_touch_probe+0x1ac>
   27f34: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90d8
   27f38: 91000000     	add	x0, x0, #0x0
		0000000000027f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90d8
   27f3c: 94000000     	bl	0x27f3c <zte_touch_probe+0xe0>
		0000000000027f3c:  R_AARCH64_CALL26	_printk
   27f40: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9772
   27f44: 91000021     	add	x1, x1, #0x0
		0000000000027f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9772
   27f48: 910013e2     	add	x2, sp, #0x4
   27f4c: aa1403e0     	mov	x0, x20
   27f50: 52800023     	mov	w3, #0x1                // =1
   27f54: aa1f03e4     	mov	x4, xzr
   27f58: 94000000     	bl	0x27f58 <zte_touch_probe+0xfc>
		0000000000027f58:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   27f5c: 37f80060     	tbnz	w0, #0x1f, 0x27f68 <zte_touch_probe+0x10c>
   27f60: b94007e8     	ldr	w8, [sp, #0x4]
   27f64: 79007a68     	strh	w8, [x19, #0x3c]
   27f68: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc110
   27f6c: 91000021     	add	x1, x1, #0x0
		0000000000027f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc110
   27f70: 910013e2     	add	x2, sp, #0x4
   27f74: aa1403e0     	mov	x0, x20
   27f78: 52800023     	mov	w3, #0x1                // =1
   27f7c: aa1f03e4     	mov	x4, xzr
   27f80: 94000000     	bl	0x27f80 <zte_touch_probe+0x124>
		0000000000027f80:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   27f84: 37f80060     	tbnz	w0, #0x1f, 0x27f90 <zte_touch_probe+0x134>
   27f88: b94007e8     	ldr	w8, [sp, #0x4]
   27f8c: 3900d268     	strb	w8, [x19, #0x34]
   27f90: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc12a
   27f94: 91000021     	add	x1, x1, #0x0
		0000000000027f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc12a
   27f98: 910013e2     	add	x2, sp, #0x4
   27f9c: aa1403e0     	mov	x0, x20
   27fa0: 52800023     	mov	w3, #0x1                // =1
   27fa4: aa1f03e4     	mov	x4, xzr
   27fa8: 94000000     	bl	0x27fa8 <zte_touch_probe+0x14c>
		0000000000027fa8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   27fac: 37f80060     	tbnz	w0, #0x1f, 0x27fb8 <zte_touch_probe+0x15c>
   27fb0: b94007e8     	ldr	w8, [sp, #0x4]
   27fb4: 3900d668     	strb	w8, [x19, #0x35]
   27fb8: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027fb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x978a
   27fbc: 91000021     	add	x1, x1, #0x0
		0000000000027fbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x978a
   27fc0: 910013e2     	add	x2, sp, #0x4
   27fc4: aa1403e0     	mov	x0, x20
   27fc8: 52800023     	mov	w3, #0x1                // =1
   27fcc: aa1f03e4     	mov	x4, xzr
   27fd0: 94000000     	bl	0x27fd0 <zte_touch_probe+0x174>
		0000000000027fd0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   27fd4: 37f80060     	tbnz	w0, #0x1f, 0x27fe0 <zte_touch_probe+0x184>
   27fd8: b94007e8     	ldr	w8, [sp, #0x4]
   27fdc: 3900da68     	strb	w8, [x19, #0x36]
   27fe0: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f2
   27fe4: 91000021     	add	x1, x1, #0x0
		0000000000027fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f2
   27fe8: 910013e2     	add	x2, sp, #0x4
   27fec: aa1403e0     	mov	x0, x20
   27ff0: 52800023     	mov	w3, #0x1                // =1
   27ff4: aa1f03e4     	mov	x4, xzr
   27ff8: 94000000     	bl	0x27ff8 <zte_touch_probe+0x19c>
		0000000000027ff8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   27ffc: 37f80060     	tbnz	w0, #0x1f, 0x28008 <zte_touch_probe+0x1ac>
   28000: b94007e8     	ldr	w8, [sp, #0x4]
   28004: 3900de68     	strb	w8, [x19, #0x37]
   28008: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b74
   2800c: 91000021     	add	x1, x1, #0x0
		000000000002800c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b74
   28010: aa1403e0     	mov	x0, x20
   28014: aa1f03e2     	mov	x2, xzr
   28018: 94000000     	bl	0x28018 <zte_touch_probe+0x1bc>
		0000000000028018:  R_AARCH64_CALL26	of_find_property
   2801c: f100001f     	cmp	x0, #0x0
   28020: 1a9f07e8     	cset	w8, ne
   28024: 39124268     	strb	w8, [x19, #0x490]
   28028: b4000de0     	cbz	x0, 0x281e4 <zte_touch_probe+0x388>
   2802c: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		000000000002802c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b82
   28030: 91000000     	add	x0, x0, #0x0
		0000000000028030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b82
   28034: 94000000     	bl	0x28034 <zte_touch_probe+0x1d8>
		0000000000028034:  R_AARCH64_CALL26	_printk
   28038: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ec
   2803c: 91000021     	add	x1, x1, #0x0
		000000000002803c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ec
   28040: 910013e2     	add	x2, sp, #0x4
   28044: aa1403e0     	mov	x0, x20
   28048: 52800023     	mov	w3, #0x1                // =1
   2804c: aa1f03e4     	mov	x4, xzr
   28050: 94000000     	bl	0x28050 <zte_touch_probe+0x1f4>
		0000000000028050:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28054: 394013e8     	ldrb	w8, [sp, #0x4]
   28058: 7100001f     	cmp	w0, #0x0
   2805c: 52800329     	mov	w9, #0x19               // =25
   28060: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8106
   28064: 91000021     	add	x1, x1, #0x0
		0000000000028064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8106
   28068: 910013e2     	add	x2, sp, #0x4
   2806c: 1a89a108     	csel	w8, w8, w9, ge
   28070: aa1403e0     	mov	x0, x20
   28074: 52800023     	mov	w3, #0x1                // =1
   28078: aa1f03e4     	mov	x4, xzr
   2807c: 39124668     	strb	w8, [x19, #0x491]
   28080: 94000000     	bl	0x28080 <zte_touch_probe+0x224>
		0000000000028080:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28084: 394013e8     	ldrb	w8, [sp, #0x4]
   28088: 7100001f     	cmp	w0, #0x0
   2808c: 52800289     	mov	w9, #0x14               // =20
   28090: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37c6
   28094: 91000021     	add	x1, x1, #0x0
		0000000000028094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37c6
   28098: 910013e2     	add	x2, sp, #0x4
   2809c: 1a89a108     	csel	w8, w8, w9, ge
   280a0: aa1403e0     	mov	x0, x20
   280a4: 52800023     	mov	w3, #0x1                // =1
   280a8: aa1f03e4     	mov	x4, xzr
   280ac: 39124a68     	strb	w8, [x19, #0x492]
   280b0: 94000000     	bl	0x280b0 <zte_touch_probe+0x254>
		00000000000280b0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   280b4: 394013e8     	ldrb	w8, [sp, #0x4]
   280b8: 7100001f     	cmp	w0, #0x0
   280bc: 528000a9     	mov	w9, #0x5                // =5
   280c0: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		00000000000280c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2afa
   280c4: 91000021     	add	x1, x1, #0x0
		00000000000280c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2afa
   280c8: 910013e2     	add	x2, sp, #0x4
   280cc: 1a89a108     	csel	w8, w8, w9, ge
   280d0: aa1403e0     	mov	x0, x20
   280d4: 52800023     	mov	w3, #0x1                // =1
   280d8: aa1f03e4     	mov	x4, xzr
   280dc: 39124e68     	strb	w8, [x19, #0x493]
   280e0: 94000000     	bl	0x280e0 <zte_touch_probe+0x284>
		00000000000280e0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   280e4: 394013e8     	ldrb	w8, [sp, #0x4]
   280e8: 7100001f     	cmp	w0, #0x0
   280ec: 52800109     	mov	w9, #0x8                // =8
   280f0: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		00000000000280f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x519a
   280f4: 91000021     	add	x1, x1, #0x0
		00000000000280f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x519a
   280f8: 910013e2     	add	x2, sp, #0x4
   280fc: 1a89a108     	csel	w8, w8, w9, ge
   28100: aa1403e0     	mov	x0, x20
   28104: 52800023     	mov	w3, #0x1                // =1
   28108: aa1f03e4     	mov	x4, xzr
   2810c: 39125268     	strb	w8, [x19, #0x494]
   28110: 94000000     	bl	0x28110 <zte_touch_probe+0x2b4>
		0000000000028110:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28114: 394013e8     	ldrb	w8, [sp, #0x4]
   28118: 7100001f     	cmp	w0, #0x0
   2811c: 52800469     	mov	w9, #0x23               // =35
   28120: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbfa
   28124: 91000021     	add	x1, x1, #0x0
		0000000000028124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbfa
   28128: 910013e2     	add	x2, sp, #0x4
   2812c: 1a89a108     	csel	w8, w8, w9, ge
   28130: aa1403e0     	mov	x0, x20
   28134: 52800023     	mov	w3, #0x1                // =1
   28138: aa1f03e4     	mov	x4, xzr
   2813c: 39125668     	strb	w8, [x19, #0x495]
   28140: 94000000     	bl	0x28140 <zte_touch_probe+0x2e4>
		0000000000028140:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28144: b94007e8     	ldr	w8, [sp, #0x4]
   28148: 7100001f     	cmp	w0, #0x0
   2814c: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		000000000002814c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc14
   28150: 91000021     	add	x1, x1, #0x0
		0000000000028150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc14
   28154: 910013e2     	add	x2, sp, #0x4
   28158: aa1403e0     	mov	x0, x20
   2815c: 5a9fa108     	csinv	w8, w8, wzr, ge
   28160: 52800023     	mov	w3, #0x1                // =1
   28164: aa1f03e4     	mov	x4, xzr
   28168: b9049a68     	str	w8, [x19, #0x498]
   2816c: 94000000     	bl	0x2816c <zte_touch_probe+0x310>
		000000000002816c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28170: b94007e8     	ldr	w8, [sp, #0x4]
   28174: 7100001f     	cmp	w0, #0x0
   28178: 52828029     	mov	w9, #0x1401             // =5121
   2817c: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		000000000002817c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8122
   28180: 91000021     	add	x1, x1, #0x0
		0000000000028180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8122
   28184: 910013e2     	add	x2, sp, #0x4
   28188: 1a89a108     	csel	w8, w8, w9, ge
   2818c: aa1403e0     	mov	x0, x20
   28190: 52800023     	mov	w3, #0x1                // =1
   28194: aa1f03e4     	mov	x4, xzr
   28198: b9049e68     	str	w8, [x19, #0x49c]
   2819c: 94000000     	bl	0x2819c <zte_touch_probe+0x340>
		000000000002819c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   281a0: b94007e8     	ldr	w8, [sp, #0x4]
   281a4: 7100001f     	cmp	w0, #0x0
   281a8: 52806436     	mov	w22, #0x321             // =801
   281ac: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		00000000000281ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc36
   281b0: 91000021     	add	x1, x1, #0x0
		00000000000281b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc36
   281b4: 910013e2     	add	x2, sp, #0x4
   281b8: 1a96a108     	csel	w8, w8, w22, ge
   281bc: aa1403e0     	mov	x0, x20
   281c0: 52800023     	mov	w3, #0x1                // =1
   281c4: aa1f03e4     	mov	x4, xzr
   281c8: b904a268     	str	w8, [x19, #0x4a0]
   281cc: 94000000     	bl	0x281cc <zte_touch_probe+0x370>
		00000000000281cc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   281d0: b94007e8     	ldr	w8, [sp, #0x4]
   281d4: 7100001f     	cmp	w0, #0x0
   281d8: 39524661     	ldrb	w1, [x19, #0x491]
   281dc: 1a96a108     	csel	w8, w8, w22, ge
   281e0: 1400000d     	b	0x28214 <zte_touch_probe+0x3b8>
   281e4: 52828329     	mov	w9, #0x1419             // =5145
   281e8: 91124668     	add	x8, x19, #0x491
   281ec: 5280046a     	mov	w10, #0x23              // =35
   281f0: 72a100a9     	movk	w9, #0x805, lsl #16
   281f4: 52800321     	mov	w1, #0x19               // =25
   281f8: 3912566a     	strb	w10, [x19, #0x495]
   281fc: b9000109     	str	w9, [x8]
   28200: 92de6fc8     	mov	x8, #-0xf37e00000001    // =-267722491428865
   28204: f2e00008     	movk	x8, #0x0, lsl #48
   28208: f9024e68     	str	x8, [x19, #0x498]
   2820c: 52806428     	mov	w8, #0x321              // =801
   28210: b904a268     	str	w8, [x19, #0x4a0]
   28214: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1e
   28218: 91000000     	add	x0, x0, #0x0
		0000000000028218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1e
   2821c: b904a668     	str	w8, [x19, #0x4a4]
   28220: 94000000     	bl	0x28220 <zte_touch_probe+0x3c4>
		0000000000028220:  R_AARCH64_CALL26	_printk
   28224: 39524a61     	ldrb	w1, [x19, #0x492]
   28228: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4aac
   2822c: 91000000     	add	x0, x0, #0x0
		000000000002822c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4aac
   28230: 94000000     	bl	0x28230 <zte_touch_probe+0x3d4>
		0000000000028230:  R_AARCH64_CALL26	_printk
   28234: 39524e61     	ldrb	w1, [x19, #0x493]
   28238: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e44
   2823c: 91000000     	add	x0, x0, #0x0
		000000000002823c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e44
   28240: 94000000     	bl	0x28240 <zte_touch_probe+0x3e4>
		0000000000028240:  R_AARCH64_CALL26	_printk
   28244: 39525261     	ldrb	w1, [x19, #0x494]
   28248: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250e
   2824c: 91000000     	add	x0, x0, #0x0
		000000000002824c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250e
   28250: 94000000     	bl	0x28250 <zte_touch_probe+0x3f4>
		0000000000028250:  R_AARCH64_CALL26	_printk
   28254: 39525661     	ldrb	w1, [x19, #0x495]
   28258: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86b6
   2825c: 91000000     	add	x0, x0, #0x0
		000000000002825c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86b6
   28260: 94000000     	bl	0x28260 <zte_touch_probe+0x404>
		0000000000028260:  R_AARCH64_CALL26	_printk
   28264: b9449a61     	ldr	w1, [x19, #0x498]
   28268: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b8c
   2826c: 91000000     	add	x0, x0, #0x0
		000000000002826c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b8c
   28270: 94000000     	bl	0x28270 <zte_touch_probe+0x414>
		0000000000028270:  R_AARCH64_CALL26	_printk
   28274: b9449e61     	ldr	w1, [x19, #0x49c]
   28278: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51b6
   2827c: 91000000     	add	x0, x0, #0x0
		000000000002827c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51b6
   28280: 94000000     	bl	0x28280 <zte_touch_probe+0x424>
		0000000000028280:  R_AARCH64_CALL26	_printk
   28284: b944a261     	ldr	w1, [x19, #0x4a0]
   28288: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x626
   2828c: 91000000     	add	x0, x0, #0x0
		000000000002828c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x626
   28290: 94000000     	bl	0x28290 <zte_touch_probe+0x434>
		0000000000028290:  R_AARCH64_CALL26	_printk
   28294: b944a661     	ldr	w1, [x19, #0x4a4]
   28298: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2534
   2829c: 91000000     	add	x0, x0, #0x0
		000000000002829c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2534
   282a0: 94000000     	bl	0x282a0 <zte_touch_probe+0x444>
		00000000000282a0:  R_AARCH64_CALL26	_printk
   282a4: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		00000000000282a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51e0
   282a8: 91000021     	add	x1, x1, #0x0
		00000000000282a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51e0
   282ac: 910013e2     	add	x2, sp, #0x4
   282b0: aa1403e0     	mov	x0, x20
   282b4: 52800023     	mov	w3, #0x1                // =1
   282b8: aa1f03e4     	mov	x4, xzr
   282bc: 94000000     	bl	0x282bc <zte_touch_probe+0x460>
		00000000000282bc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   282c0: 36f82a20     	tbz	w0, #0x1f, 0x28804 <zte_touch_probe+0x9a8>
   282c4: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		00000000000282c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x255e
   282c8: 91000021     	add	x1, x1, #0x0
		00000000000282c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x255e
   282cc: 910013e2     	add	x2, sp, #0x4
   282d0: aa1403e0     	mov	x0, x20
   282d4: 52800023     	mov	w3, #0x1                // =1
   282d8: aa1f03e4     	mov	x4, xzr
   282dc: 94000000     	bl	0x282dc <zte_touch_probe+0x480>
		00000000000282dc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   282e0: 36f82c00     	tbz	w0, #0x1f, 0x28860 <zte_touch_probe+0xa04>
   282e4: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		00000000000282e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8142
   282e8: 91000021     	add	x1, x1, #0x0
		00000000000282e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8142
   282ec: aa1403e0     	mov	x0, x20
   282f0: aa1f03e2     	mov	x2, xzr
   282f4: 94000000     	bl	0x282f4 <zte_touch_probe+0x498>
		00000000000282f4:  R_AARCH64_CALL26	of_find_property
   282f8: f100001f     	cmp	x0, #0x0
   282fc: 1a9f07e8     	cset	w8, ne
   28300: 39007268     	strb	w8, [x19, #0x1c]
   28304: b5002c40     	cbnz	x0, 0x2888c <zte_touch_probe+0xa30>
   28308: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x975e
   2830c: 91000021     	add	x1, x1, #0x0
		000000000002830c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x975e
   28310: 90000002     	adrp	x2, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028310:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x9234
   28314: 91000042     	add	x2, x2, #0x0
		0000000000028314:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x9234
   28318: 91318260     	add	x0, x19, #0xc60
   2831c: 94000000     	bl	0x2831c <zte_touch_probe+0x4c0>
		000000000002831c:  R_AARCH64_CALL26	__mutex_init
   28320: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50
   28324: 91000021     	add	x1, x1, #0x0
		0000000000028324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50
   28328: 90000002     	adrp	x2, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028328:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x9235
   2832c: 91000042     	add	x2, x2, #0x0
		000000000002832c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x9235
   28330: 91324260     	add	x0, x19, #0xc90
   28334: 94000000     	bl	0x28334 <zte_touch_probe+0x4d8>
		0000000000028334:  R_AARCH64_CALL26	__mutex_init
   28338: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90be
   2833c: 91000021     	add	x1, x1, #0x0
		000000000002833c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90be
   28340: 90000002     	adrp	x2, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028340:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x9236
   28344: 91000042     	add	x2, x2, #0x0
		0000000000028344:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x9236
   28348: 91330260     	add	x0, x19, #0xcc0
   2834c: 94000000     	bl	0x2834c <zte_touch_probe+0x4f0>
		000000000002834c:  R_AARCH64_CALL26	__mutex_init
   28350: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x170e
   28354: 91000000     	add	x0, x0, #0x0
		0000000000028354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x170e
   28358: aa1f03e1     	mov	x1, xzr
   2835c: 94000000     	bl	0x2835c <zte_touch_probe+0x500>
		000000000002835c:  R_AARCH64_CALL26	proc_mkdir
   28360: 90000014     	adrp	x20, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028360:  R_AARCH64_ADR_PREL_PG_HI21	tpd_proc_dir
   28364: f9000280     	str	x0, [x20]
		0000000000028364:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28368: b4002d60     	cbz	x0, 0x28914 <zte_touch_probe+0xab8>
   2836c: aa0003e2     	mov	x2, x0
   28370: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3184
   28374: 91000000     	add	x0, x0, #0x0
		0000000000028374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3184
   28378: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028378:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_module_Info
   2837c: 91000063     	add	x3, x3, #0x0
		000000000002837c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_module_Info
   28380: 52803681     	mov	w1, #0x1b4              // =436
   28384: 94000000     	bl	0x28384 <zte_touch_probe+0x528>
		0000000000028384:  R_AARCH64_CALL26	proc_create
   28388: b40036e0     	cbz	x0, 0x28a64 <zte_touch_probe+0xc08>
   2838c: f9400282     	ldr	x2, [x20]
		000000000002838c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28390: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3194
   28394: 91000000     	add	x0, x0, #0x0
		0000000000028394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3194
   28398: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028398:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_wake_gesture
   2839c: 91000063     	add	x3, x3, #0x0
		000000000002839c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_wake_gesture
   283a0: 52803681     	mov	w1, #0x1b4              // =436
   283a4: 94000000     	bl	0x283a4 <zte_touch_probe+0x548>
		00000000000283a4:  R_AARCH64_CALL26	proc_create
   283a8: b4003660     	cbz	x0, 0x28a74 <zte_touch_probe+0xc18>
   283ac: f9400282     	ldr	x2, [x20]
		00000000000283ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   283b0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000283b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb56
   283b4: 91000000     	add	x0, x0, #0x0
		00000000000283b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb56
   283b8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000283b8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_smart_cover
   283bc: 91000063     	add	x3, x3, #0x0
		00000000000283bc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_smart_cover
   283c0: 52803681     	mov	w1, #0x1b4              // =436
   283c4: 94000000     	bl	0x283c4 <zte_touch_probe+0x568>
		00000000000283c4:  R_AARCH64_CALL26	proc_create
   283c8: b40035e0     	cbz	x0, 0x28a84 <zte_touch_probe+0xc28>
   283cc: f9400282     	ldr	x2, [x20]
		00000000000283cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   283d0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000283d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ebe
   283d4: 91000000     	add	x0, x0, #0x0
		00000000000283d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ebe
   283d8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000283d8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_glove
   283dc: 91000063     	add	x3, x3, #0x0
		00000000000283dc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_glove
   283e0: 52803681     	mov	w1, #0x1b4              // =436
   283e4: 94000000     	bl	0x283e4 <zte_touch_probe+0x588>
		00000000000283e4:  R_AARCH64_CALL26	proc_create
   283e8: b4003560     	cbz	x0, 0x28a94 <zte_touch_probe+0xc38>
   283ec: f9400282     	ldr	x2, [x20]
		00000000000283ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   283f0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000283f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ec2
   283f4: 91000000     	add	x0, x0, #0x0
		00000000000283f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ec2
   283f8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000283f8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tpfwupgrade
   283fc: 91000063     	add	x3, x3, #0x0
		00000000000283fc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tpfwupgrade
   28400: 52803681     	mov	w1, #0x1b4              // =436
   28404: 94000000     	bl	0x28404 <zte_touch_probe+0x5a8>
		0000000000028404:  R_AARCH64_CALL26	proc_create
   28408: b40034e0     	cbz	x0, 0x28aa4 <zte_touch_probe+0xc48>
   2840c: f9400282     	ldr	x2, [x20]
		000000000002840c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28410: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5658
   28414: 91000000     	add	x0, x0, #0x0
		0000000000028414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5658
   28418: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028418:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_suspend
   2841c: 91000063     	add	x3, x3, #0x0
		000000000002841c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_suspend
   28420: 52803681     	mov	w1, #0x1b4              // =436
   28424: 94000000     	bl	0x28424 <zte_touch_probe+0x5c8>
		0000000000028424:  R_AARCH64_CALL26	proc_create
   28428: b4003460     	cbz	x0, 0x28ab4 <zte_touch_probe+0xc58>
   2842c: f9400282     	ldr	x2, [x20]
		000000000002842c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28430: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9750
   28434: 91000000     	add	x0, x0, #0x0
		0000000000028434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9750
   28438: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028438:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_headset_state
   2843c: 91000063     	add	x3, x3, #0x0
		000000000002843c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_headset_state
   28440: 52803681     	mov	w1, #0x1b4              // =436
   28444: 94000000     	bl	0x28444 <zte_touch_probe+0x5e8>
		0000000000028444:  R_AARCH64_CALL26	proc_create
   28448: b40033e0     	cbz	x0, 0x28ac4 <zte_touch_probe+0xc68>
   2844c: f9400282     	ldr	x2, [x20]
		000000000002844c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28450: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6eca
   28454: 91000000     	add	x0, x0, #0x0
		0000000000028454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6eca
   28458: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028458:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_rotation_limit_level
   2845c: 91000063     	add	x3, x3, #0x0
		000000000002845c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_rotation_limit_level
   28460: 52803681     	mov	w1, #0x1b4              // =436
   28464: 94000000     	bl	0x28464 <zte_touch_probe+0x608>
		0000000000028464:  R_AARCH64_CALL26	proc_create
   28468: b4003360     	cbz	x0, 0x28ad4 <zte_touch_probe+0xc78>
   2846c: f9400282     	ldr	x2, [x20]
		000000000002846c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28470: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
   28474: 91000000     	add	x0, x0, #0x0
		0000000000028474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
   28478: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028478:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_mrotation
   2847c: 91000063     	add	x3, x3, #0x0
		000000000002847c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_mrotation
   28480: 52803681     	mov	w1, #0x1b4              // =436
   28484: 94000000     	bl	0x28484 <zte_touch_probe+0x628>
		0000000000028484:  R_AARCH64_CALL26	proc_create
   28488: b40032e0     	cbz	x0, 0x28ae4 <zte_touch_probe+0xc88>
   2848c: f9400282     	ldr	x2, [x20]
		000000000002848c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28490: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8670
   28494: 91000000     	add	x0, x0, #0x0
		0000000000028494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8670
   28498: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028498:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_tap
   2849c: 91000063     	add	x3, x3, #0x0
		000000000002849c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_tap
   284a0: 52803681     	mov	w1, #0x1b4              // =436
   284a4: 94000000     	bl	0x284a4 <zte_touch_probe+0x648>
		00000000000284a4:  R_AARCH64_CALL26	proc_create
   284a8: b4003260     	cbz	x0, 0x28af4 <zte_touch_probe+0xc98>
   284ac: f9400282     	ldr	x2, [x20]
		00000000000284ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   284b0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000284b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24de
   284b4: 91000000     	add	x0, x0, #0x0
		00000000000284b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24de
   284b8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000284b8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_aod
   284bc: 91000063     	add	x3, x3, #0x0
		00000000000284bc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_aod
   284c0: 52803681     	mov	w1, #0x1b4              // =436
   284c4: 94000000     	bl	0x284c4 <zte_touch_probe+0x668>
		00000000000284c4:  R_AARCH64_CALL26	proc_create
   284c8: b40031e0     	cbz	x0, 0x28b04 <zte_touch_probe+0xca8>
   284cc: f9400282     	ldr	x2, [x20]
		00000000000284cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   284d0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000284d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4504
   284d4: 91000000     	add	x0, x0, #0x0
		00000000000284d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4504
   284d8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000284d8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_game
   284dc: 91000063     	add	x3, x3, #0x0
		00000000000284dc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_game
   284e0: 52803681     	mov	w1, #0x1b4              // =436
   284e4: 94000000     	bl	0x284e4 <zte_touch_probe+0x688>
		00000000000284e4:  R_AARCH64_CALL26	proc_create
   284e8: b4003160     	cbz	x0, 0x28b14 <zte_touch_probe+0xcb8>
   284ec: f9400282     	ldr	x2, [x20]
		00000000000284ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   284f0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000284f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5158
   284f4: 91000000     	add	x0, x0, #0x0
		00000000000284f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5158
   284f8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000284f8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_get_noise
   284fc: 91000063     	add	x3, x3, #0x0
		00000000000284fc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_get_noise
   28500: 52803681     	mov	w1, #0x1b4              // =436
   28504: 94000000     	bl	0x28504 <zte_touch_probe+0x6a8>
		0000000000028504:  R_AARCH64_CALL26	proc_create
   28508: b40030e0     	cbz	x0, 0x28b24 <zte_touch_probe+0xcc8>
   2850c: f9400282     	ldr	x2, [x20]
		000000000002850c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28510: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x614
   28514: 91000000     	add	x0, x0, #0x0
		0000000000028514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x614
   28518: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028518:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_edge_report_limit
   2851c: 91000063     	add	x3, x3, #0x0
		000000000002851c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_edge_report_limit
   28520: 52803681     	mov	w1, #0x1b4              // =436
   28524: 94000000     	bl	0x28524 <zte_touch_probe+0x6c8>
		0000000000028524:  R_AARCH64_CALL26	proc_create
   28528: b4003060     	cbz	x0, 0x28b34 <zte_touch_probe+0xcd8>
   2852c: f9400282     	ldr	x2, [x20]
		000000000002852c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28530: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2af2
   28534: 91000000     	add	x0, x0, #0x0
		0000000000028534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2af2
   28538: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028538:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_onekey
   2853c: 91000063     	add	x3, x3, #0x0
		000000000002853c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_onekey
   28540: 52803681     	mov	w1, #0x1b4              // =436
   28544: 94000000     	bl	0x28544 <zte_touch_probe+0x6e8>
		0000000000028544:  R_AARCH64_CALL26	proc_create
   28548: b4002fe0     	cbz	x0, 0x28b44 <zte_touch_probe+0xce8>
   2854c: f9400282     	ldr	x2, [x20]
		000000000002854c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28550: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7522
   28554: 91000000     	add	x0, x0, #0x0
		0000000000028554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7522
   28558: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028558:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_playgame
   2855c: 91000063     	add	x3, x3, #0x0
		000000000002855c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_playgame
   28560: 52803681     	mov	w1, #0x1b4              // =436
   28564: 94000000     	bl	0x28564 <zte_touch_probe+0x708>
		0000000000028564:  R_AARCH64_CALL26	proc_create
   28568: b4002f60     	cbz	x0, 0x28b54 <zte_touch_probe+0xcf8>
   2856c: f9400282     	ldr	x2, [x20]
		000000000002856c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28570: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e2
   28574: 91000000     	add	x0, x0, #0x0
		0000000000028574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e2
   28578: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028578:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_report_rate
   2857c: 91000063     	add	x3, x3, #0x0
		000000000002857c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_report_rate
   28580: 52803681     	mov	w1, #0x1b4              // =436
   28584: 94000000     	bl	0x28584 <zte_touch_probe+0x728>
		0000000000028584:  R_AARCH64_CALL26	proc_create
   28588: b4002ee0     	cbz	x0, 0x28b64 <zte_touch_probe+0xd08>
   2858c: f9400282     	ldr	x2, [x20]
		000000000002858c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28590: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ee0
   28594: 91000000     	add	x0, x0, #0x0
		0000000000028594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ee0
   28598: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028598:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_follow_hand_level
   2859c: 91000063     	add	x3, x3, #0x0
		000000000002859c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_follow_hand_level
   285a0: 52803681     	mov	w1, #0x1b4              // =436
   285a4: 94000000     	bl	0x285a4 <zte_touch_probe+0x748>
		00000000000285a4:  R_AARCH64_CALL26	proc_create
   285a8: b4002e60     	cbz	x0, 0x28b74 <zte_touch_probe+0xd18>
   285ac: f9400282     	ldr	x2, [x20]
		00000000000285ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   285b0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000285b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8198
   285b4: 91000000     	add	x0, x0, #0x0
		00000000000285b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8198
   285b8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000285b8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_stability_level
   285bc: 91000063     	add	x3, x3, #0x0
		00000000000285bc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_stability_level
   285c0: 52803681     	mov	w1, #0x1b4              // =436
   285c4: 94000000     	bl	0x285c4 <zte_touch_probe+0x768>
		00000000000285c4:  R_AARCH64_CALL26	proc_create
   285c8: b4002de0     	cbz	x0, 0x28b84 <zte_touch_probe+0xd28>
   285cc: f9400282     	ldr	x2, [x20]
		00000000000285cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   285d0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000285d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5660
   285d4: 91000000     	add	x0, x0, #0x0
		00000000000285d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5660
   285d8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000285d8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_sensibility_level
   285dc: 91000063     	add	x3, x3, #0x0
		00000000000285dc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_sensibility_level
   285e0: 52803681     	mov	w1, #0x1b4              // =436
   285e4: 94000000     	bl	0x285e4 <zte_touch_probe+0x788>
		00000000000285e4:  R_AARCH64_CALL26	proc_create
   285e8: b4002d60     	cbz	x0, 0x28b94 <zte_touch_probe+0xd38>
   285ec: f9400282     	ldr	x2, [x20]
		00000000000285ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   285f0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000285f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb90
   285f4: 91000000     	add	x0, x0, #0x0
		00000000000285f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb90
   285f8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000285f8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_game_partition
   285fc: 91000063     	add	x3, x3, #0x0
		00000000000285fc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_game_partition
   28600: 52803681     	mov	w1, #0x1b4              // =436
   28604: 94000000     	bl	0x28604 <zte_touch_probe+0x7a8>
		0000000000028604:  R_AARCH64_CALL26	proc_create
   28608: b4002ce0     	cbz	x0, 0x28ba4 <zte_touch_probe+0xd48>
   2860c: f9400282     	ldr	x2, [x20]
		000000000002860c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28610: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80ba
   28614: 91000000     	add	x0, x0, #0x0
		0000000000028614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80ba
   28618: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028618:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_pen_only
   2861c: 91000063     	add	x3, x3, #0x0
		000000000002861c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_pen_only
   28620: 52803681     	mov	w1, #0x1b4              // =436
   28624: 94000000     	bl	0x28624 <zte_touch_probe+0x7c8>
		0000000000028624:  R_AARCH64_CALL26	proc_create
   28628: b4002c60     	cbz	x0, 0x28bb4 <zte_touch_probe+0xd58>
   2862c: f9400282     	ldr	x2, [x20]
		000000000002862c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28630: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31a2
   28634: 91000000     	add	x0, x0, #0x0
		0000000000028634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31a2
   28638: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028638:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_finger_lock_flag
   2863c: 91000063     	add	x3, x3, #0x0
		000000000002863c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_finger_lock_flag
   28640: 52803681     	mov	w1, #0x1b4              // =436
   28644: 94000000     	bl	0x28644 <zte_touch_probe+0x7e8>
		0000000000028644:  R_AARCH64_CALL26	proc_create
   28648: b4002be0     	cbz	x0, 0x28bc4 <zte_touch_probe+0xd68>
   2864c: f9400282     	ldr	x2, [x20]
		000000000002864c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28650: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42
   28654: 91000000     	add	x0, x0, #0x0
		0000000000028654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42
   28658: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028658:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_self_test
   2865c: 91000063     	add	x3, x3, #0x0
		000000000002865c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_self_test
   28660: 52803681     	mov	w1, #0x1b4              // =436
   28664: 94000000     	bl	0x28664 <zte_touch_probe+0x808>
		0000000000028664:  R_AARCH64_CALL26	proc_create
   28668: b4002b60     	cbz	x0, 0x28bd4 <zte_touch_probe+0xd78>
   2866c: f9400282     	ldr	x2, [x20]
		000000000002866c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28670: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80c4
   28674: 91000000     	add	x0, x0, #0x0
		0000000000028674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80c4
   28678: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028678:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_palm_mode
   2867c: 91000063     	add	x3, x3, #0x0
		000000000002867c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_palm_mode
   28680: 52803681     	mov	w1, #0x1b4              // =436
   28684: 94000000     	bl	0x28684 <zte_touch_probe+0x828>
		0000000000028684:  R_AARCH64_CALL26	proc_create
   28688: b4002ae0     	cbz	x0, 0x28be4 <zte_touch_probe+0xd88>
   2868c: f9400282     	ldr	x2, [x20]
		000000000002868c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28690: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x867c
   28694: 91000000     	add	x0, x0, #0x0
		0000000000028694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x867c
   28698: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028698:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_fold_state
   2869c: 91000063     	add	x3, x3, #0x0
		000000000002869c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_fold_state
   286a0: 52803681     	mov	w1, #0x1b4              // =436
   286a4: 94000000     	bl	0x286a4 <zte_touch_probe+0x848>
		00000000000286a4:  R_AARCH64_CALL26	proc_create
   286a8: b4002a60     	cbz	x0, 0x28bf4 <zte_touch_probe+0xd98>
   286ac: f9400282     	ldr	x2, [x20]
		00000000000286ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   286b0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000286b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x752c
   286b4: 91000000     	add	x0, x0, #0x0
		00000000000286b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x752c
   286b8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000286b8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_fake_sleep
   286bc: 91000063     	add	x3, x3, #0x0
		00000000000286bc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_fake_sleep
   286c0: 52803681     	mov	w1, #0x1b4              // =436
   286c4: 94000000     	bl	0x286c4 <zte_touch_probe+0x868>
		00000000000286c4:  R_AARCH64_CALL26	proc_create
   286c8: b40029e0     	cbz	x0, 0x28c04 <zte_touch_probe+0xda8>
   286cc: f9400282     	ldr	x2, [x20]
		00000000000286cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   286d0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000286d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x566c
   286d4: 91000000     	add	x0, x0, #0x0
		00000000000286d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x566c
   286d8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000286d8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_screen_off_awake
   286dc: 91000063     	add	x3, x3, #0x0
		00000000000286dc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_screen_off_awake
   286e0: 52803681     	mov	w1, #0x1b4              // =436
   286e4: 94000000     	bl	0x286e4 <zte_touch_probe+0x888>
		00000000000286e4:  R_AARCH64_CALL26	proc_create
   286e8: b4002960     	cbz	x0, 0x28c14 <zte_touch_probe+0xdb8>
   286ec: f9400282     	ldr	x2, [x20]
		00000000000286ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   286f0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000286f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5bd2
   286f4: 91000000     	add	x0, x0, #0x0
		00000000000286f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5bd2
   286f8: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		00000000000286f8:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_zlog_debug
   286fc: 91000063     	add	x3, x3, #0x0
		00000000000286fc:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_zlog_debug
   28700: 52803681     	mov	w1, #0x1b4              // =436
   28704: 94000000     	bl	0x28704 <zte_touch_probe+0x8a8>
		0000000000028704:  R_AARCH64_CALL26	proc_create
   28708: b40028e0     	cbz	x0, 0x28c24 <zte_touch_probe+0xdc8>
   2870c: f9400282     	ldr	x2, [x20]
		000000000002870c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28710: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8688
   28714: 91000000     	add	x0, x0, #0x0
		0000000000028714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8688
   28718: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028718:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_ghost_debug
   2871c: 91000063     	add	x3, x3, #0x0
		000000000002871c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_ghost_debug
   28720: 52803681     	mov	w1, #0x1b4              // =436
   28724: 94000000     	bl	0x28724 <zte_touch_probe+0x8c8>
		0000000000028724:  R_AARCH64_CALL26	proc_create
   28728: b4002860     	cbz	x0, 0x28c34 <zte_touch_probe+0xdd8>
   2872c: f9400282     	ldr	x2, [x20]
		000000000002872c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28730: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ea
   28734: 91000000     	add	x0, x0, #0x0
		0000000000028734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ea
   28738: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028738:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_BBAT_test
   2873c: 91000063     	add	x3, x3, #0x0
		000000000002873c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_BBAT_test
   28740: 52803681     	mov	w1, #0x1b4              // =436
   28744: 94000000     	bl	0x28744 <zte_touch_probe+0x8e8>
		0000000000028744:  R_AARCH64_CALL26	proc_create
   28748: b40027e0     	cbz	x0, 0x28c44 <zte_touch_probe+0xde8>
   2874c: f9400282     	ldr	x2, [x20]
		000000000002874c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28750: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa014
   28754: 91000000     	add	x0, x0, #0x0
		0000000000028754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa014
   28758: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028758:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_test
   2875c: 91000063     	add	x3, x3, #0x0
		000000000002875c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_test
   28760: 52803681     	mov	w1, #0x1b4              // =436
   28764: 94000000     	bl	0x28764 <zte_touch_probe+0x908>
		0000000000028764:  R_AARCH64_CALL26	proc_create
   28768: b4002760     	cbz	x0, 0x28c54 <zte_touch_probe+0xdf8>
   2876c: f9400282     	ldr	x2, [x20]
		000000000002876c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   28770: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x622c
   28774: 91000000     	add	x0, x0, #0x0
		0000000000028774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x622c
   28778: 90000003     	adrp	x3, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028778:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_frame_data
   2877c: 91000063     	add	x3, x3, #0x0
		000000000002877c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_frame_data
   28780: 52803681     	mov	w1, #0x1b4              // =436
   28784: 94000000     	bl	0x28784 <zte_touch_probe+0x928>
		0000000000028784:  R_AARCH64_CALL26	proc_create
   28788: b40026e0     	cbz	x0, 0x28c64 <zte_touch_probe+0xe08>
   2878c: f94002b4     	ldr	x20, [x21]
		000000000002878c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   28790: f946ea88     	ldr	x8, [x20, #0xdd0]
   28794: b4000cc8     	cbz	x8, 0x2892c <zte_touch_probe+0xad0>
   28798: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f94
   2879c: 91000000     	add	x0, x0, #0x0
		000000000002879c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f94
   287a0: 91004101     	add	x1, x8, #0x10
   287a4: 94000000     	bl	0x287a4 <zte_touch_probe+0x948>
		00000000000287a4:  R_AARCH64_CALL26	kobject_create_and_add
   287a8: f9062a80     	str	x0, [x20, #0xc50]
   287ac: b4002640     	cbz	x0, 0x28c74 <zte_touch_probe+0xe18>
   287b0: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		00000000000287b0:  R_AARCH64_ADR_PREL_PG_HI21	fwimage_attr
   287b4: 91000021     	add	x1, x1, #0x0
		00000000000287b4:  R_AARCH64_ADD_ABS_LO12_NC	fwimage_attr
   287b8: 94000000     	bl	0x287b8 <zte_touch_probe+0x95c>
		00000000000287b8:  R_AARCH64_CALL26	sysfs_create_bin_file
   287bc: 35002640     	cbnz	w0, 0x28c84 <zte_touch_probe+0xe28>
   287c0: 94000000     	bl	0x287c0 <zte_touch_probe+0x964>
		00000000000287c0:  R_AARCH64_CALL26	tpd_clean_all_event
   287c4: 94000000     	bl	0x287c4 <zte_touch_probe+0x968>
		00000000000287c4:  R_AARCH64_CALL26	ghost_check_reset
   287c8: 94000000     	bl	0x287c8 <zte_touch_probe+0x96c>
		00000000000287c8:  R_AARCH64_CALL26	ufp_mac_init
   287cc: 94000000     	bl	0x287cc <zte_touch_probe+0x970>
		00000000000287cc:  R_AARCH64_CALL26	tpd_workqueue_init
   287d0: 34000b60     	cbz	w0, 0x2893c <zte_touch_probe+0xae0>
   287d4: 12800160     	mov	w0, #-0xc               // =-12
   287d8: d5384108     	mrs	x8, SP_EL0
   287dc: f9438908     	ldr	x8, [x8, #0x710]
   287e0: f94007e9     	ldr	x9, [sp, #0x8]
   287e4: eb09011f     	cmp	x8, x9
   287e8: 54002781     	b.ne	0x28cd8 <zte_touch_probe+0xe7c>
   287ec: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   287f0: a94257f6     	ldp	x22, x21, [sp, #0x20]
   287f4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   287f8: 910103ff     	add	sp, sp, #0x40
   287fc: d50323bf     	autiasp
   28800: d65f03c0     	ret
   28804: b94007e8     	ldr	w8, [sp, #0x4]
   28808: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb90
   2880c: 91000000     	add	x0, x0, #0x0
		000000000002880c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb90
   28810: 12001d01     	and	w1, w8, #0xff
   28814: 39009268     	strb	w8, [x19, #0x24]
   28818: 94000000     	bl	0x28818 <zte_touch_probe+0x9bc>
		0000000000028818:  R_AARCH64_CALL26	_printk
   2881c: 39409268     	ldrb	w8, [x19, #0x24]
   28820: 34ffd528     	cbz	w8, 0x282c4 <zte_touch_probe+0x468>
   28824: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc144
   28828: 91000021     	add	x1, x1, #0x0
		0000000000028828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc144
   2882c: 910013e2     	add	x2, sp, #0x4
   28830: aa1403e0     	mov	x0, x20
   28834: 52800023     	mov	w3, #0x1                // =1
   28838: aa1f03e4     	mov	x4, xzr
   2883c: 94000000     	bl	0x2883c <zte_touch_probe+0x9e0>
		000000000002883c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28840: 37ffd420     	tbnz	w0, #0x1f, 0x282c4 <zte_touch_probe+0x468>
   28844: b94007e8     	ldr	w8, [sp, #0x4]
   28848: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ad0
   2884c: 91000000     	add	x0, x0, #0x0
		000000000002884c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ad0
   28850: 12003d01     	and	w1, w8, #0xffff
   28854: 79007e68     	strh	w8, [x19, #0x3e]
   28858: 94000000     	bl	0x28858 <zte_touch_probe+0x9fc>
		0000000000028858:  R_AARCH64_CALL26	_printk
   2885c: 17fffe9a     	b	0x282c4 <zte_touch_probe+0x468>
   28860: b94007e8     	ldr	w8, [sp, #0x4]
   28864: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ba4
   28868: 91000000     	add	x0, x0, #0x0
		0000000000028868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ba4
   2886c: 12001d01     	and	w1, w8, #0xff
   28870: 39009a68     	strb	w8, [x19, #0x26]
   28874: 94000000     	bl	0x28874 <zte_touch_probe+0xa18>
		0000000000028874:  R_AARCH64_CALL26	_printk
   28878: 39409a68     	ldrb	w8, [x19, #0x26]
   2887c: 3200c3e9     	mov	w9, #0x1010101          // =16843009
   28880: 1b097d08     	mul	w8, w8, w9
   28884: b8027268     	stur	w8, [x19, #0x27]
   28888: 17fffe97     	b	0x282e4 <zte_touch_probe+0x488>
   2888c: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		000000000002888c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x757a
   28890: 91000000     	add	x0, x0, #0x0
		0000000000028890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x757a
   28894: 94000000     	bl	0x28894 <zte_touch_probe+0xa38>
		0000000000028894:  R_AARCH64_CALL26	_printk
   28898: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc56
   2889c: 91000021     	add	x1, x1, #0x0
		000000000002889c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc56
   288a0: 910013e2     	add	x2, sp, #0x4
   288a4: aa1403e0     	mov	x0, x20
   288a8: 52800023     	mov	w3, #0x1                // =1
   288ac: aa1f03e4     	mov	x4, xzr
   288b0: 94000000     	bl	0x288b0 <zte_touch_probe+0xa54>
		00000000000288b0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   288b4: 36f81f60     	tbz	w0, #0x1f, 0x28ca0 <zte_touch_probe+0xe44>
   288b8: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		00000000000288b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbae
   288bc: 91000021     	add	x1, x1, #0x0
		00000000000288bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbae
   288c0: 910013e2     	add	x2, sp, #0x4
   288c4: aa1403e0     	mov	x0, x20
   288c8: 52800023     	mov	w3, #0x1                // =1
   288cc: aa1f03e4     	mov	x4, xzr
   288d0: 94000000     	bl	0x288d0 <zte_touch_probe+0xa74>
		00000000000288d0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   288d4: 36f81f40     	tbz	w0, #0x1f, 0x28cbc <zte_touch_probe+0xe60>
   288d8: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		00000000000288d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6262
   288dc: 91000021     	add	x1, x1, #0x0
		00000000000288dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6262
   288e0: 910013e2     	add	x2, sp, #0x4
   288e4: aa1403e0     	mov	x0, x20
   288e8: 52800023     	mov	w3, #0x1                // =1
   288ec: aa1f03e4     	mov	x4, xzr
   288f0: 94000000     	bl	0x288f0 <zte_touch_probe+0xa94>
		00000000000288f0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   288f4: 37ffd0a0     	tbnz	w0, #0x1f, 0x28308 <zte_touch_probe+0x4ac>
   288f8: b94007e8     	ldr	w8, [sp, #0x4]
   288fc: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		00000000000288fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1208
   28900: 91000000     	add	x0, x0, #0x0
		0000000000028900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1208
   28904: 12003d01     	and	w1, w8, #0xffff
   28908: 79004668     	strh	w8, [x19, #0x22]
   2890c: 94000000     	bl	0x2890c <zte_touch_probe+0xab0>
		000000000002890c:  R_AARCH64_CALL26	_printk
   28910: 17fffe7e     	b	0x28308 <zte_touch_probe+0x4ac>
   28914: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90fe
   28918: 91000000     	add	x0, x0, #0x0
		0000000000028918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90fe
   2891c: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		000000000002891c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31b4
   28920: 91000021     	add	x1, x1, #0x0
		0000000000028920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31b4
   28924: 94000000     	bl	0x28924 <zte_touch_probe+0xac8>
		0000000000028924:  R_AARCH64_CALL26	_printk
   28928: 17ffff99     	b	0x2878c <zte_touch_probe+0x930>
   2892c: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		000000000002892c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c46
   28930: 91000000     	add	x0, x0, #0x0
		0000000000028930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c46
   28934: 94000000     	bl	0x28934 <zte_touch_probe+0xad8>
		0000000000028934:  R_AARCH64_CALL26	_printk
   28938: 17ffffa2     	b	0x287c0 <zte_touch_probe+0x964>
   2893c: f9425a61     	ldr	x1, [x19, #0x4b0]
   28940: 91234262     	add	x2, x19, #0x8d0
   28944: 52800400     	mov	w0, #0x20               // =32
   28948: 52802ee3     	mov	w3, #0x177              // =375
   2894c: 94000000     	bl	0x2894c <zte_touch_probe+0xaf0>
		000000000002894c:  R_AARCH64_CALL26	queue_delayed_work_on
   28950: f94002a8     	ldr	x8, [x21]
		0000000000028950:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   28954: 90000009     	adrp	x9, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028954:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   28958: 91294262     	add	x2, x19, #0xa50
   2895c: 52800400     	mov	w0, #0x20               // =32
   28960: 52809c43     	mov	w3, #0x4e2              // =1250
   28964: f905f51f     	str	xzr, [x8, #0xbe8]
   28968: 392fc11f     	strb	wzr, [x8, #0xbf0]
   2896c: f940012a     	ldr	x10, [x9]
		000000000002896c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   28970: f905fd0a     	str	x10, [x8, #0xbf8]
   28974: f940012a     	ldr	x10, [x9]
		0000000000028974:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   28978: f905a90a     	str	x10, [x8, #0xb50]
   2897c: f940012a     	ldr	x10, [x9]
		000000000002897c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   28980: f905ad0a     	str	x10, [x8, #0xb58]
   28984: f940012a     	ldr	x10, [x9]
		0000000000028984:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   28988: f905b10a     	str	x10, [x8, #0xb60]
   2898c: f940012a     	ldr	x10, [x9]
		000000000002898c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   28990: f905b50a     	str	x10, [x8, #0xb68]
   28994: f940012a     	ldr	x10, [x9]
		0000000000028994:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   28998: f905b90a     	str	x10, [x8, #0xb70]
   2899c: f940012a     	ldr	x10, [x9]
		000000000002899c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289a0: f905bd0a     	str	x10, [x8, #0xb78]
   289a4: f940012a     	ldr	x10, [x9]
		00000000000289a4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289a8: f905c10a     	str	x10, [x8, #0xb80]
   289ac: f940012a     	ldr	x10, [x9]
		00000000000289ac:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289b0: f905c50a     	str	x10, [x8, #0xb88]
   289b4: f940012a     	ldr	x10, [x9]
		00000000000289b4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289b8: f905c90a     	str	x10, [x8, #0xb90]
   289bc: f940012a     	ldr	x10, [x9]
		00000000000289bc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289c0: f905cd0a     	str	x10, [x8, #0xb98]
   289c4: f940012a     	ldr	x10, [x9]
		00000000000289c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289c8: f905d10a     	str	x10, [x8, #0xba0]
   289cc: f940012a     	ldr	x10, [x9]
		00000000000289cc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289d0: f905d50a     	str	x10, [x8, #0xba8]
   289d4: f940012a     	ldr	x10, [x9]
		00000000000289d4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289d8: f905d90a     	str	x10, [x8, #0xbb0]
   289dc: f940012a     	ldr	x10, [x9]
		00000000000289dc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289e0: f905dd0a     	str	x10, [x8, #0xbb8]
   289e4: f940012a     	ldr	x10, [x9]
		00000000000289e4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289e8: f905e10a     	str	x10, [x8, #0xbc0]
   289ec: f940012a     	ldr	x10, [x9]
		00000000000289ec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289f0: f905e50a     	str	x10, [x8, #0xbc8]
   289f4: f940012a     	ldr	x10, [x9]
		00000000000289f4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   289f8: f905e90a     	str	x10, [x8, #0xbd0]
   289fc: f940012a     	ldr	x10, [x9]
		00000000000289fc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   28a00: f905ed0a     	str	x10, [x8, #0xbd8]
   28a04: f9400129     	ldr	x9, [x9]
		0000000000028a04:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   28a08: f905f109     	str	x9, [x8, #0xbe0]
   28a0c: f9425e61     	ldr	x1, [x19, #0x4b8]
   28a10: 94000000     	bl	0x28a10 <zte_touch_probe+0xbb4>
		0000000000028a10:  R_AARCH64_CALL26	queue_delayed_work_on
   28a14: 52801fe8     	mov	w8, #0xff               // =255
   28a18: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8a
   28a1c: 91000021     	add	x1, x1, #0x0
		0000000000028a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8a
   28a20: 90000002     	adrp	x2, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028a20:  R_AARCH64_ADR_PREL_PG_HI21	init_completion.__key
   28a24: 91000042     	add	x2, x2, #0x0
		0000000000028a24:  R_AARCH64_ADD_ABS_LO12_NC	init_completion.__key
   28a28: 9137a260     	add	x0, x19, #0xde8
   28a2c: 3900767f     	strb	wzr, [x19, #0x1d]
   28a30: 39300268     	strb	w8, [x19, #0xc00]
   28a34: b904aa7f     	str	wzr, [x19, #0x4a8]
   28a38: b90de27f     	str	wzr, [x19, #0xde0]
   28a3c: 94000000     	bl	0x28a3c <zte_touch_probe+0xbe0>
		0000000000028a3c:  R_AARCH64_CALL26	__init_swait_queue_head
   28a40: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7566
   28a44: 91000000     	add	x0, x0, #0x0
		0000000000028a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7566
   28a48: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1df2
   28a4c: 91000021     	add	x1, x1, #0x0
		0000000000028a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1df2
   28a50: 52816a22     	mov	w2, #0xb51              // =2897
   28a54: 3938067f     	strb	wzr, [x19, #0xe01]
   28a58: 94000000     	bl	0x28a58 <zte_touch_probe+0xbfc>
		0000000000028a58:  R_AARCH64_CALL26	_printk
   28a5c: 2a1f03e0     	mov	w0, wzr
   28a60: 17ffff5e     	b	0x287d8 <zte_touch_probe+0x97c>
   28a64: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51f4
   28a68: 91000000     	add	x0, x0, #0x0
		0000000000028a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51f4
   28a6c: 94000000     	bl	0x28a6c <zte_touch_probe+0xc10>
		0000000000028a6c:  R_AARCH64_CALL26	_printk
   28a70: 17fffe47     	b	0x2838c <zte_touch_probe+0x530>
   28a74: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37e4
   28a78: 91000000     	add	x0, x0, #0x0
		0000000000028a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37e4
   28a7c: 94000000     	bl	0x28a7c <zte_touch_probe+0xc20>
		0000000000028a7c:  R_AARCH64_CALL26	_printk
   28a80: 17fffe4b     	b	0x283ac <zte_touch_probe+0x550>
   28a84: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f0a
   28a88: 91000000     	add	x0, x0, #0x0
		0000000000028a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f0a
   28a8c: 94000000     	bl	0x28a8c <zte_touch_probe+0xc30>
		0000000000028a8c:  R_AARCH64_CALL26	_printk
   28a90: 17fffe4f     	b	0x283cc <zte_touch_probe+0x570>
   28a94: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb578
   28a98: 91000000     	add	x0, x0, #0x0
		0000000000028a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb578
   28a9c: 94000000     	bl	0x28a9c <zte_touch_probe+0xc40>
		0000000000028a9c:  R_AARCH64_CALL26	_printk
   28aa0: 17fffe53     	b	0x283ec <zte_touch_probe+0x590>
   28aa4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6e
   28aa8: 91000000     	add	x0, x0, #0x0
		0000000000028aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6e
   28aac: 94000000     	bl	0x28aac <zte_touch_probe+0xc50>
		0000000000028aac:  R_AARCH64_CALL26	_printk
   28ab0: 17fffe57     	b	0x2840c <zte_touch_probe+0x5b0>
   28ab4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8152
   28ab8: 91000000     	add	x0, x0, #0x0
		0000000000028ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8152
   28abc: 94000000     	bl	0x28abc <zte_touch_probe+0xc60>
		0000000000028abc:  R_AARCH64_CALL26	_printk
   28ac0: 17fffe5b     	b	0x2842c <zte_touch_probe+0x5d0>
   28ac4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8172
   28ac8: 91000000     	add	x0, x0, #0x0
		0000000000028ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8172
   28acc: 94000000     	bl	0x28acc <zte_touch_probe+0xc70>
		0000000000028acc:  R_AARCH64_CALL26	_printk
   28ad0: 17fffe5f     	b	0x2844c <zte_touch_probe+0x5f0>
   28ad4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68
   28ad8: 91000000     	add	x0, x0, #0x0
		0000000000028ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68
   28adc: 94000000     	bl	0x28adc <zte_touch_probe+0xc80>
		0000000000028adc:  R_AARCH64_CALL26	_printk
   28ae0: 17fffe63     	b	0x2846c <zte_touch_probe+0x610>
   28ae4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa768
   28ae8: 91000000     	add	x0, x0, #0x0
		0000000000028ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa768
   28aec: 94000000     	bl	0x28aec <zte_touch_probe+0xc90>
		0000000000028aec:  R_AARCH64_CALL26	_printk
   28af0: 17fffe67     	b	0x2848c <zte_touch_probe+0x630>
   28af4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ff2
   28af8: 91000000     	add	x0, x0, #0x0
		0000000000028af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ff2
   28afc: 94000000     	bl	0x28afc <zte_touch_probe+0xca0>
		0000000000028afc:  R_AARCH64_CALL26	_printk
   28b00: 17fffe6b     	b	0x284ac <zte_touch_probe+0x650>
   28b04: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56b6
   28b08: 91000000     	add	x0, x0, #0x0
		0000000000028b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56b6
   28b0c: 94000000     	bl	0x28b0c <zte_touch_probe+0xcb0>
		0000000000028b0c:  R_AARCH64_CALL26	_printk
   28b10: 17fffe6f     	b	0x284cc <zte_touch_probe+0x670>
   28b14: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7594
   28b18: 91000000     	add	x0, x0, #0x0
		0000000000028b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7594
   28b1c: 94000000     	bl	0x28b1c <zte_touch_probe+0xcc0>
		0000000000028b1c:  R_AARCH64_CALL26	_printk
   28b20: 17fffe73     	b	0x284ec <zte_touch_probe+0x690>
   28b24: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6278
   28b28: 91000000     	add	x0, x0, #0x0
		0000000000028b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6278
   28b2c: 94000000     	bl	0x28b2c <zte_touch_probe+0xcd0>
		0000000000028b2c:  R_AARCH64_CALL26	_printk
   28b30: 17fffe77     	b	0x2850c <zte_touch_probe+0x6b0>
   28b34: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86da
   28b38: 91000000     	add	x0, x0, #0x0
		0000000000028b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86da
   28b3c: 94000000     	bl	0x28b3c <zte_touch_probe+0xce0>
		0000000000028b3c:  R_AARCH64_CALL26	_printk
   28b40: 17fffe7b     	b	0x2852c <zte_touch_probe+0x6d0>
   28b44: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b16
   28b48: 91000000     	add	x0, x0, #0x0
		0000000000028b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b16
   28b4c: 94000000     	bl	0x28b4c <zte_touch_probe+0xcf0>
		0000000000028b4c:  R_AARCH64_CALL26	_printk
   28b50: 17fffe7f     	b	0x2854c <zte_touch_probe+0x6f0>
   28b54: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ede
   28b58: 91000000     	add	x0, x0, #0x0
		0000000000028b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ede
   28b5c: 94000000     	bl	0x28b5c <zte_touch_probe+0xd00>
		0000000000028b5c:  R_AARCH64_CALL26	_printk
   28b60: 17fffe83     	b	0x2856c <zte_touch_probe+0x710>
   28b64: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4aee
   28b68: 91000000     	add	x0, x0, #0x0
		0000000000028b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4aee
   28b6c: 94000000     	bl	0x28b6c <zte_touch_probe+0xd10>
		0000000000028b6c:  R_AARCH64_CALL26	_printk
   28b70: 17fffe87     	b	0x2858c <zte_touch_probe+0x730>
   28b74: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbc6
   28b78: 91000000     	add	x0, x0, #0x0
		0000000000028b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbc6
   28b7c: 94000000     	bl	0x28b7c <zte_touch_probe+0xd20>
		0000000000028b7c:  R_AARCH64_CALL26	_printk
   28b80: 17fffe8b     	b	0x285ac <zte_touch_probe+0x750>
   28b84: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bb0
   28b88: 91000000     	add	x0, x0, #0x0
		0000000000028b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bb0
   28b8c: 94000000     	bl	0x28b8c <zte_touch_probe+0xd30>
		0000000000028b8c:  R_AARCH64_CALL26	_printk
   28b90: 17fffe8f     	b	0x285cc <zte_touch_probe+0x770>
   28b94: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4510
   28b98: 91000000     	add	x0, x0, #0x0
		0000000000028b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4510
   28b9c: 94000000     	bl	0x28b9c <zte_touch_probe+0xd40>
		0000000000028b9c:  R_AARCH64_CALL26	_printk
   28ba0: 17fffe93     	b	0x285ec <zte_touch_probe+0x790>
   28ba4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb59a
   28ba8: 91000000     	add	x0, x0, #0x0
		0000000000028ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb59a
   28bac: 94000000     	bl	0x28bac <zte_touch_probe+0xd50>
		0000000000028bac:  R_AARCH64_CALL26	_printk
   28bb0: 17fffe97     	b	0x2860c <zte_touch_probe+0x7b0>
   28bb4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc158
   28bb8: 91000000     	add	x0, x0, #0x0
		0000000000028bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc158
   28bbc: 94000000     	bl	0x28bbc <zte_touch_probe+0xd60>
		0000000000028bbc:  R_AARCH64_CALL26	_printk
   28bc0: 17fffe9b     	b	0x2862c <zte_touch_probe+0x7d0>
   28bc4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69e2
   28bc8: 91000000     	add	x0, x0, #0x0
		0000000000028bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69e2
   28bcc: 94000000     	bl	0x28bcc <zte_touch_probe+0xd70>
		0000000000028bcc:  R_AARCH64_CALL26	_printk
   28bd0: 17fffe9f     	b	0x2864c <zte_touch_probe+0x7f0>
   28bd4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a0a
   28bd8: 91000000     	add	x0, x0, #0x0
		0000000000028bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a0a
   28bdc: 94000000     	bl	0x28bdc <zte_touch_probe+0xd80>
		0000000000028bdc:  R_AARCH64_CALL26	_printk
   28be0: 17fffea3     	b	0x2866c <zte_touch_probe+0x810>
   28be4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3808
   28be8: 91000000     	add	x0, x0, #0x0
		0000000000028be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3808
   28bec: 94000000     	bl	0x28bec <zte_touch_probe+0xd90>
		0000000000028bec:  R_AARCH64_CALL26	_printk
   28bf0: 17fffea7     	b	0x2868c <zte_touch_probe+0x830>
   28bf4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2582
   28bf8: 91000000     	add	x0, x0, #0x0
		0000000000028bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2582
   28bfc: 94000000     	bl	0x28bfc <zte_touch_probe+0xda0>
		0000000000028bfc:  R_AARCH64_CALL26	_printk
   28c00: 17fffeab     	b	0x286ac <zte_touch_probe+0x850>
   28c04: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bd8
   28c08: 91000000     	add	x0, x0, #0x0
		0000000000028c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bd8
   28c0c: 94000000     	bl	0x28c0c <zte_touch_probe+0xdb0>
		0000000000028c0c:  R_AARCH64_CALL26	_printk
   28c10: 17fffeaf     	b	0x286cc <zte_touch_probe+0x870>
   28c14: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75b8
   28c18: 91000000     	add	x0, x0, #0x0
		0000000000028c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75b8
   28c1c: 94000000     	bl	0x28c1c <zte_touch_probe+0xdc0>
		0000000000028c1c:  R_AARCH64_CALL26	_printk
   28c20: 17fffeb3     	b	0x286ec <zte_touch_probe+0x890>
   28c24: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x382a
   28c28: 91000000     	add	x0, x0, #0x0
		0000000000028c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x382a
   28c2c: 94000000     	bl	0x28c2c <zte_touch_probe+0xdd0>
		0000000000028c2c:  R_AARCH64_CALL26	_printk
   28c30: 17fffeb7     	b	0x2870c <zte_touch_probe+0x8b0>
   28c34: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9120
   28c38: 91000000     	add	x0, x0, #0x0
		0000000000028c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9120
   28c3c: 94000000     	bl	0x28c3c <zte_touch_probe+0xde0>
		0000000000028c3c:  R_AARCH64_CALL26	_printk
   28c40: 17fffebb     	b	0x2872c <zte_touch_probe+0x8d0>
   28c44: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5bde
   28c48: 91000000     	add	x0, x0, #0x0
		0000000000028c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5bde
   28c4c: 94000000     	bl	0x28c4c <zte_touch_probe+0xdf0>
		0000000000028c4c:  R_AARCH64_CALL26	_printk
   28c50: 17fffebf     	b	0x2874c <zte_touch_probe+0x8f0>
   28c54: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x521a
   28c58: 91000000     	add	x0, x0, #0x0
		0000000000028c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x521a
   28c5c: 94000000     	bl	0x28c5c <zte_touch_probe+0xe00>
		0000000000028c5c:  R_AARCH64_CALL26	_printk
   28c60: 17fffec3     	b	0x2876c <zte_touch_probe+0x910>
   28c64: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25a4
   28c68: 91000000     	add	x0, x0, #0x0
		0000000000028c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25a4
   28c6c: 94000000     	bl	0x28c6c <zte_touch_probe+0xe10>
		0000000000028c6c:  R_AARCH64_CALL26	_printk
   28c70: 17fffec7     	b	0x2878c <zte_touch_probe+0x930>
   28c74: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f26
   28c78: 91000000     	add	x0, x0, #0x0
		0000000000028c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f26
   28c7c: 94000000     	bl	0x28c7c <zte_touch_probe+0xe20>
		0000000000028c7c:  R_AARCH64_CALL26	_printk
   28c80: 17fffed0     	b	0x287c0 <zte_touch_probe+0x964>
   28c84: 2a0003e1     	mov	w1, w0
   28c88: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f9e
   28c8c: 91000000     	add	x0, x0, #0x0
		0000000000028c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f9e
   28c90: 94000000     	bl	0x28c90 <zte_touch_probe+0xe34>
		0000000000028c90:  R_AARCH64_CALL26	_printk
   28c94: f9462a80     	ldr	x0, [x20, #0xc50]
   28c98: 94000000     	bl	0x28c98 <zte_touch_probe+0xe3c>
		0000000000028c98:  R_AARCH64_CALL26	kobject_put
   28c9c: 17fffec9     	b	0x287c0 <zte_touch_probe+0x964>
   28ca0: b94007e8     	ldr	w8, [sp, #0x4]
   28ca4: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6240
   28ca8: 91000000     	add	x0, x0, #0x0
		0000000000028ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6240
   28cac: 12003d01     	and	w1, w8, #0xffff
   28cb0: 79003e68     	strh	w8, [x19, #0x1e]
   28cb4: 94000000     	bl	0x28cb4 <zte_touch_probe+0xe58>
		0000000000028cb4:  R_AARCH64_CALL26	_printk
   28cb8: 17ffff00     	b	0x288b8 <zte_touch_probe+0xa5c>
   28cbc: b94007e8     	ldr	w8, [sp, #0x4]
   28cc0: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x1a4>
		0000000000028cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180c
   28cc4: 91000000     	add	x0, x0, #0x0
		0000000000028cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180c
   28cc8: 12003d01     	and	w1, w8, #0xffff
   28ccc: 79004268     	strh	w8, [x19, #0x20]
   28cd0: 94000000     	bl	0x28cd0 <zte_touch_probe+0xe74>
		0000000000028cd0:  R_AARCH64_CALL26	_printk
   28cd4: 17ffff01     	b	0x288d8 <zte_touch_probe+0xa7c>
   28cd8: 94000000     	bl	0x28cd8 <zte_touch_probe+0xe7c>
		0000000000028cd8:  R_AARCH64_CALL26	__stack_chk_fail
