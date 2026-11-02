
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019dd0 <edge_long_press_up>:
   19dd0: d503233f     	paciasp
   19dd4: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   19dd8: f9000bf9     	str	x25, [sp, #0x10]
   19ddc: a9025ff8     	stp	x24, x23, [sp, #0x20]
   19de0: a90357f6     	stp	x22, x21, [sp, #0x30]
   19de4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   19de8: 910003fd     	mov	x29, sp
   19dec: 12003c28     	and	w8, w1, #0xffff
   19df0: 7100251f     	cmp	w8, #0x9
   19df4: 54001248     	b.hi	0x1a03c <edge_long_press_up+0x26c>
   19df8: 2a0103f4     	mov	w20, w1
   19dfc: 92403e88     	and	x8, x20, #0xffff
   19e00: 8b213108     	add	x8, x8, w1, uxth #4
   19e04: d37df118     	lsl	x24, x8, #3
   19e08: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019e08:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   19e0c: 91000108     	add	x8, x8, #0x0
		0000000000019e0c:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   19e10: 8b180117     	add	x23, x8, x24
   19e14: 394152e8     	ldrb	w8, [x23, #0x54]
   19e18: 35000108     	cbnz	w8, 0x19e38 <edge_long_press_up+0x68>
   19e1c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   19e20: f9400bf9     	ldr	x25, [sp, #0x10]
   19e24: a94357f6     	ldp	x22, x21, [sp, #0x30]
   19e28: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   19e2c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   19e30: d50323bf     	autiasp
   19e34: d65f03c0     	ret
   19e38: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019e38:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   19e3c: aa0003f6     	mov	x22, x0
   19e40: f9400119     	ldr	x25, [x8]
		0000000000019e40:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   19e44: 91324320     	add	x0, x25, #0xc90
   19e48: 94000000     	bl	0x19e48 <edge_long_press_up+0x78>
		0000000000019e48:  R_AARCH64_CALL26	mutex_lock
   19e4c: 12003e93     	and	w19, w20, #0xffff
   19e50: aa1603e0     	mov	x0, x22
   19e54: 52800061     	mov	w1, #0x3                // =3
   19e58: 528005e2     	mov	w2, #0x2f               // =47
   19e5c: 2a1303e3     	mov	w3, w19
   19e60: 94000000     	bl	0x19e60 <edge_long_press_up+0x90>
		0000000000019e60:  R_AARCH64_CALL26	input_event
   19e64: aa1603e0     	mov	x0, x22
   19e68: 2a1f03e1     	mov	w1, wzr
   19e6c: 2a1f03e2     	mov	w2, wzr
   19e70: aa1603f5     	mov	x21, x22
   19e74: 94000000     	bl	0x19e74 <edge_long_press_up+0xa4>
		0000000000019e74:  R_AARCH64_CALL26	input_mt_report_slot_state
   19e78: 35000293     	cbnz	w19, 0x19ec8 <edge_long_press_up+0xf8>
   19e7c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019e7c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   19e80: 39400108     	ldrb	w8, [x8]
		0000000000019e80:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   19e84: 37000b68     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19e88: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019e88:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdc
   19e8c: 39400108     	ldrb	w8, [x8]
		0000000000019e8c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdc
   19e90: 37000b08     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19e94: 12003e88     	and	w8, w20, #0xffff
   19e98: 7100091f     	cmp	w8, #0x2
   19e9c: 54000281     	b.ne	0x19eec <edge_long_press_up+0x11c>
   19ea0: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019ea0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   19ea4: 39400108     	ldrb	w8, [x8]
		0000000000019ea4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   19ea8: 37000a48     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19eac: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019eac:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1ec
   19eb0: 39400108     	ldrb	w8, [x8]
		0000000000019eb0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1ec
   19eb4: 370009e8     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19eb8: 12003e88     	and	w8, w20, #0xffff
   19ebc: 7100111f     	cmp	w8, #0x4
   19ec0: 54000281     	b.ne	0x19f10 <edge_long_press_up+0x140>
   19ec4: 1400001c     	b	0x19f34 <edge_long_press_up+0x164>
   19ec8: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019ec8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   19ecc: 39400108     	ldrb	w8, [x8]
		0000000000019ecc:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   19ed0: 37000908     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19ed4: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019ed4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x54
   19ed8: 39400108     	ldrb	w8, [x8]
		0000000000019ed8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x54
   19edc: 370008a8     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19ee0: 12003e88     	and	w8, w20, #0xffff
   19ee4: 7100051f     	cmp	w8, #0x1
   19ee8: 54fffca1     	b.ne	0x19e7c <edge_long_press_up+0xac>
   19eec: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019eec:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   19ef0: 39400108     	ldrb	w8, [x8]
		0000000000019ef0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   19ef4: 370007e8     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19ef8: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019ef8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x164
   19efc: 39400108     	ldrb	w8, [x8]
		0000000000019efc:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x164
   19f00: 37000788     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19f04: 12003e88     	and	w8, w20, #0xffff
   19f08: 71000d1f     	cmp	w8, #0x3
   19f0c: 54fffca1     	b.ne	0x19ea0 <edge_long_press_up+0xd0>
   19f10: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019f10:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   19f14: 39400108     	ldrb	w8, [x8]
		0000000000019f14:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   19f18: 370006c8     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19f1c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019f1c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x274
   19f20: 39400108     	ldrb	w8, [x8]
		0000000000019f20:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x274
   19f24: 37000668     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19f28: 12003e88     	and	w8, w20, #0xffff
   19f2c: 7100151f     	cmp	w8, #0x5
   19f30: 54000140     	b.eq	0x19f58 <edge_long_press_up+0x188>
   19f34: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019f34:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   19f38: 39400108     	ldrb	w8, [x8]
		0000000000019f38:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   19f3c: 370005a8     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19f40: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019f40:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fc
   19f44: 39400108     	ldrb	w8, [x8]
		0000000000019f44:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fc
   19f48: 37000548     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19f4c: 12003e88     	and	w8, w20, #0xffff
   19f50: 7100191f     	cmp	w8, #0x6
   19f54: 54000140     	b.eq	0x19f7c <edge_long_press_up+0x1ac>
   19f58: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019f58:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   19f5c: 39400108     	ldrb	w8, [x8]
		0000000000019f5c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   19f60: 37000488     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19f64: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019f64:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x384
   19f68: 39400108     	ldrb	w8, [x8]
		0000000000019f68:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x384
   19f6c: 37000428     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19f70: 12003e88     	and	w8, w20, #0xffff
   19f74: 71001d1f     	cmp	w8, #0x7
   19f78: 54000140     	b.eq	0x19fa0 <edge_long_press_up+0x1d0>
   19f7c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019f7c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   19f80: 39400108     	ldrb	w8, [x8]
		0000000000019f80:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   19f84: 37000368     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19f88: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019f88:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40c
   19f8c: 39400108     	ldrb	w8, [x8]
		0000000000019f8c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40c
   19f90: 37000308     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19f94: 12003e88     	and	w8, w20, #0xffff
   19f98: 7100211f     	cmp	w8, #0x8
   19f9c: 54000140     	b.eq	0x19fc4 <edge_long_press_up+0x1f4>
   19fa0: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019fa0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   19fa4: 39400108     	ldrb	w8, [x8]
		0000000000019fa4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   19fa8: 37000248     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19fac: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019fac:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x494
   19fb0: 39400108     	ldrb	w8, [x8]
		0000000000019fb0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x494
   19fb4: 370001e8     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19fb8: 12003e88     	and	w8, w20, #0xffff
   19fbc: 7100251f     	cmp	w8, #0x9
   19fc0: 540000e0     	b.eq	0x19fdc <edge_long_press_up+0x20c>
   19fc4: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019fc4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   19fc8: 39400108     	ldrb	w8, [x8]
		0000000000019fc8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   19fcc: 37000128     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19fd0: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019fd0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51c
   19fd4: 39400108     	ldrb	w8, [x8]
		0000000000019fd4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51c
   19fd8: 370000c8     	tbnz	w8, #0x0, 0x19ff0 <edge_long_press_up+0x220>
   19fdc: aa1503e0     	mov	x0, x21
   19fe0: 52800021     	mov	w1, #0x1                // =1
   19fe4: 52802942     	mov	w2, #0x14a              // =330
   19fe8: 2a1f03e3     	mov	w3, wzr
   19fec: 94000000     	bl	0x19fec <edge_long_press_up+0x21c>
		0000000000019fec:  R_AARCH64_CALL26	input_event
   19ff0: aa1503e0     	mov	x0, x21
   19ff4: 2a1f03e1     	mov	w1, wzr
   19ff8: 2a1f03e2     	mov	w2, wzr
   19ffc: 2a1f03e3     	mov	w3, wzr
   1a000: 94000000     	bl	0x1a000 <edge_long_press_up+0x230>
		000000000001a000:  R_AARCH64_CALL26	input_event
   1a004: 91324320     	add	x0, x25, #0xc90
   1a008: 94000000     	bl	0x1a008 <edge_long_press_up+0x238>
		000000000001a008:  R_AARCH64_CALL26	mutex_unlock
   1a00c: b27e0308     	orr	x8, x24, #0x4
   1a010: 390152ff     	strb	wzr, [x23, #0x54]
   1a014: f115411f     	cmp	x8, #0x550
   1a018: 54000128     	b.hi	0x1a03c <edge_long_press_up+0x26c>
   1a01c: 294012e3     	ldp	w3, w4, [x23]
   1a020: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8796
   1a024: 91000000     	add	x0, x0, #0x0
		000000000001a024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8796
   1a028: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5274
   1a02c: 91000021     	add	x1, x1, #0x0
		000000000001a02c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5274
   1a030: 2a1303e2     	mov	w2, w19
   1a034: 94000000     	bl	0x1a034 <edge_long_press_up+0x264>
		000000000001a034:  R_AARCH64_CALL26	_printk
   1a038: 17ffff79     	b	0x19e1c <edge_long_press_up+0x4c>
   1a03c: d4200020     	brk	#0x1
