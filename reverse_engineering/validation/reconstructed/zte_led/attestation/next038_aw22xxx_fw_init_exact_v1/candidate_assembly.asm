
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002550 <aw22xxx_fw_init>:
    2550: d503233f     	paciasp
    2554: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2558: f9000bf3     	str	x19, [sp, #0x10]
    255c: 910003fd     	mov	x29, sp
    2560: aa0003f3     	mov	x19, x0
    2564: 9109c000     	add	x0, x0, #0x270
    2568: 52800021     	mov	w1, #0x1                // =1
    256c: 52800022     	mov	w2, #0x1                // =1
    2570: 94000000     	bl	0x2570 <aw22xxx_fw_init+0x20>
		0000000000002570:  R_AARCH64_CALL26	hrtimer_init
    2574: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		0000000000002574:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_fw_timer_func
    2578: 91000108     	add	x8, x8, #0x0
		0000000000002578:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_fw_timer_func
    257c: 91086269     	add	x9, x19, #0x218
    2580: f9014e68     	str	x8, [x19, #0x298]
    2584: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    2588: f9010a68     	str	x8, [x19, #0x210]
    258c: f9010e69     	str	x9, [x19, #0x218]
    2590: f9011269     	str	x9, [x19, #0x220]
    2594: 90000009     	adrp	x9, 0x2000 <aw22xxx_irq+0x20>
		0000000000002594:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_fw_work_routine
    2598: 91000129     	add	x9, x9, #0x0
		0000000000002598:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_fw_work_routine
    259c: f9011669     	str	x9, [x19, #0x228]
    25a0: 9108e269     	add	x9, x19, #0x238
    25a4: f9011a68     	str	x8, [x19, #0x230]
    25a8: f9011e69     	str	x9, [x19, #0x238]
    25ac: f9012269     	str	x9, [x19, #0x240]
    25b0: 90000009     	adrp	x9, 0x2000 <aw22xxx_irq+0x20>
		00000000000025b0:  R_AARCH64_ADR_PREL_PG_HI21	g_ver_var
    25b4: b9400129     	ldr	w9, [x9]
		00000000000025b4:  R_AARCH64_LDST32_ABS_LO12_NC	g_ver_var
    25b8: 71002d3f     	cmp	w9, #0xb
    25bc: 90000009     	adrp	x9, 0x2000 <aw22xxx_irq+0x20>
		00000000000025bc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_cfg_work_routine
    25c0: 91000129     	add	x9, x9, #0x0
		00000000000025c0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_cfg_work_routine
    25c4: f9012669     	str	x9, [x19, #0x248]
    25c8: 54000101     	b.ne	0x25e8 <aw22xxx_fw_init+0x98>
    25cc: f9012a68     	str	x8, [x19, #0x250]
    25d0: 91096268     	add	x8, x19, #0x258
    25d4: f9012e68     	str	x8, [x19, #0x258]
    25d8: f9013268     	str	x8, [x19, #0x260]
    25dc: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		00000000000025dc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_recover_work_routine
    25e0: 91000108     	add	x8, x8, #0x0
		00000000000025e0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_recover_work_routine
    25e4: f9013668     	str	x8, [x19, #0x268]
    25e8: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		00000000000025e8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x42c
    25ec: 91000000     	add	x0, x0, #0x0
		00000000000025ec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x42c
    25f0: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		00000000000025f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xda2
    25f4: 91000021     	add	x1, x1, #0x0
		00000000000025f4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xda2
    25f8: 94000000     	bl	0x25f8 <aw22xxx_fw_init+0xa8>
		00000000000025f8:  R_AARCH64_CALL26	_printk
    25fc: 52994001     	mov	w1, #0xca00             // =51712
    2600: 9109c260     	add	x0, x19, #0x270
    2604: aa1f03e2     	mov	x2, xzr
    2608: 72a77341     	movk	w1, #0x3b9a, lsl #16
    260c: 52800023     	mov	w3, #0x1                // =1
    2610: 94000000     	bl	0x2610 <aw22xxx_fw_init+0xc0>
		0000000000002610:  R_AARCH64_CALL26	hrtimer_start_range_ns
    2614: f9400bf3     	ldr	x19, [sp, #0x10]
    2618: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    261c: d50323bf     	autiasp
    2620: d65f03c0     	ret
