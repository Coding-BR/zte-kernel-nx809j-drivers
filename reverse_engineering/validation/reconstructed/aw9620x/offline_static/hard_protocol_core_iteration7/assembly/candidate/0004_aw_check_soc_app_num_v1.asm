
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000049c <aw_check_soc_app_num_v1>:
     49c: d503233f     	paciasp
     4a0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     4a4: a9015ff8     	stp	x24, x23, [sp, #0x10]
     4a8: a90257f6     	stp	x22, x21, [sp, #0x20]
     4ac: a9034ff4     	stp	x20, x19, [sp, #0x30]
     4b0: 910003fd     	mov	x29, sp
     4b4: 2a0103f3     	mov	w19, w1
     4b8: aa0003f4     	mov	x20, x0
     4bc: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		00000000000004bc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x199c
     4c0: 91000000     	add	x0, x0, #0x0
		00000000000004c0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x199c
     4c4: 90000001     	adrp	x1, 0x0 <aw9620x_text_base>
		00000000000004c4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c42
     4c8: 91000021     	add	x1, x1, #0x0
		00000000000004c8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c42
     4cc: 52801c62     	mov	w2, #0xe3               // =227
     4d0: 94000000     	bl	0x4d0 <aw_check_soc_app_num_v1+0x34>
		00000000000004d0:  R_AARCH64_CALL26	_printk
     4d4: 7101927f     	cmp	w19, #0x64
     4d8: 540007c2     	b.hs	0x5d0 <aw_check_soc_app_num_v1+0x134>
     4dc: 52800a88     	mov	w8, #0x54               // =84
     4e0: 90000017     	adrp	x23, 0x0 <aw9620x_text_base>
		00000000000004e0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c42
     4e4: 910002f7     	add	x23, x23, #0x0
		00000000000004e4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c42
     4e8: 9ba85278     	umaddl	x24, w19, w8, x20
     4ec: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x48f
     4f0: 91000000     	add	x0, x0, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x48f
     4f4: aa1703e1     	mov	x1, x23
     4f8: 52801ce2     	mov	w2, #0xe7               // =231
     4fc: b9405708     	ldr	w8, [x24, #0x54]
     500: 8b080295     	add	x21, x20, x8
     504: 52841d08     	mov	w8, #0x20e8             // =8424
     508: 8b0802b4     	add	x20, x21, x8
     50c: aa1403e3     	mov	x3, x20
     510: 94000000     	bl	0x510 <aw_check_soc_app_num_v1+0x74>
		0000000000000510:  R_AARCH64_CALL26	_printk
     514: b960eaa8     	ldr	w8, [x21, #0x20e8]
     518: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000518:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x531
     51c: 91000000     	add	x0, x0, #0x0
		000000000000051c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x531
     520: aa1703e1     	mov	x1, x23
     524: 52801e42     	mov	w2, #0xf2               // =242
     528: 2a1303e3     	mov	w3, w19
     52c: b9006708     	str	w8, [x24, #0x64]
     530: b9402b08     	ldr	w8, [x24, #0x28]
     534: b960f2b5     	ldr	w21, [x21, #0x20f0]
     538: 51003116     	sub	w22, w8, #0xc
     53c: 2a1503e4     	mov	w4, w21
     540: 2a1603e5     	mov	w5, w22
     544: 94000000     	bl	0x544 <aw_check_soc_app_num_v1+0xa8>
		0000000000000544:  R_AARCH64_CALL26	_printk
     548: 6b1602bf     	cmp	w21, w22
     54c: 54000201     	b.ne	0x58c <aw_check_soc_app_num_v1+0xf0>
     550: b8058315     	stur	w21, [x24, #0x58]
     554: b8428308     	ldur	w8, [x24, #0x28]
     558: b845430a     	ldur	w10, [x24, #0x54]
     55c: b9400689     	ldr	w9, [x20, #0x4]
     560: 2a1f03e0     	mov	w0, wzr
     564: 51003108     	sub	w8, w8, #0xc
     568: b8060309     	stur	w9, [x24, #0x60]
     56c: 11003149     	add	w9, w10, #0xc
     570: 290a2708     	stp	w8, w9, [x24, #0x50]
     574: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     578: a94257f6     	ldp	x22, x21, [sp, #0x20]
     57c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     580: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     584: d50323bf     	autiasp
     588: d65f03c0     	ret
     58c: 90000014     	adrp	x20, 0x0 <aw9620x_text_base>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c42
     590: 91000294     	add	x20, x20, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c42
     594: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000594:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1bb8
     598: 91000000     	add	x0, x0, #0x0
		0000000000000598:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1bb8
     59c: aa1403e1     	mov	x1, x20
     5a0: 52801ea2     	mov	w2, #0xf5               // =245
     5a4: 94000000     	bl	0x5a4 <aw_check_soc_app_num_v1+0x108>
		00000000000005a4:  R_AARCH64_CALL26	_printk
     5a8: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		00000000000005a8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x19bc
     5ac: 91000000     	add	x0, x0, #0x0
		00000000000005ac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x19bc
     5b0: aa1403e1     	mov	x1, x20
     5b4: 52801ec2     	mov	w2, #0xf6               // =246
     5b8: 2a1303e3     	mov	w3, w19
     5bc: 2a1503e4     	mov	w4, w21
     5c0: 2a1603e5     	mov	w5, w22
     5c4: 94000000     	bl	0x5c4 <aw_check_soc_app_num_v1+0x128>
		00000000000005c4:  R_AARCH64_CALL26	_printk
     5c8: 128000c0     	mov	w0, #-0x7               // =-7
     5cc: 17ffffea     	b	0x574 <aw_check_soc_app_num_v1+0xd8>
     5d0: d42aa240     	brk	#0x5512
