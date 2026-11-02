
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000024d0 <aw22xxx_fw_store>:
    24d0: d503233f     	paciasp
    24d4: d100c3ff     	sub	sp, sp, #0x30
    24d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    24dc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    24e0: 910043fd     	add	x29, sp, #0x10
    24e4: d5384109     	mrs	x9, SP_EL0
    24e8: aa0203e8     	mov	x8, x2
    24ec: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000024ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x406
    24f0: 91000021     	add	x1, x1, #0x0
		00000000000024f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x406
    24f4: f9438929     	ldr	x9, [x9, #0x710]
    24f8: 910013e2     	add	x2, sp, #0x4
    24fc: aa0303f3     	mov	x19, x3
    2500: f90007e9     	str	x9, [sp, #0x8]
    2504: f9404c14     	ldr	x20, [x0, #0x98]
    2508: aa0803e0     	mov	x0, x8
    250c: b90007ff     	str	wzr, [sp, #0x4]
    2510: 94000000     	bl	0x2510 <aw22xxx_fw_store+0x40>
		0000000000002510:  R_AARCH64_CALL26	sscanf
    2514: 7100041f     	cmp	w0, #0x1
    2518: 54000141     	b.ne	0x2540 <aw22xxx_fw_store+0x70>
    251c: b94007e8     	ldr	w8, [sp, #0x4]
    2520: 7100051f     	cmp	w8, #0x1
    2524: 390b7a88     	strb	w8, [x20, #0x2de]
    2528: 540000c1     	b.ne	0x2540 <aw22xxx_fw_store+0x70>
    252c: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000252c:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    2530: 91080282     	add	x2, x20, #0x200
    2534: 52800400     	mov	w0, #0x20               // =32
    2538: f9400101     	ldr	x1, [x8]
		0000000000002538:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    253c: 94000000     	bl	0x253c <aw22xxx_fw_store+0x6c>
		000000000000253c:  R_AARCH64_CALL26	queue_work_on
    2540: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002540:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3d
    2544: 3900011f     	strb	wzr, [x8]
		0000000000002544:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    2548: d5384108     	mrs	x8, SP_EL0
    254c: f9438908     	ldr	x8, [x8, #0x710]
    2550: f94007e9     	ldr	x9, [sp, #0x8]
    2554: eb09011f     	cmp	x8, x9
    2558: 540000e1     	b.ne	0x2574 <aw22xxx_fw_store+0xa4>
    255c: aa1303e0     	mov	x0, x19
    2560: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2564: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2568: 9100c3ff     	add	sp, sp, #0x30
    256c: d50323bf     	autiasp
    2570: d65f03c0     	ret
    2574: 94000000     	bl	0x2574 <aw22xxx_fw_store+0xa4>
		0000000000002574:  R_AARCH64_CALL26	__stack_chk_fail
