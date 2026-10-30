
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004eb4 <aw22xxx_cfg_recover_update_wait>:
    4eb4: d503233f     	paciasp
    4eb8: d10183ff     	sub	sp, sp, #0x60
    4ebc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4ec0: a90267fa     	stp	x26, x25, [sp, #0x20]
    4ec4: a9035ff8     	stp	x24, x23, [sp, #0x30]
    4ec8: a90457f6     	stp	x22, x21, [sp, #0x40]
    4ecc: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4ed0: 910043fd     	add	x29, sp, #0x10
    4ed4: d5384108     	mrs	x8, SP_EL0
    4ed8: aa0003f3     	mov	x19, x0
    4edc: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    4ee0: 91000000     	add	x0, x0, #0x0
		0000000000004ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    4ee4: f9438908     	ldr	x8, [x8, #0x710]
    4ee8: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6a
    4eec: 91000021     	add	x1, x1, #0x0
		0000000000004eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6a
    4ef0: f90007e8     	str	x8, [sp, #0x8]
    4ef4: f90003ff     	str	xzr, [sp]
    4ef8: 94000000     	bl	0x4ef8 <aw22xxx_cfg_recover_update_wait+0x44>
		0000000000004ef8:  R_AARCH64_CALL26	_printk
    4efc: b9430262     	ldr	w2, [x19, #0x300]
    4f00: 121f7848     	and	w8, w2, #0xfffffffe
    4f04: 7100111f     	cmp	w8, #0x4
    4f08: 90000008     	adrp	x8, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f08:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6260
    4f0c: 54000061     	b.ne	0x4f18 <aw22xxx_cfg_recover_update_wait+0x64>
    4f10: b9000102     	str	w2, [x8]
		0000000000004f10:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6260
    4f14: 14000002     	b	0x4f1c <aw22xxx_cfg_recover_update_wait+0x68>
    4f18: b9400102     	ldr	w2, [x8]
		0000000000004f18:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6260
    4f1c: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f8
    4f20: 91000000     	add	x0, x0, #0x0
		0000000000004f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f8
    4f24: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6a
    4f28: 91000021     	add	x1, x1, #0x0
		0000000000004f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6a
    4f2c: 94000000     	bl	0x4f2c <aw22xxx_cfg_recover_update_wait+0x78>
		0000000000004f2c:  R_AARCH64_CALL26	_printk
    4f30: b9430262     	ldr	w2, [x19, #0x300]
    4f34: 121f7848     	and	w8, w2, #0xfffffffe
    4f38: 7100091f     	cmp	w8, #0x2
    4f3c: 90000008     	adrp	x8, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f3c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6264
    4f40: 54000061     	b.ne	0x4f4c <aw22xxx_cfg_recover_update_wait+0x98>
    4f44: b9000102     	str	w2, [x8]
		0000000000004f44:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6264
    4f48: 14000002     	b	0x4f50 <aw22xxx_cfg_recover_update_wait+0x9c>
    4f4c: b9400102     	ldr	w2, [x8]
		0000000000004f4c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6264
    4f50: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7f
    4f54: 91000000     	add	x0, x0, #0x0
		0000000000004f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7f
    4f58: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6a
    4f5c: 91000021     	add	x1, x1, #0x0
		0000000000004f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6a
    4f60: 94000000     	bl	0x4f60 <aw22xxx_cfg_recover_update_wait+0xac>
		0000000000004f60:  R_AARCH64_CALL26	_printk
    4f64: 90000008     	adrp	x8, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f64:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6268
    4f68: b9430262     	ldr	w2, [x19, #0x300]
    4f6c: b9400108     	ldr	w8, [x8]
		0000000000004f6c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6268
    4f70: 6b08005f     	cmp	w2, w8
    4f74: 540002c2     	b.hs	0x4fcc <aw22xxx_cfg_recover_update_wait+0x118>
    4f78: 90000015     	adrp	x21, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f78:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61c0
    4f7c: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ba
    4f80: 91000000     	add	x0, x0, #0x0
		0000000000004f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ba
    4f84: f94002a8     	ldr	x8, [x21]
		0000000000004f84:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    4f88: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6a
    4f8c: 91000021     	add	x1, x1, #0x0
		0000000000004f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6a
    4f90: f8627902     	ldr	x2, [x8, x2, lsl #3]
    4f94: 94000000     	bl	0x4f94 <aw22xxx_cfg_recover_update_wait+0xe0>
		0000000000004f94:  R_AARCH64_CALL26	_printk
    4f98: f94002b6     	ldr	x22, [x21]
		0000000000004f98:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    4f9c: b9430274     	ldr	w20, [x19, #0x300]
    4fa0: f8747ac0     	ldr	x0, [x22, x20, lsl #3]
    4fa4: 94000000     	bl	0x4fa4 <aw22xxx_cfg_recover_update_wait+0xf0>
		0000000000004fa4:  R_AARCH64_CALL26	strlen
    4fa8: f100141f     	cmp	x0, #0x5
    4fac: 540001c2     	b.hs	0x4fe4 <aw22xxx_cfg_recover_update_wait+0x130>
    4fb0: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33b
    4fb4: 91000000     	add	x0, x0, #0x0
		0000000000004fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33b
    4fb8: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004fb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6a
    4fbc: 91000021     	add	x1, x1, #0x0
		0000000000004fbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6a
    4fc0: 2a1403e2     	mov	w2, w20
    4fc4: 94000000     	bl	0x4fc4 <aw22xxx_cfg_recover_update_wait+0x110>
		0000000000004fc4:  R_AARCH64_CALL26	_printk
    4fc8: 14000067     	b	0x5164 <aw22xxx_cfg_recover_update_wait+0x2b0>
    4fcc: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1571
    4fd0: 91000000     	add	x0, x0, #0x0
		0000000000004fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1571
    4fd4: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6a
    4fd8: 91000021     	add	x1, x1, #0x0
		0000000000004fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6a
    4fdc: 94000000     	bl	0x4fdc <aw22xxx_cfg_recover_update_wait+0x128>
		0000000000004fdc:  R_AARCH64_CALL26	_printk
    4fe0: 14000061     	b	0x5164 <aw22xxx_cfg_recover_update_wait+0x2b0>
    4fe4: 394bbe68     	ldrb	w8, [x19, #0x2ef]
    4fe8: 7100091f     	cmp	w8, #0x2
    4fec: 54000121     	b.ne	0x5010 <aw22xxx_cfg_recover_update_wait+0x15c>
    4ff0: 71000a9f     	cmp	w20, #0x2
    4ff4: 90000008     	adrp	x8, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004ff4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6218
    4ff8: 54000121     	b.ne	0x501c <aw22xxx_cfg_recover_update_wait+0x168>
    4ffc: 39400109     	ldrb	w9, [x8]
		0000000000004ffc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    5000: 390d227f     	strb	wzr, [x19, #0x348]
    5004: 36000149     	tbz	w9, #0x0, 0x502c <aw22xxx_cfg_recover_update_wait+0x178>
    5008: 52800054     	mov	w20, #0x2               // =2
    500c: 1400000e     	b	0x5044 <aw22xxx_cfg_recover_update_wait+0x190>
    5010: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		0000000000005010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c2
    5014: 91000000     	add	x0, x0, #0x0
		0000000000005014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c2
    5018: 14000024     	b	0x50a8 <aw22xxx_cfg_recover_update_wait+0x1f4>
    501c: 39400109     	ldrb	w9, [x8]
		000000000000501c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    5020: 5280002a     	mov	w10, #0x1               // =1
    5024: 390d226a     	strb	w10, [x19, #0x348]
    5028: 370000e9     	tbnz	w9, #0x0, 0x5044 <aw22xxx_cfg_recover_update_wait+0x190>
    502c: 52800029     	mov	w9, #0x1                // =1
    5030: aa1303e0     	mov	x0, x19
    5034: 39000109     	strb	w9, [x8]
		0000000000005034:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    5038: 97ffec88     	bl	0x258 <aw22xxx_init_cfg_update_array>
    503c: f94002b6     	ldr	x22, [x21]
		000000000000503c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    5040: b9430274     	ldr	w20, [x19, #0x300]
    5044: f8745ac1     	ldr	x1, [x22, w20, uxtw #3]
    5048: f9400662     	ldr	x2, [x19, #0x8]
    504c: 910003e0     	mov	x0, sp
    5050: 94000000     	bl	0x5050 <aw22xxx_cfg_recover_update_wait+0x19c>
		0000000000005050:  R_AARCH64_CALL26	request_firmware
    5054: 35000260     	cbnz	w0, 0x50a0 <aw22xxx_cfg_recover_update_wait+0x1ec>
    5058: f94003f4     	ldr	x20, [sp]
    505c: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		000000000000505c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    5060: 91000000     	add	x0, x0, #0x0
		0000000000005060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    5064: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		0000000000005064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1702
    5068: 91000021     	add	x1, x1, #0x0
		0000000000005068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1702
    506c: 94000000     	bl	0x506c <aw22xxx_cfg_recover_update_wait+0x1b8>
		000000000000506c:  R_AARCH64_CALL26	_printk
    5070: f94002a8     	ldr	x8, [x21]
		0000000000005070:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    5074: b9430269     	ldr	w9, [x19, #0x300]
    5078: f8697902     	ldr	x2, [x8, x9, lsl #3]
    507c: b50001f4     	cbnz	x20, 0x50b8 <aw22xxx_cfg_recover_update_wait+0x204>
    5080: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		0000000000005080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x647
    5084: 91000000     	add	x0, x0, #0x0
		0000000000005084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x647
    5088: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		0000000000005088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1702
    508c: 91000021     	add	x1, x1, #0x0
		000000000000508c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1702
    5090: 94000000     	bl	0x5090 <aw22xxx_cfg_recover_update_wait+0x1dc>
		0000000000005090:  R_AARCH64_CALL26	_printk
    5094: aa1f03e0     	mov	x0, xzr
    5098: 94000000     	bl	0x5098 <aw22xxx_cfg_recover_update_wait+0x1e4>
		0000000000005098:  R_AARCH64_CALL26	release_firmware
    509c: 14000027     	b	0x5138 <aw22xxx_cfg_recover_update_wait+0x284>
    50a0: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		00000000000050a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1359
    50a4: 91000000     	add	x0, x0, #0x0
		00000000000050a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1359
    50a8: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		00000000000050a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6a
    50ac: 91000021     	add	x1, x1, #0x0
		00000000000050ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6a
    50b0: 94000000     	bl	0x50b0 <aw22xxx_cfg_recover_update_wait+0x1fc>
		00000000000050b0:  R_AARCH64_CALL26	_printk
    50b4: 1400002c     	b	0x5164 <aw22xxx_cfg_recover_update_wait+0x2b0>
    50b8: f9400283     	ldr	x3, [x20]
    50bc: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		00000000000050bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31e
    50c0: 91000000     	add	x0, x0, #0x0
		00000000000050c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31e
    50c4: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		00000000000050c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1702
    50c8: 91000021     	add	x1, x1, #0x0
		00000000000050c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1702
    50cc: 94000000     	bl	0x50cc <aw22xxx_cfg_recover_update_wait+0x218>
		00000000000050cc:  R_AARCH64_CALL26	_printk
    50d0: f9400288     	ldr	x8, [x20]
    50d4: b5000628     	cbnz	x8, 0x5198 <aw22xxx_cfg_recover_update_wait+0x2e4>
    50d8: aa1403e0     	mov	x0, x20
    50dc: 94000000     	bl	0x50dc <aw22xxx_cfg_recover_update_wait+0x228>
		00000000000050dc:  R_AARCH64_CALL26	release_firmware
    50e0: b942f268     	ldr	w8, [x19, #0x2f0]
    50e4: 7100311f     	cmp	w8, #0xc
    50e8: 54000c88     	b.hi	0x5278 <aw22xxx_cfg_recover_update_wait+0x3c4>
    50ec: 90000009     	adrp	x9, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		00000000000050ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x140
    50f0: 91000129     	add	x9, x9, #0x0
		00000000000050f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x140
    50f4: aa1303e0     	mov	x0, x19
    50f8: 38686928     	ldrb	w8, [x9, x8]
    50fc: 528001e9     	mov	w9, #0xf                // =15
    5100: 52801fe1     	mov	w1, #0xff               // =255
    5104: 2a1f03e2     	mov	w2, wzr
    5108: 71003d1f     	cmp	w8, #0xf
    510c: 1a893114     	csel	w20, w8, w9, lo
    5110: 97ffecc3     	bl	0x41c <aw22xxx_i2c_write>
    5114: aa1303e0     	mov	x0, x19
    5118: 52800161     	mov	w1, #0xb                // =11
    511c: 2a1403e2     	mov	w2, w20
    5120: 97ffecbf     	bl	0x41c <aw22xxx_i2c_write>
    5124: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		0000000000005124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x850
    5128: 91000000     	add	x0, x0, #0x0
		0000000000005128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x850
    512c: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		000000000000512c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1702
    5130: 91000021     	add	x1, x1, #0x0
		0000000000005130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1702
    5134: 94000000     	bl	0x5134 <aw22xxx_cfg_recover_update_wait+0x280>
		0000000000005134:  R_AARCH64_CALL26	_printk
    5138: b942fa68     	ldr	w8, [x19, #0x2f8]
    513c: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		000000000000513c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdda
    5140: 91000000     	add	x0, x0, #0x0
		0000000000005140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdda
    5144: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		0000000000005144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6a
    5148: 91000021     	add	x1, x1, #0x0
		0000000000005148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6a
    514c: 528085a2     	mov	w2, #0x42d              // =1069
    5150: 11000503     	add	w3, w8, #0x1
    5154: b902fa63     	str	w3, [x19, #0x2f8]
    5158: 94000000     	bl	0x5158 <aw22xxx_cfg_recover_update_wait+0x2a4>
		0000000000005158:  R_AARCH64_CALL26	_printk
    515c: 52800280     	mov	w0, #0x14               // =20
    5160: 94000000     	bl	0x5160 <aw22xxx_cfg_recover_update_wait+0x2ac>
		0000000000005160:  R_AARCH64_CALL26	msleep
    5164: d5384108     	mrs	x8, SP_EL0
    5168: f9438908     	ldr	x8, [x8, #0x710]
    516c: f94007e9     	ldr	x9, [sp, #0x8]
    5170: eb09011f     	cmp	x8, x9
    5174: 54000801     	b.ne	0x5274 <aw22xxx_cfg_recover_update_wait+0x3c0>
    5178: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    517c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    5180: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    5184: a94267fa     	ldp	x26, x25, [sp, #0x20]
    5188: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    518c: 910183ff     	add	sp, sp, #0x60
    5190: d50323bf     	autiasp
    5194: d65f03c0     	ret
    5198: aa1f03fa     	mov	x26, xzr
    519c: 2a1f03f6     	mov	w22, wzr
    51a0: 910c3275     	add	x21, x19, #0x30c
    51a4: 52800057     	mov	w23, #0x2               // =2
    51a8: 52801578     	mov	w24, #0xab              // =171
    51ac: 52800219     	mov	w25, #0x10              // =16
    51b0: 14000009     	b	0x51d4 <aw22xxx_cfg_recover_update_wait+0x320>
    51b4: 39400502     	ldrb	w2, [x8, #0x1]
    51b8: aa1303e0     	mov	x0, x19
    51bc: 97ffec98     	bl	0x41c <aw22xxx_i2c_write>
    51c0: 93407efa     	sxtw	x26, w23
    51c4: f9400288     	ldr	x8, [x20]
    51c8: 11000af7     	add	w23, w23, #0x2
    51cc: eb1a011f     	cmp	x8, x26
    51d0: 54fff849     	b.ls	0x50d8 <aw22xxx_cfg_recover_update_wait+0x224>
    51d4: f9400688     	ldr	x8, [x20, #0x8]
    51d8: 8b1a0108     	add	x8, x8, x26
    51dc: 39400101     	ldrb	w1, [x8]
    51e0: 7103fc3f     	cmp	w1, #0xff
    51e4: 54000041     	b.ne	0x51ec <aw22xxx_cfg_recover_update_wait+0x338>
    51e8: 39400516     	ldrb	w22, [x8, #0x1]
    51ec: 394c1269     	ldrb	w9, [x19, #0x304]
    51f0: 7100053f     	cmp	w9, #0x1
    51f4: 54000200     	b.eq	0x5234 <aw22xxx_cfg_recover_update_wait+0x380>
    51f8: 710006df     	cmp	w22, #0x1
    51fc: 540001c1     	b.ne	0x5234 <aw22xxx_cfg_recover_update_wait+0x380>
    5200: 51004029     	sub	w9, w1, #0x10
    5204: 71006d3f     	cmp	w9, #0x1b
    5208: 54fffd62     	b.hs	0x51b4 <aw22xxx_cfg_recover_update_wait+0x300>
    520c: 12001d28     	and	w8, w9, #0xff
    5210: 1b187d08     	mul	w8, w8, w24
    5214: 53097d08     	lsr	w8, w8, #9
    5218: 0b08050a     	add	w10, w8, w8, lsl #1
    521c: b8685aa8     	ldr	w8, [x21, w8, uxtw #2]
    5220: 4b0a0129     	sub	w9, w9, w10
    5224: 531d1129     	ubfiz	w9, w9, #3, #5
    5228: 4b090329     	sub	w9, w25, w9
    522c: 1ac92502     	lsr	w2, w8, w9
    5230: 17ffffe2     	b	0x51b8 <aw22xxx_cfg_recover_update_wait+0x304>
    5234: 39400502     	ldrb	w2, [x8, #0x1]
    5238: aa1303e0     	mov	x0, x19
    523c: 97ffec78     	bl	0x41c <aw22xxx_i2c_write>
    5240: 35fffc16     	cbnz	w22, 0x51c0 <aw22xxx_cfg_recover_update_wait+0x30c>
    5244: f9400688     	ldr	x8, [x20, #0x8]
    5248: 8b1a0108     	add	x8, x8, x26
    524c: 39400109     	ldrb	w9, [x8]
    5250: 7100093f     	cmp	w9, #0x2
    5254: 54fffb61     	b.ne	0x51c0 <aw22xxx_cfg_recover_update_wait+0x30c>
    5258: 39400508     	ldrb	w8, [x8, #0x1]
    525c: 3607fb28     	tbz	w8, #0x0, 0x51c0 <aw22xxx_cfg_recover_update_wait+0x30c>
    5260: 5280fa00     	mov	w0, #0x7d0              // =2000
    5264: 52813881     	mov	w1, #0x9c4              // =2500
    5268: 52800042     	mov	w2, #0x2                // =2
    526c: 94000000     	bl	0x526c <aw22xxx_cfg_recover_update_wait+0x3b8>
		000000000000526c:  R_AARCH64_CALL26	usleep_range_state
    5270: 17ffffd4     	b	0x51c0 <aw22xxx_cfg_recover_update_wait+0x30c>
    5274: 94000000     	bl	0x5274 <aw22xxx_cfg_recover_update_wait+0x3c0>
		0000000000005274:  R_AARCH64_CALL26	__stack_chk_fail
    5278: d42aa240     	brk	#0x5512
