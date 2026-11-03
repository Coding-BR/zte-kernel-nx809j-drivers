
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d6d0 <syna_tpd_register_fw_class>:
    d6d0: b4000480     	cbz	x0, 0xd760 <syna_tpd_register_fw_class+0x90>
    d6d4: d503233f     	paciasp
    d6d8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    d6dc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    d6e0: 910003fd     	mov	x29, sp
    d6e4: aa0003f3     	mov	x19, x0
    d6e8: 90000000     	adrp	x0, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d6e8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306f0
    d6ec: 91000000     	add	x0, x0, #0x0
		000000000000d6ec:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306f0
    d6f0: 94000000     	bl	0xd6f0 <syna_tpd_register_fw_class+0x20>
		000000000000d6f0:  R_AARCH64_CALL26	mutex_lock
    d6f4: 90000008     	adrp	x8, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d6f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2710
    d6f8: f9400109     	ldr	x9, [x8]
		000000000000d6f8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x2710
    d6fc: b40000e9     	cbz	x9, 0xd718 <syna_tpd_register_fw_class+0x48>
    d700: eb13013f     	cmp	x9, x19
    d704: 54000221     	b.ne	0xd748 <syna_tpd_register_fw_class+0x78>
    d708: 90000008     	adrp	x8, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d708:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2718
    d70c: 39400108     	ldrb	w8, [x8]
		000000000000d70c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x2718
    d710: 360000a8     	tbz	w8, #0x0, 0xd724 <syna_tpd_register_fw_class+0x54>
    d714: 1400000d     	b	0xd748 <syna_tpd_register_fw_class+0x78>
    d718: f9000113     	str	x19, [x8]
		000000000000d718:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x2710
    d71c: 90000008     	adrp	x8, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d71c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2718
    d720: 3900011f     	strb	wzr, [x8]
		000000000000d720:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x2718
    d724: 90000014     	adrp	x20, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d724:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x271c
    d728: 39400288     	ldrb	w8, [x20]
		000000000000d728:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x271c
    d72c: 370000e8     	tbnz	w8, #0x0, 0xd748 <syna_tpd_register_fw_class+0x78>
    d730: aa1303e0     	mov	x0, x19
    d734: 94000000     	bl	0xd734 <syna_tpd_register_fw_class+0x64>
		000000000000d734:  R_AARCH64_CALL26	syna_tpd_register_fw_class_stock_exact
    d738: f9434668     	ldr	x8, [x19, #0x688]
    d73c: f100011f     	cmp	x8, #0x0
    d740: 1a9f07e8     	cset	w8, ne
    d744: 39000288     	strb	w8, [x20]
		000000000000d744:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x271c
    d748: 90000000     	adrp	x0, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d748:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306f0
    d74c: 91000000     	add	x0, x0, #0x0
		000000000000d74c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306f0
    d750: 94000000     	bl	0xd750 <syna_tpd_register_fw_class+0x80>
		000000000000d750:  R_AARCH64_CALL26	mutex_unlock
    d754: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    d758: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d75c: d50323bf     	autiasp
    d760: d65f03c0     	ret
