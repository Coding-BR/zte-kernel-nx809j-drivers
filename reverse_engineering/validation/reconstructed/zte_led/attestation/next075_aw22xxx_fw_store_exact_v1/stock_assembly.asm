
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000022c0 <aw22xxx_fw_store>:
    22c0: d503233f     	paciasp
    22c4: d100c3ff     	sub	sp, sp, #0x30
    22c8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    22cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    22d0: 910043fd     	add	x29, sp, #0x10
    22d4: d5384109     	mrs	x9, SP_EL0
    22d8: aa0203e8     	mov	x8, x2
    22dc: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000022dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542
    22e0: 91000021     	add	x1, x1, #0x0
		00000000000022e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542
    22e4: f9438929     	ldr	x9, [x9, #0x710]
    22e8: 910013e2     	add	x2, sp, #0x4
    22ec: aa0303f3     	mov	x19, x3
    22f0: f90007e9     	str	x9, [sp, #0x8]
    22f4: f9404c14     	ldr	x20, [x0, #0x98]
    22f8: aa0803e0     	mov	x0, x8
    22fc: b90007ff     	str	wzr, [sp, #0x4]
    2300: 94000000     	bl	0x2300 <aw22xxx_fw_store+0x40>
		0000000000002300:  R_AARCH64_CALL26	sscanf
    2304: 7100041f     	cmp	w0, #0x1
    2308: 54000141     	b.ne	0x2330 <aw22xxx_fw_store+0x70>
    230c: b94007e8     	ldr	w8, [sp, #0x4]
    2310: 7100051f     	cmp	w8, #0x1
    2314: 390b7a88     	strb	w8, [x20, #0x2de]
    2318: 540000c1     	b.ne	0x2330 <aw22xxx_fw_store+0x70>
    231c: 90000008     	adrp	x8, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000231c:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    2320: 91080282     	add	x2, x20, #0x200
    2324: 52800400     	mov	w0, #0x20               // =32
    2328: f9400101     	ldr	x1, [x8]
		0000000000002328:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    232c: 94000000     	bl	0x232c <aw22xxx_fw_store+0x6c>
		000000000000232c:  R_AARCH64_CALL26	queue_work_on
    2330: 90000008     	adrp	x8, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002330:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6218
    2334: 3900011f     	strb	wzr, [x8]
		0000000000002334:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    2338: d5384108     	mrs	x8, SP_EL0
    233c: f9438908     	ldr	x8, [x8, #0x710]
    2340: f94007e9     	ldr	x9, [sp, #0x8]
    2344: eb09011f     	cmp	x8, x9
    2348: 540000e1     	b.ne	0x2364 <aw22xxx_fw_store+0xa4>
    234c: aa1303e0     	mov	x0, x19
    2350: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2354: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2358: 9100c3ff     	add	sp, sp, #0x30
    235c: d50323bf     	autiasp
    2360: d65f03c0     	ret
    2364: 94000000     	bl	0x2364 <aw22xxx_fw_store+0xa4>
		0000000000002364:  R_AARCH64_CALL26	__stack_chk_fail
