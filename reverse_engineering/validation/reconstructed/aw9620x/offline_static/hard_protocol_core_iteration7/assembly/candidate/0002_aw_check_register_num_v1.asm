
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000234 <aw_check_register_num_v1>:
     234: d503233f     	paciasp
     238: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     23c: f9000bf7     	str	x23, [sp, #0x10]
     240: a90257f6     	stp	x22, x21, [sp, #0x20]
     244: a9034ff4     	stp	x20, x19, [sp, #0x30]
     248: 910003fd     	mov	x29, sp
     24c: 2a0103f3     	mov	w19, w1
     250: aa0003f4     	mov	x20, x0
     254: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000254:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x199c
     258: 91000000     	add	x0, x0, #0x0
		0000000000000258:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x199c
     25c: 90000001     	adrp	x1, 0x0 <aw9620x_text_base>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xd16
     260: 91000021     	add	x1, x1, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xd16
     264: 528012c2     	mov	w2, #0x96               // =150
     268: 94000000     	bl	0x268 <aw_check_register_num_v1+0x34>
		0000000000000268:  R_AARCH64_CALL26	_printk
     26c: 7101927f     	cmp	w19, #0x64
     270: 54000742     	b.hs	0x358 <aw_check_register_num_v1+0x124>
     274: 52800a88     	mov	w8, #0x54               // =84
     278: 90000016     	adrp	x22, 0x0 <aw9620x_text_base>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xd16
     27c: 910002d6     	add	x22, x22, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xd16
     280: 9ba85277     	umaddl	x23, w19, w8, x20
     284: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000284:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x48f
     288: 91000000     	add	x0, x0, #0x0
		0000000000000288:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x48f
     28c: aa1603e1     	mov	x1, x22
     290: 52801342     	mov	w2, #0x9a               // =154
     294: b94056e8     	ldr	w8, [x23, #0x54]
     298: 8b080294     	add	x20, x20, x8
     29c: 52841d08     	mov	w8, #0x20e8             // =8424
     2a0: 8b080283     	add	x3, x20, x8
     2a4: 94000000     	bl	0x2a4 <aw_check_register_num_v1+0x70>
		00000000000002a4:  R_AARCH64_CALL26	_printk
     2a8: 2948aae9     	ldp	w9, w10, [x23, #0x44]
     2ac: b9402ae8     	ldr	w8, [x23, #0x28]
     2b0: b960ea94     	ldr	w20, [x20, #0x20e8]
     2b4: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		00000000000002b4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2826
     2b8: 91000000     	add	x0, x0, #0x0
		00000000000002b8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2826
     2bc: aa1603e1     	mov	x1, x22
     2c0: 52801462     	mov	w2, #0xa3               // =163
     2c4: 51001108     	sub	w8, w8, #0x4
     2c8: 0b090149     	add	w9, w10, w9
     2cc: 2a1303e3     	mov	w3, w19
     2d0: 1ac90915     	udiv	w21, w8, w9
     2d4: 2a1403e4     	mov	w4, w20
     2d8: 2a1503e5     	mov	w5, w21
     2dc: 94000000     	bl	0x2dc <aw_check_register_num_v1+0xa8>
		00000000000002dc:  R_AARCH64_CALL26	_printk
     2e0: 6b15029f     	cmp	w20, w21
     2e4: 540001c1     	b.ne	0x31c <aw_check_register_num_v1+0xe8>
     2e8: b84282e8     	ldur	w8, [x23, #0x28]
     2ec: b84542e9     	ldur	w9, [x23, #0x54]
     2f0: 2a1f03e0     	mov	w0, wzr
     2f4: 51001108     	sub	w8, w8, #0x4
     2f8: 11001129     	add	w9, w9, #0x4
     2fc: b80502e8     	stur	w8, [x23, #0x50]
     300: 290ad2e9     	stp	w9, w20, [x23, #0x54]
     304: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     308: f9400bf7     	ldr	x23, [sp, #0x10]
     30c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     310: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     314: d50323bf     	autiasp
     318: d65f03c0     	ret
     31c: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x36d6
     320: 91000000     	add	x0, x0, #0x0
		0000000000000320:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x36d6
     324: aa1603e1     	mov	x1, x22
     328: 528014c2     	mov	w2, #0xa6               // =166
     32c: 94000000     	bl	0x32c <aw_check_register_num_v1+0xf8>
		000000000000032c:  R_AARCH64_CALL26	_printk
     330: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1fce
     334: 91000000     	add	x0, x0, #0x0
		0000000000000334:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1fce
     338: aa1603e1     	mov	x1, x22
     33c: 528014e2     	mov	w2, #0xa7               // =167
     340: 2a1303e3     	mov	w3, w19
     344: 2a1403e4     	mov	w4, w20
     348: 2a1503e5     	mov	w5, w21
     34c: 94000000     	bl	0x34c <aw_check_register_num_v1+0x118>
		000000000000034c:  R_AARCH64_CALL26	_printk
     350: 12800080     	mov	w0, #-0x5               // =-5
     354: 17ffffec     	b	0x304 <aw_check_register_num_v1+0xd0>
     358: d42aa240     	brk	#0x5512
