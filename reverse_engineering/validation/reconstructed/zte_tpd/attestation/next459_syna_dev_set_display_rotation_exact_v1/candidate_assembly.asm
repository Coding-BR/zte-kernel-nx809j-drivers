
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025460 <syna_dev_set_display_rotation>:
   25460: d503233f     	paciasp
   25464: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   25468: f9000bf7     	str	x23, [sp, #0x10]
   2546c: a90257f6     	stp	x22, x21, [sp, #0x20]
   25470: a9034ff4     	stp	x20, x19, [sp, #0x30]
   25474: 910003fd     	mov	x29, sp
   25478: 2a0103f3     	mov	w19, w1
   2547c: 2a0203f4     	mov	w20, w2
   25480: aa0003f5     	mov	x21, x0
   25484: b9460c16     	ldr	w22, [x0, #0x60c]
   25488: 90000000     	adrp	x0, 0x25000 <tp_sensibility_level_read+0xb8>
		0000000000025488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12086
   2548c: 91000000     	add	x0, x0, #0x0
		000000000002548c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12086
   25490: 90000001     	adrp	x1, 0x25000 <tp_sensibility_level_read+0xb8>
		0000000000025490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1200c
   25494: 91000021     	add	x1, x1, #0x0
		0000000000025494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1200c
   25498: 2a1303e2     	mov	w2, w19
   2549c: 94000000     	bl	0x2549c <syna_dev_set_display_rotation+0x3c>
		000000000002549c:  R_AARCH64_CALL26	_printk
   254a0: b4000555     	cbz	x21, 0x25548 <syna_dev_set_display_rotation+0xe8>
   254a4: 710002df     	cmp	w22, #0x0
   254a8: 52800068     	mov	w8, #0x3                // =3
   254ac: f94002a0     	ldr	x0, [x21]
   254b0: 1a8803f7     	csel	w23, wzr, w8, eq
   254b4: 528016c1     	mov	w1, #0xb6               // =182
   254b8: 2a1403e3     	mov	w3, w20
   254bc: 2a1703e2     	mov	w2, w23
   254c0: 94000000     	bl	0x254c0 <syna_dev_set_display_rotation+0x60>
		00000000000254c0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   254c4: 37f80440     	tbnz	w0, #0x1f, 0x2554c <syna_dev_set_display_rotation+0xec>
   254c8: 90000000     	adrp	x0, 0x25000 <tp_sensibility_level_read+0xb8>
		00000000000254c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120e4
   254cc: 91000000     	add	x0, x0, #0x0
		00000000000254cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120e4
   254d0: 90000001     	adrp	x1, 0x25000 <tp_sensibility_level_read+0xb8>
		00000000000254d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1200c
   254d4: 91000021     	add	x1, x1, #0x0
		00000000000254d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1200c
   254d8: 2a1703e2     	mov	w2, w23
   254dc: 94000000     	bl	0x254dc <syna_dev_set_display_rotation+0x7c>
		00000000000254dc:  R_AARCH64_CALL26	_printk
   254e0: f94002a0     	ldr	x0, [x21]
   254e4: 528016a1     	mov	w1, #0xb5               // =181
   254e8: 2a1603e2     	mov	w2, w22
   254ec: 2a1403e3     	mov	w3, w20
   254f0: 94000000     	bl	0x254f0 <syna_dev_set_display_rotation+0x90>
		00000000000254f0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   254f4: 37f802c0     	tbnz	w0, #0x1f, 0x2554c <syna_dev_set_display_rotation+0xec>
   254f8: 90000000     	adrp	x0, 0x25000 <tp_sensibility_level_read+0xb8>
		00000000000254f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121de
   254fc: 91000000     	add	x0, x0, #0x0
		00000000000254fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121de
   25500: 90000001     	adrp	x1, 0x25000 <tp_sensibility_level_read+0xb8>
		0000000000025500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1200c
   25504: 91000021     	add	x1, x1, #0x0
		0000000000025504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1200c
   25508: 2a1603e2     	mov	w2, w22
   2550c: 94000000     	bl	0x2550c <syna_dev_set_display_rotation+0xac>
		000000000002550c:  R_AARCH64_CALL26	_printk
   25510: f94002a0     	ldr	x0, [x21]
   25514: 52801681     	mov	w1, #0xb4               // =180
   25518: 2a1303e2     	mov	w2, w19
   2551c: 2a1403e3     	mov	w3, w20
   25520: 94000000     	bl	0x25520 <syna_dev_set_display_rotation+0xc0>
		0000000000025520:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   25524: 37f80140     	tbnz	w0, #0x1f, 0x2554c <syna_dev_set_display_rotation+0xec>
   25528: 90000000     	adrp	x0, 0x25000 <tp_sensibility_level_read+0xb8>
		0000000000025528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fe2
   2552c: 91000000     	add	x0, x0, #0x0
		000000000002552c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fe2
   25530: 90000001     	adrp	x1, 0x25000 <tp_sensibility_level_read+0xb8>
		0000000000025530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1200c
   25534: 91000021     	add	x1, x1, #0x0
		0000000000025534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1200c
   25538: 2a1303e2     	mov	w2, w19
   2553c: 94000000     	bl	0x2553c <syna_dev_set_display_rotation+0xdc>
		000000000002553c:  R_AARCH64_CALL26	_printk
   25540: 2a1f03e0     	mov	w0, wzr
   25544: 14000002     	b	0x2554c <syna_dev_set_display_rotation+0xec>
   25548: 128002a0     	mov	w0, #-0x16              // =-22
   2554c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   25550: f9400bf7     	ldr	x23, [sp, #0x10]
   25554: a94257f6     	ldp	x22, x21, [sp, #0x20]
   25558: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   2555c: d50323bf     	autiasp
   25560: d65f03c0     	ret
