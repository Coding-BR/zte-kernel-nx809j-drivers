
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000051bc <aw22xxx_cfg_work_routine>:
    51bc: d503233f     	paciasp
    51c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    51c4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    51c8: 910003fd     	mov	x29, sp
    51cc: 90000014     	adrp	x20, 0x5000 <aw22xxx_multi_breath_pattern_store+0xc0>
		00000000000051cc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    51d0: 91000294     	add	x20, x20, #0x0
		00000000000051d0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    51d4: aa0003f3     	mov	x19, x0
    51d8: 90000001     	adrp	x1, 0x5000 <aw22xxx_multi_breath_pattern_store+0xc0>
		00000000000051d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x482
    51dc: 91000021     	add	x1, x1, #0x0
		00000000000051dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x482
    51e0: aa1403e0     	mov	x0, x20
    51e4: 94000000     	bl	0x51e4 <aw22xxx_cfg_work_routine+0x28>
		00000000000051e4:  R_AARCH64_CALL26	_printk
    51e8: 90000001     	adrp	x1, 0x5000 <aw22xxx_multi_breath_pattern_store+0xc0>
		00000000000051e8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x10b0
    51ec: 91000021     	add	x1, x1, #0x0
		00000000000051ec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x10b0
    51f0: aa1403e0     	mov	x0, x20
    51f4: 94000000     	bl	0x51f4 <aw22xxx_cfg_work_routine+0x38>
		00000000000051f4:  R_AARCH64_CALL26	_printk
    51f8: 3942fe68     	ldrb	w8, [x19, #0xbf]
    51fc: 7100091f     	cmp	w8, #0x2
    5200: 54000441     	b.ne	0x5288 <aw22xxx_cfg_work_routine+0xcc>
    5204: b940d268     	ldr	w8, [x19, #0xd0]
    5208: d108c274     	sub	x20, x19, #0x230
    520c: 7100091f     	cmp	w8, #0x2
    5210: 90000008     	adrp	x8, 0x5000 <aw22xxx_multi_breath_pattern_store+0xc0>
		0000000000005210:  R_AARCH64_ADR_PREL_PG_HI21	g_init_flg
    5214: 540000a1     	b.ne	0x5228 <aw22xxx_cfg_work_routine+0x6c>
    5218: 3904627f     	strb	wzr, [x19, #0x118]
    521c: 39400109     	ldrb	w9, [x8]
		000000000000521c:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    5220: 360000c9     	tbz	w9, #0x0, 0x5238 <aw22xxx_cfg_work_routine+0x7c>
    5224: 14000009     	b	0x5248 <aw22xxx_cfg_work_routine+0x8c>
    5228: 52800029     	mov	w9, #0x1                // =1
    522c: 39046269     	strb	w9, [x19, #0x118]
    5230: 39400109     	ldrb	w9, [x8]
		0000000000005230:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    5234: 370000a9     	tbnz	w9, #0x0, 0x5248 <aw22xxx_cfg_work_routine+0x8c>
    5238: 52800029     	mov	w9, #0x1                // =1
    523c: aa1403e0     	mov	x0, x20
    5240: 39000109     	strb	w9, [x8]
		0000000000005240:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    5244: 94000000     	bl	0x5244 <aw22xxx_cfg_work_routine+0x88>
		0000000000005244:  R_AARCH64_CALL26	aw22xxx_init_cfg_update_array
    5248: d108a268     	sub	x8, x19, #0x228
    524c: 90000000     	adrp	x0, 0x5000 <aw22xxx_multi_breath_pattern_store+0xc0>
		000000000000524c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    5250: 91000000     	add	x0, x0, #0x0
		0000000000005250:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    5254: f9400103     	ldr	x3, [x8]
    5258: 90000002     	adrp	x2, 0x5000 <aw22xxx_multi_breath_pattern_store+0xc0>
		0000000000005258:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_dyn_name
    525c: 91000042     	add	x2, x2, #0x0
		000000000000525c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_dyn_name
    5260: 90000006     	adrp	x6, 0x5000 <aw22xxx_multi_breath_pattern_store+0xc0>
		0000000000005260:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_cfg_loaded
    5264: 910000c6     	add	x6, x6, #0x0
		0000000000005264:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_cfg_loaded
    5268: 52800021     	mov	w1, #0x1                // =1
    526c: 52819804     	mov	w4, #0xcc0              // =3264
    5270: aa1403e5     	mov	x5, x20
    5274: 94000000     	bl	0x5274 <aw22xxx_cfg_work_routine+0xb8>
		0000000000005274:  R_AARCH64_CALL26	request_firmware_nowait
    5278: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    527c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    5280: d50323bf     	autiasp
    5284: d65f03c0     	ret
    5288: 90000000     	adrp	x0, 0x5000 <aw22xxx_multi_breath_pattern_store+0xc0>
		0000000000005288:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6c2
    528c: 91000000     	add	x0, x0, #0x0
		000000000000528c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6c2
    5290: 90000001     	adrp	x1, 0x5000 <aw22xxx_multi_breath_pattern_store+0xc0>
		0000000000005290:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x10b0
    5294: 91000021     	add	x1, x1, #0x0
		0000000000005294:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x10b0
    5298: 94000000     	bl	0x5298 <aw22xxx_cfg_work_routine+0xdc>
		0000000000005298:  R_AARCH64_CALL26	_printk
    529c: 17fffff7     	b	0x5278 <aw22xxx_cfg_work_routine+0xbc>
