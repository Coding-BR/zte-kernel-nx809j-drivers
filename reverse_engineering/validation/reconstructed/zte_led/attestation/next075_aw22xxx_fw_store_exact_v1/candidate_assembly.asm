
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000046d4 <aw22xxx_fw_store>:
    46d4: d503233f     	paciasp
    46d8: d100c3ff     	sub	sp, sp, #0x30
    46dc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    46e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    46e4: 910043fd     	add	x29, sp, #0x10
    46e8: d5384109     	mrs	x9, SP_EL0
    46ec: aa0203e8     	mov	x8, x2
    46f0: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_store+0x58>
		00000000000046f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x542
    46f4: 91000021     	add	x1, x1, #0x0
		00000000000046f4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x542
    46f8: f9438929     	ldr	x9, [x9, #0x710]
    46fc: 910013e2     	add	x2, sp, #0x4
    4700: aa0303f3     	mov	x19, x3
    4704: f90007e9     	str	x9, [sp, #0x8]
    4708: f9404c14     	ldr	x20, [x0, #0x98]
    470c: aa0803e0     	mov	x0, x8
    4710: b90007ff     	str	wzr, [sp, #0x4]
    4714: 94000000     	bl	0x4714 <aw22xxx_fw_store+0x40>
		0000000000004714:  R_AARCH64_CALL26	sscanf
    4718: 7100041f     	cmp	w0, #0x1
    471c: 54000141     	b.ne	0x4744 <aw22xxx_fw_store+0x70>
    4720: b94007e8     	ldr	w8, [sp, #0x4]
    4724: 7100051f     	cmp	w8, #0x1
    4728: 390b7a88     	strb	w8, [x20, #0x2de]
    472c: 540000c1     	b.ne	0x4744 <aw22xxx_fw_store+0x70>
    4730: 90000008     	adrp	x8, 0x4000 <aw22xxx_cfg_store+0x58>
		0000000000004730:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    4734: 91080282     	add	x2, x20, #0x200
    4738: 52800400     	mov	w0, #0x20               // =32
    473c: f9400101     	ldr	x1, [x8]
		000000000000473c:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    4740: 94000000     	bl	0x4740 <aw22xxx_fw_store+0x6c>
		0000000000004740:  R_AARCH64_CALL26	queue_work_on
    4744: 90000008     	adrp	x8, 0x4000 <aw22xxx_cfg_store+0x58>
		0000000000004744:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x6218
    4748: 3900011f     	strb	wzr, [x8]
		0000000000004748:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x6218
    474c: d5384108     	mrs	x8, SP_EL0
    4750: f9438908     	ldr	x8, [x8, #0x710]
    4754: f94007e9     	ldr	x9, [sp, #0x8]
    4758: eb09011f     	cmp	x8, x9
    475c: 540000e1     	b.ne	0x4778 <aw22xxx_fw_store+0xa4>
    4760: aa1303e0     	mov	x0, x19
    4764: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4768: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    476c: 9100c3ff     	add	sp, sp, #0x30
    4770: d50323bf     	autiasp
    4774: d65f03c0     	ret
    4778: 94000000     	bl	0x4778 <aw22xxx_fw_store+0xa4>
		0000000000004778:  R_AARCH64_CALL26	__stack_chk_fail
