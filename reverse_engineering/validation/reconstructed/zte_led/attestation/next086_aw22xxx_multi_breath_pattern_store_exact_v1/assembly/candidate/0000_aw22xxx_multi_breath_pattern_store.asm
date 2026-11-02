
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004858 <aw22xxx_multi_breath_pattern_store>:
    4858: d503233f     	paciasp
    485c: d10103ff     	sub	sp, sp, #0x40
    4860: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4864: f90013f5     	str	x21, [sp, #0x20]
    4868: a9034ff4     	stp	x20, x19, [sp, #0x30]
    486c: 910043fd     	add	x29, sp, #0x10
    4870: d5384109     	mrs	x9, SP_EL0
    4874: aa0203e8     	mov	x8, x2
    4878: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004878:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x542
    487c: 91000021     	add	x1, x1, #0x0
		000000000000487c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x542
    4880: f9438929     	ldr	x9, [x9, #0x710]
    4884: 910013e2     	add	x2, sp, #0x4
    4888: aa0303f3     	mov	x19, x3
    488c: f90007e9     	str	x9, [sp, #0x8]
    4890: f9404c15     	ldr	x21, [x0, #0x98]
    4894: aa0803e0     	mov	x0, x8
    4898: b90007ff     	str	wzr, [sp, #0x4]
    489c: 94000000     	bl	0x489c <aw22xxx_multi_breath_pattern_store+0x44>
		000000000000489c:  R_AARCH64_CALL26	sscanf
    48a0: 7100041f     	cmp	w0, #0x1
    48a4: 54000741     	b.ne	0x498c <aw22xxx_multi_breath_pattern_store+0x134>
    48a8: b94007e8     	ldr	w8, [sp, #0x4]
    48ac: d10042b4     	sub	x20, x21, #0x10
    48b0: b902faa8     	str	w8, [x21, #0x2f8]
    48b4: 340003a8     	cbz	w8, 0x4928 <aw22xxx_multi_breath_pattern_store+0xd0>
    48b8: 7100051f     	cmp	w8, #0x1
    48bc: 54000681     	b.ne	0x498c <aw22xxx_multi_breath_pattern_store+0x134>
    48c0: 90000015     	adrp	x21, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000048c0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b8
    48c4: 90000009     	adrp	x9, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000048c4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b0
    48c8: 394002a8     	ldrb	w8, [x21]
		00000000000048c8:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    48cc: b900013f     	str	wzr, [x9]
		00000000000048cc:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b0
    48d0: 370005e8     	tbnz	w8, #0x0, 0x498c <aw22xxx_multi_breath_pattern_store+0x134>
    48d4: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000048d4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b4
    48d8: b9400108     	ldr	w8, [x8]
		00000000000048d8:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
    48dc: 34000588     	cbz	w8, 0x498c <aw22xxx_multi_breath_pattern_store+0x134>
    48e0: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000048e0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_play
    48e4: 91000000     	add	x0, x0, #0x0
		00000000000048e4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_play
    48e8: 90000003     	adrp	x3, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000048e8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb42
    48ec: 91000063     	add	x3, x3, #0x0
		00000000000048ec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb42
    48f0: 90000004     	adrp	x4, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000048f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x896
    48f4: 91000084     	add	x4, x4, #0x0
		00000000000048f4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x896
    48f8: aa1403e1     	mov	x1, x20
    48fc: 12800002     	mov	w2, #-0x1               // =-1
    4900: 94000000     	bl	0x4900 <aw22xxx_multi_breath_pattern_store+0xa8>
		0000000000004900:  R_AARCH64_CALL26	kthread_create_on_node
    4904: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    4908: 540005a9     	b.ls	0x49bc <aw22xxx_multi_breath_pattern_store+0x164>
    490c: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		000000000000490c:  R_AARCH64_ADR_PREL_PG_HI21	cfg_update_kthread
    4910: 390002bf     	strb	wzr, [x21]
		0000000000004910:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    4914: f9000100     	str	x0, [x8]
		0000000000004914:  R_AARCH64_LDST64_ABS_LO12_NC	cfg_update_kthread
    4918: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004918:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf7b
    491c: 91000000     	add	x0, x0, #0x0
		000000000000491c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf7b
    4920: 94000000     	bl	0x4920 <aw22xxx_multi_breath_pattern_store+0xc8>
		0000000000004920:  R_AARCH64_CALL26	_printk
    4924: 1400001a     	b	0x498c <aw22xxx_multi_breath_pattern_store+0x134>
    4928: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004928:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b8
    492c: 9000000a     	adrp	x10, 0x4000 <aw22xxx_effect_store+0x80>
		000000000000492c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b0
    4930: 39400109     	ldrb	w9, [x8]
		0000000000004930:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    4934: b900015f     	str	wzr, [x10]
		0000000000004934:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b0
    4938: 9000000a     	adrp	x10, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004938:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b4
    493c: b900015f     	str	wzr, [x10]
		000000000000493c:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
    4940: 7100053f     	cmp	w9, #0x1
    4944: 54000041     	b.ne	0x494c <aw22xxx_multi_breath_pattern_store+0xf4>
    4948: 3900011f     	strb	wzr, [x8]
		0000000000004948:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    494c: aa1403e0     	mov	x0, x20
    4950: 52801fe1     	mov	w1, #0xff               // =255
    4954: 2a1f03e2     	mov	w2, wzr
    4958: 94000000     	bl	0x4958 <aw22xxx_multi_breath_pattern_store+0x100>
		0000000000004958:  R_AARCH64_CALL26	aw22xxx_i2c_write
    495c: aa1403e0     	mov	x0, x20
    4960: 528000a1     	mov	w1, #0x5                // =5
    4964: 2a1f03e2     	mov	w2, wzr
    4968: 94000000     	bl	0x4968 <aw22xxx_multi_breath_pattern_store+0x110>
		0000000000004968:  R_AARCH64_CALL26	aw22xxx_i2c_write
    496c: aa1403e0     	mov	x0, x20
    4970: 52800081     	mov	w1, #0x4                // =4
    4974: 52800022     	mov	w2, #0x1                // =1
    4978: 94000000     	bl	0x4978 <aw22xxx_multi_breath_pattern_store+0x120>
		0000000000004978:  R_AARCH64_CALL26	aw22xxx_i2c_write
    497c: aa1403e0     	mov	x0, x20
    4980: 52800041     	mov	w1, #0x2                // =2
    4984: 2a1f03e2     	mov	w2, wzr
    4988: 94000000     	bl	0x4988 <aw22xxx_multi_breath_pattern_store+0x130>
		0000000000004988:  R_AARCH64_CALL26	aw22xxx_i2c_write
    498c: d5384108     	mrs	x8, SP_EL0
    4990: f9438908     	ldr	x8, [x8, #0x710]
    4994: f94007e9     	ldr	x9, [sp, #0x8]
    4998: eb09011f     	cmp	x8, x9
    499c: 54000241     	b.ne	0x49e4 <aw22xxx_multi_breath_pattern_store+0x18c>
    49a0: aa1303e0     	mov	x0, x19
    49a4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    49a8: f94013f5     	ldr	x21, [sp, #0x20]
    49ac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    49b0: 910103ff     	add	sp, sp, #0x40
    49b4: d50323bf     	autiasp
    49b8: d65f03c0     	ret
    49bc: aa0003f4     	mov	x20, x0
    49c0: 94000000     	bl	0x49c0 <aw22xxx_multi_breath_pattern_store+0x168>
		00000000000049c0:  R_AARCH64_CALL26	wake_up_process
    49c4: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000049c4:  R_AARCH64_ADR_PREL_PG_HI21	cfg_update_kthread
    49c8: 52800029     	mov	w9, #0x1                // =1
    49cc: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000049cc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1631
    49d0: 91000000     	add	x0, x0, #0x0
		00000000000049d0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1631
    49d4: f9000114     	str	x20, [x8]
		00000000000049d4:  R_AARCH64_LDST64_ABS_LO12_NC	cfg_update_kthread
    49d8: 390002a9     	strb	w9, [x21]
		00000000000049d8:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    49dc: 94000000     	bl	0x49dc <aw22xxx_multi_breath_pattern_store+0x184>
		00000000000049dc:  R_AARCH64_CALL26	_printk
    49e0: 17ffffeb     	b	0x498c <aw22xxx_multi_breath_pattern_store+0x134>
    49e4: 94000000     	bl	0x49e4 <aw22xxx_multi_breath_pattern_store+0x18c>
		00000000000049e4:  R_AARCH64_CALL26	__stack_chk_fail
