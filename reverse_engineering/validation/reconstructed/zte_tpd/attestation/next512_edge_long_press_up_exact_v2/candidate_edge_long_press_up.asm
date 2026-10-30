
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024fb0 <edge_long_press_up>:
   24fb0: d503233f     	paciasp
   24fb4: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   24fb8: f9000bf9     	str	x25, [sp, #0x10]
   24fbc: a9025ff8     	stp	x24, x23, [sp, #0x20]
   24fc0: a90357f6     	stp	x22, x21, [sp, #0x30]
   24fc4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   24fc8: 910003fd     	mov	x29, sp
   24fcc: 12003c28     	and	w8, w1, #0xffff
   24fd0: 7100251f     	cmp	w8, #0x9
   24fd4: 54001248     	b.hi	0x2521c <edge_long_press_up+0x26c>
   24fd8: 2a0103f4     	mov	w20, w1
   24fdc: 92403e88     	and	x8, x20, #0xffff
   24fe0: 8b213108     	add	x8, x8, w1, uxth #4
   24fe4: d37df118     	lsl	x24, x8, #3
   24fe8: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024fe8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   24fec: 91000108     	add	x8, x8, #0x0
		0000000000024fec:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   24ff0: 8b180117     	add	x23, x8, x24
   24ff4: 394152e8     	ldrb	w8, [x23, #0x54]
   24ff8: 35000108     	cbnz	w8, 0x25018 <edge_long_press_up+0x68>
   24ffc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25000: f9400bf9     	ldr	x25, [sp, #0x10]
   25004: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25008: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   2500c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   25010: d50323bf     	autiasp
   25014: d65f03c0     	ret
   25018: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025018:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2501c: aa0003f6     	mov	x22, x0
   25020: f9400119     	ldr	x25, [x8]
		0000000000025020:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25024: 91324320     	add	x0, x25, #0xc90
   25028: 94000000     	bl	0x25028 <edge_long_press_up+0x78>
		0000000000025028:  R_AARCH64_CALL26	mutex_lock
   2502c: 12003e93     	and	w19, w20, #0xffff
   25030: aa1603e0     	mov	x0, x22
   25034: 52800061     	mov	w1, #0x3                // =3
   25038: 528005e2     	mov	w2, #0x2f               // =47
   2503c: 2a1303e3     	mov	w3, w19
   25040: 94000000     	bl	0x25040 <edge_long_press_up+0x90>
		0000000000025040:  R_AARCH64_CALL26	input_event
   25044: aa1603e0     	mov	x0, x22
   25048: 2a1f03e1     	mov	w1, wzr
   2504c: 2a1f03e2     	mov	w2, wzr
   25050: aa1603f5     	mov	x21, x22
   25054: 94000000     	bl	0x25054 <edge_long_press_up+0xa4>
		0000000000025054:  R_AARCH64_CALL26	input_mt_report_slot_state
   25058: 35000293     	cbnz	w19, 0x250a8 <edge_long_press_up+0xf8>
   2505c: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		000000000002505c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   25060: 39400108     	ldrb	w8, [x8]
		0000000000025060:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   25064: 37000b68     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25068: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025068:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdc
   2506c: 39400108     	ldrb	w8, [x8]
		000000000002506c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdc
   25070: 37000b08     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25074: 12003e88     	and	w8, w20, #0xffff
   25078: 7100091f     	cmp	w8, #0x2
   2507c: 54000281     	b.ne	0x250cc <edge_long_press_up+0x11c>
   25080: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025080:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   25084: 39400108     	ldrb	w8, [x8]
		0000000000025084:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   25088: 37000a48     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   2508c: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		000000000002508c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1ec
   25090: 39400108     	ldrb	w8, [x8]
		0000000000025090:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1ec
   25094: 370009e8     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25098: 12003e88     	and	w8, w20, #0xffff
   2509c: 7100111f     	cmp	w8, #0x4
   250a0: 54000281     	b.ne	0x250f0 <edge_long_press_up+0x140>
   250a4: 1400001c     	b	0x25114 <edge_long_press_up+0x164>
   250a8: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000250a8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   250ac: 39400108     	ldrb	w8, [x8]
		00000000000250ac:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   250b0: 37000908     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   250b4: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000250b4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x54
   250b8: 39400108     	ldrb	w8, [x8]
		00000000000250b8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x54
   250bc: 370008a8     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   250c0: 12003e88     	and	w8, w20, #0xffff
   250c4: 7100051f     	cmp	w8, #0x1
   250c8: 54fffca1     	b.ne	0x2505c <edge_long_press_up+0xac>
   250cc: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000250cc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   250d0: 39400108     	ldrb	w8, [x8]
		00000000000250d0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   250d4: 370007e8     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   250d8: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000250d8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x164
   250dc: 39400108     	ldrb	w8, [x8]
		00000000000250dc:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x164
   250e0: 37000788     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   250e4: 12003e88     	and	w8, w20, #0xffff
   250e8: 71000d1f     	cmp	w8, #0x3
   250ec: 54fffca1     	b.ne	0x25080 <edge_long_press_up+0xd0>
   250f0: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000250f0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   250f4: 39400108     	ldrb	w8, [x8]
		00000000000250f4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   250f8: 370006c8     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   250fc: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000250fc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x274
   25100: 39400108     	ldrb	w8, [x8]
		0000000000025100:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x274
   25104: 37000668     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25108: 12003e88     	and	w8, w20, #0xffff
   2510c: 7100151f     	cmp	w8, #0x5
   25110: 54000140     	b.eq	0x25138 <edge_long_press_up+0x188>
   25114: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025114:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   25118: 39400108     	ldrb	w8, [x8]
		0000000000025118:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   2511c: 370005a8     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25120: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025120:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fc
   25124: 39400108     	ldrb	w8, [x8]
		0000000000025124:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fc
   25128: 37000548     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   2512c: 12003e88     	and	w8, w20, #0xffff
   25130: 7100191f     	cmp	w8, #0x6
   25134: 54000140     	b.eq	0x2515c <edge_long_press_up+0x1ac>
   25138: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025138:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   2513c: 39400108     	ldrb	w8, [x8]
		000000000002513c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   25140: 37000488     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25144: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025144:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x384
   25148: 39400108     	ldrb	w8, [x8]
		0000000000025148:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x384
   2514c: 37000428     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25150: 12003e88     	and	w8, w20, #0xffff
   25154: 71001d1f     	cmp	w8, #0x7
   25158: 54000140     	b.eq	0x25180 <edge_long_press_up+0x1d0>
   2515c: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		000000000002515c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   25160: 39400108     	ldrb	w8, [x8]
		0000000000025160:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   25164: 37000368     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25168: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025168:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40c
   2516c: 39400108     	ldrb	w8, [x8]
		000000000002516c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40c
   25170: 37000308     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25174: 12003e88     	and	w8, w20, #0xffff
   25178: 7100211f     	cmp	w8, #0x8
   2517c: 54000140     	b.eq	0x251a4 <edge_long_press_up+0x1f4>
   25180: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		0000000000025180:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   25184: 39400108     	ldrb	w8, [x8]
		0000000000025184:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   25188: 37000248     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   2518c: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		000000000002518c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x494
   25190: 39400108     	ldrb	w8, [x8]
		0000000000025190:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x494
   25194: 370001e8     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   25198: 12003e88     	and	w8, w20, #0xffff
   2519c: 7100251f     	cmp	w8, #0x9
   251a0: 540000e0     	b.eq	0x251bc <edge_long_press_up+0x20c>
   251a4: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000251a4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   251a8: 39400108     	ldrb	w8, [x8]
		00000000000251a8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   251ac: 37000128     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   251b0: 90000008     	adrp	x8, 0x25000 <edge_long_press_up+0x50>
		00000000000251b0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51c
   251b4: 39400108     	ldrb	w8, [x8]
		00000000000251b4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51c
   251b8: 370000c8     	tbnz	w8, #0x0, 0x251d0 <edge_long_press_up+0x220>
   251bc: aa1503e0     	mov	x0, x21
   251c0: 52800021     	mov	w1, #0x1                // =1
   251c4: 52802942     	mov	w2, #0x14a              // =330
   251c8: 2a1f03e3     	mov	w3, wzr
   251cc: 94000000     	bl	0x251cc <edge_long_press_up+0x21c>
		00000000000251cc:  R_AARCH64_CALL26	input_event
   251d0: aa1503e0     	mov	x0, x21
   251d4: 2a1f03e1     	mov	w1, wzr
   251d8: 2a1f03e2     	mov	w2, wzr
   251dc: 2a1f03e3     	mov	w3, wzr
   251e0: 94000000     	bl	0x251e0 <edge_long_press_up+0x230>
		00000000000251e0:  R_AARCH64_CALL26	input_event
   251e4: 91324320     	add	x0, x25, #0xc90
   251e8: 94000000     	bl	0x251e8 <edge_long_press_up+0x238>
		00000000000251e8:  R_AARCH64_CALL26	mutex_unlock
   251ec: b27e0308     	orr	x8, x24, #0x4
   251f0: 390152ff     	strb	wzr, [x23, #0x54]
   251f4: f115411f     	cmp	x8, #0x550
   251f8: 54000128     	b.hi	0x2521c <edge_long_press_up+0x26c>
   251fc: 294012e3     	ldp	w3, w4, [x23]
   25200: 90000000     	adrp	x0, 0x25000 <edge_long_press_up+0x50>
		0000000000025200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0ce
   25204: 91000000     	add	x0, x0, #0x0
		0000000000025204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0ce
   25208: 90000001     	adrp	x1, 0x25000 <edge_long_press_up+0x50>
		0000000000025208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b74
   2520c: 91000021     	add	x1, x1, #0x0
		000000000002520c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b74
   25210: 2a1303e2     	mov	w2, w19
   25214: 94000000     	bl	0x25214 <edge_long_press_up+0x264>
		0000000000025214:  R_AARCH64_CALL26	_printk
   25218: 17ffff79     	b	0x24ffc <edge_long_press_up+0x4c>
   2521c: d4200020     	brk	#0x1
