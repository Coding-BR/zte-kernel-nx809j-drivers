
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009264 <get_tp_algo_item_id>:
    9264: d503233f     	paciasp
    9268: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    926c: f9000bf5     	str	x21, [sp, #0x10]
    9270: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9274: 910003fd     	mov	x29, sp
    9278: 90000015     	adrp	x21, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009278:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l
    927c: 910002b5     	add	x21, x21, #0x0
		000000000000927c:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l
    9280: aa0003f3     	mov	x19, x0
    9284: f94006b4     	ldr	x20, [x21, #0x8]
    9288: 94000000     	bl	0x9288 <get_tp_algo_item_id+0x24>
		0000000000009288:  R_AARCH64_CALL26	strlen
    928c: aa0003e2     	mov	x2, x0
    9290: aa1303e0     	mov	x0, x19
    9294: aa1403e1     	mov	x1, x20
    9298: 94000000     	bl	0x9298 <get_tp_algo_item_id+0x34>
		0000000000009298:  R_AARCH64_CALL26	strnstr
    929c: b50007e0     	cbnz	x0, 0x9398 <get_tp_algo_item_id+0x134>
    92a0: 90000015     	adrp	x21, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000092a0:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x10
    92a4: 910002b5     	add	x21, x21, #0x0
		00000000000092a4:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x10
    92a8: aa1303e0     	mov	x0, x19
    92ac: f94006b4     	ldr	x20, [x21, #0x8]
    92b0: 94000000     	bl	0x92b0 <get_tp_algo_item_id+0x4c>
		00000000000092b0:  R_AARCH64_CALL26	strlen
    92b4: aa0003e2     	mov	x2, x0
    92b8: aa1303e0     	mov	x0, x19
    92bc: aa1403e1     	mov	x1, x20
    92c0: 94000000     	bl	0x92c0 <get_tp_algo_item_id+0x5c>
		00000000000092c0:  R_AARCH64_CALL26	strnstr
    92c4: b50006a0     	cbnz	x0, 0x9398 <get_tp_algo_item_id+0x134>
    92c8: 90000015     	adrp	x21, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000092c8:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x20
    92cc: 910002b5     	add	x21, x21, #0x0
		00000000000092cc:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x20
    92d0: aa1303e0     	mov	x0, x19
    92d4: f94006b4     	ldr	x20, [x21, #0x8]
    92d8: 94000000     	bl	0x92d8 <get_tp_algo_item_id+0x74>
		00000000000092d8:  R_AARCH64_CALL26	strlen
    92dc: aa0003e2     	mov	x2, x0
    92e0: aa1303e0     	mov	x0, x19
    92e4: aa1403e1     	mov	x1, x20
    92e8: 94000000     	bl	0x92e8 <get_tp_algo_item_id+0x84>
		00000000000092e8:  R_AARCH64_CALL26	strnstr
    92ec: b5000560     	cbnz	x0, 0x9398 <get_tp_algo_item_id+0x134>
    92f0: 90000015     	adrp	x21, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000092f0:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x30
    92f4: 910002b5     	add	x21, x21, #0x0
		00000000000092f4:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x30
    92f8: aa1303e0     	mov	x0, x19
    92fc: f94006b4     	ldr	x20, [x21, #0x8]
    9300: 94000000     	bl	0x9300 <get_tp_algo_item_id+0x9c>
		0000000000009300:  R_AARCH64_CALL26	strlen
    9304: aa0003e2     	mov	x2, x0
    9308: aa1303e0     	mov	x0, x19
    930c: aa1403e1     	mov	x1, x20
    9310: 94000000     	bl	0x9310 <get_tp_algo_item_id+0xac>
		0000000000009310:  R_AARCH64_CALL26	strnstr
    9314: b5000420     	cbnz	x0, 0x9398 <get_tp_algo_item_id+0x134>
    9318: 90000015     	adrp	x21, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009318:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x40
    931c: 910002b5     	add	x21, x21, #0x0
		000000000000931c:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x40
    9320: aa1303e0     	mov	x0, x19
    9324: f94006b4     	ldr	x20, [x21, #0x8]
    9328: 94000000     	bl	0x9328 <get_tp_algo_item_id+0xc4>
		0000000000009328:  R_AARCH64_CALL26	strlen
    932c: aa0003e2     	mov	x2, x0
    9330: aa1303e0     	mov	x0, x19
    9334: aa1403e1     	mov	x1, x20
    9338: 94000000     	bl	0x9338 <get_tp_algo_item_id+0xd4>
		0000000000009338:  R_AARCH64_CALL26	strnstr
    933c: b50002e0     	cbnz	x0, 0x9398 <get_tp_algo_item_id+0x134>
    9340: 90000015     	adrp	x21, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009340:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x50
    9344: 910002b5     	add	x21, x21, #0x0
		0000000000009344:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x50
    9348: aa1303e0     	mov	x0, x19
    934c: f94006b4     	ldr	x20, [x21, #0x8]
    9350: 94000000     	bl	0x9350 <get_tp_algo_item_id+0xec>
		0000000000009350:  R_AARCH64_CALL26	strlen
    9354: aa0003e2     	mov	x2, x0
    9358: aa1303e0     	mov	x0, x19
    935c: aa1403e1     	mov	x1, x20
    9360: 94000000     	bl	0x9360 <get_tp_algo_item_id+0xfc>
		0000000000009360:  R_AARCH64_CALL26	strnstr
    9364: b50001a0     	cbnz	x0, 0x9398 <get_tp_algo_item_id+0x134>
    9368: 90000015     	adrp	x21, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009368:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x60
    936c: 910002b5     	add	x21, x21, #0x0
		000000000000936c:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x60
    9370: aa1303e0     	mov	x0, x19
    9374: f94006b4     	ldr	x20, [x21, #0x8]
    9378: 94000000     	bl	0x9378 <get_tp_algo_item_id+0x114>
		0000000000009378:  R_AARCH64_CALL26	strlen
    937c: aa0003e2     	mov	x2, x0
    9380: aa1303e0     	mov	x0, x19
    9384: aa1403e1     	mov	x1, x20
    9388: 94000000     	bl	0x9388 <get_tp_algo_item_id+0x124>
		0000000000009388:  R_AARCH64_CALL26	strnstr
    938c: b5000060     	cbnz	x0, 0x9398 <get_tp_algo_item_id+0x134>
    9390: 12800080     	mov	w0, #-0x5               // =-5
    9394: 14000008     	b	0x93b4 <get_tp_algo_item_id+0x150>
    9398: 394002a2     	ldrb	w2, [x21]
    939c: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000939c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b169
    93a0: 91000000     	add	x0, x0, #0x0
		00000000000093a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b169
    93a4: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000093a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18668
    93a8: 91000021     	add	x1, x1, #0x0
		00000000000093a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18668
    93ac: 94000000     	bl	0x93ac <get_tp_algo_item_id+0x148>
		00000000000093ac:  R_AARCH64_CALL26	_printk
    93b0: 394002a0     	ldrb	w0, [x21]
    93b4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    93b8: f9400bf5     	ldr	x21, [sp, #0x10]
    93bc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    93c0: d50323bf     	autiasp
    93c4: d65f03c0     	ret
