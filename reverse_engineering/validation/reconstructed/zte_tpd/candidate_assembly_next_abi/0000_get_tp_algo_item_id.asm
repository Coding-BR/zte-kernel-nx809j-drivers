
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000de4 <get_tp_algo_item_id>:
     de4: d503233f     	paciasp
     de8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     dec: f9000bf3     	str	x19, [sp, #0x10]
     df0: 910003fd     	mov	x29, sp
     df4: aa0003f3     	mov	x19, x0
     df8: 94000000     	bl	0xdf8 <get_tp_algo_item_id+0x14>
		0000000000000df8:  R_AARCH64_CALL26	strlen
     dfc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	off_498
     e00: aa0003e2     	mov	x2, x0
     e04: aa1303e0     	mov	x0, x19
     e08: f9400101     	ldr	x1, [x8]
		0000000000000e08:  R_AARCH64_LDST64_ABS_LO12_NC	off_498
     e0c: 94000000     	bl	0xe0c <get_tp_algo_item_id+0x28>
		0000000000000e0c:  R_AARCH64_CALL26	strnstr
     e10: b5000660     	cbnz	x0, 0xedc <get_tp_algo_item_id+0xf8>
     e14: aa1303e0     	mov	x0, x19
     e18: 94000000     	bl	0xe18 <get_tp_algo_item_id+0x34>
		0000000000000e18:  R_AARCH64_CALL26	strlen
     e1c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e1c:  R_AARCH64_ADR_PREL_PG_HI21	off_4A8
     e20: aa0003e2     	mov	x2, x0
     e24: aa1303e0     	mov	x0, x19
     e28: f9400101     	ldr	x1, [x8]
		0000000000000e28:  R_AARCH64_LDST64_ABS_LO12_NC	off_4A8
     e2c: 94000000     	bl	0xe2c <get_tp_algo_item_id+0x48>
		0000000000000e2c:  R_AARCH64_CALL26	strnstr
     e30: b50005c0     	cbnz	x0, 0xee8 <get_tp_algo_item_id+0x104>
     e34: aa1303e0     	mov	x0, x19
     e38: 94000000     	bl	0xe38 <get_tp_algo_item_id+0x54>
		0000000000000e38:  R_AARCH64_CALL26	strlen
     e3c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e3c:  R_AARCH64_ADR_PREL_PG_HI21	off_4B8
     e40: aa0003e2     	mov	x2, x0
     e44: aa1303e0     	mov	x0, x19
     e48: f9400101     	ldr	x1, [x8]
		0000000000000e48:  R_AARCH64_LDST64_ABS_LO12_NC	off_4B8
     e4c: 94000000     	bl	0xe4c <get_tp_algo_item_id+0x68>
		0000000000000e4c:  R_AARCH64_CALL26	strnstr
     e50: b5000520     	cbnz	x0, 0xef4 <get_tp_algo_item_id+0x110>
     e54: aa1303e0     	mov	x0, x19
     e58: 94000000     	bl	0xe58 <get_tp_algo_item_id+0x74>
		0000000000000e58:  R_AARCH64_CALL26	strlen
     e5c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e5c:  R_AARCH64_ADR_PREL_PG_HI21	off_4C8
     e60: aa0003e2     	mov	x2, x0
     e64: aa1303e0     	mov	x0, x19
     e68: f9400101     	ldr	x1, [x8]
		0000000000000e68:  R_AARCH64_LDST64_ABS_LO12_NC	off_4C8
     e6c: 94000000     	bl	0xe6c <get_tp_algo_item_id+0x88>
		0000000000000e6c:  R_AARCH64_CALL26	strnstr
     e70: b5000480     	cbnz	x0, 0xf00 <get_tp_algo_item_id+0x11c>
     e74: aa1303e0     	mov	x0, x19
     e78: 94000000     	bl	0xe78 <get_tp_algo_item_id+0x94>
		0000000000000e78:  R_AARCH64_CALL26	strlen
     e7c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e7c:  R_AARCH64_ADR_PREL_PG_HI21	off_4D8
     e80: aa0003e2     	mov	x2, x0
     e84: aa1303e0     	mov	x0, x19
     e88: f9400101     	ldr	x1, [x8]
		0000000000000e88:  R_AARCH64_LDST64_ABS_LO12_NC	off_4D8
     e8c: 94000000     	bl	0xe8c <get_tp_algo_item_id+0xa8>
		0000000000000e8c:  R_AARCH64_CALL26	strnstr
     e90: b50003e0     	cbnz	x0, 0xf0c <get_tp_algo_item_id+0x128>
     e94: aa1303e0     	mov	x0, x19
     e98: 94000000     	bl	0xe98 <get_tp_algo_item_id+0xb4>
		0000000000000e98:  R_AARCH64_CALL26	strlen
     e9c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e9c:  R_AARCH64_ADR_PREL_PG_HI21	off_4E8
     ea0: aa0003e2     	mov	x2, x0
     ea4: aa1303e0     	mov	x0, x19
     ea8: f9400101     	ldr	x1, [x8]
		0000000000000ea8:  R_AARCH64_LDST64_ABS_LO12_NC	off_4E8
     eac: 94000000     	bl	0xeac <get_tp_algo_item_id+0xc8>
		0000000000000eac:  R_AARCH64_CALL26	strnstr
     eb0: b5000340     	cbnz	x0, 0xf18 <get_tp_algo_item_id+0x134>
     eb4: aa1303e0     	mov	x0, x19
     eb8: 94000000     	bl	0xeb8 <get_tp_algo_item_id+0xd4>
		0000000000000eb8:  R_AARCH64_CALL26	strlen
     ebc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ebc:  R_AARCH64_ADR_PREL_PG_HI21	off_4F8
     ec0: aa0003e2     	mov	x2, x0
     ec4: aa1303e0     	mov	x0, x19
     ec8: f9400101     	ldr	x1, [x8]
		0000000000000ec8:  R_AARCH64_LDST64_ABS_LO12_NC	off_4F8
     ecc: 94000000     	bl	0xecc <get_tp_algo_item_id+0xe8>
		0000000000000ecc:  R_AARCH64_CALL26	strnstr
     ed0: b50002a0     	cbnz	x0, 0xf24 <get_tp_algo_item_id+0x140>
     ed4: 12800080     	mov	w0, #-0x5               // =-5
     ed8: 1400001c     	b	0xf48 <get_tp_algo_item_id+0x164>
     edc: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000edc:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l
     ee0: 91000273     	add	x19, x19, #0x0
		0000000000000ee0:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l
     ee4: 14000012     	b	0xf2c <get_tp_algo_item_id+0x148>
     ee8: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000ee8:  R_AARCH64_ADR_PREL_PG_HI21	byte_4A0
     eec: 91000273     	add	x19, x19, #0x0
		0000000000000eec:  R_AARCH64_ADD_ABS_LO12_NC	byte_4A0
     ef0: 1400000f     	b	0xf2c <get_tp_algo_item_id+0x148>
     ef4: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000ef4:  R_AARCH64_ADR_PREL_PG_HI21	byte_4B0
     ef8: 91000273     	add	x19, x19, #0x0
		0000000000000ef8:  R_AARCH64_ADD_ABS_LO12_NC	byte_4B0
     efc: 1400000c     	b	0xf2c <get_tp_algo_item_id+0x148>
     f00: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000f00:  R_AARCH64_ADR_PREL_PG_HI21	byte_4C0
     f04: 91000273     	add	x19, x19, #0x0
		0000000000000f04:  R_AARCH64_ADD_ABS_LO12_NC	byte_4C0
     f08: 14000009     	b	0xf2c <get_tp_algo_item_id+0x148>
     f0c: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000f0c:  R_AARCH64_ADR_PREL_PG_HI21	byte_4D0
     f10: 91000273     	add	x19, x19, #0x0
		0000000000000f10:  R_AARCH64_ADD_ABS_LO12_NC	byte_4D0
     f14: 14000006     	b	0xf2c <get_tp_algo_item_id+0x148>
     f18: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000f18:  R_AARCH64_ADR_PREL_PG_HI21	byte_4E0
     f1c: 91000273     	add	x19, x19, #0x0
		0000000000000f1c:  R_AARCH64_ADD_ABS_LO12_NC	byte_4E0
     f20: 14000003     	b	0xf2c <get_tp_algo_item_id+0x148>
     f24: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000f24:  R_AARCH64_ADR_PREL_PG_HI21	byte_4F0
     f28: 91000273     	add	x19, x19, #0x0
		0000000000000f28:  R_AARCH64_ADD_ABS_LO12_NC	byte_4F0
     f2c: 39400262     	ldrb	w2, [x19]
     f30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f30:  R_AARCH64_ADR_PREL_PG_HI21	unk_39C9D
     f34: 91000000     	add	x0, x0, #0x0
		0000000000000f34:  R_AARCH64_ADD_ABS_LO12_NC	unk_39C9D
     f38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1297
     f3c: 91000021     	add	x1, x1, #0x0
		0000000000000f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1297
     f40: 94000000     	bl	0xf40 <get_tp_algo_item_id+0x15c>
		0000000000000f40:  R_AARCH64_CALL26	_printk
     f44: 39400260     	ldrb	w0, [x19]
     f48: f9400bf3     	ldr	x19, [sp, #0x10]
     f4c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     f50: d50323bf     	autiasp
     f54: d65f03c0     	ret
