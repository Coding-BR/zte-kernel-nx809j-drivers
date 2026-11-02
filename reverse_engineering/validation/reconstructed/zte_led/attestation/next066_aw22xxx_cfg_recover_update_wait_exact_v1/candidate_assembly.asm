
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004f44 <aw22xxx_cfg_recover_update_wait>:
    4f44: d503233f     	paciasp
    4f48: d10183ff     	sub	sp, sp, #0x60
    4f4c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4f50: a90267fa     	stp	x26, x25, [sp, #0x20]
    4f54: a9035ff8     	stp	x24, x23, [sp, #0x30]
    4f58: a90457f6     	stp	x22, x21, [sp, #0x40]
    4f5c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4f60: 910043fd     	add	x29, sp, #0x10
    4f64: d5384108     	mrs	x8, SP_EL0
    4f68: aa0003f3     	mov	x19, x0
    4f6c: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_show+0x4c>
		0000000000004f6c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    4f70: 91000000     	add	x0, x0, #0x0
		0000000000004f70:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    4f74: f9438908     	ldr	x8, [x8, #0x710]
    4f78: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_show+0x4c>
		0000000000004f78:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    4f7c: 91000021     	add	x1, x1, #0x0
		0000000000004f7c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    4f80: f90007e8     	str	x8, [sp, #0x8]
    4f84: f90003ff     	str	xzr, [sp]
    4f88: 94000000     	bl	0x4f88 <aw22xxx_cfg_recover_update_wait+0x44>
		0000000000004f88:  R_AARCH64_CALL26	_printk
    4f8c: b9430262     	ldr	w2, [x19, #0x300]
    4f90: 121f7848     	and	w8, w2, #0xfffffffe
    4f94: 7100111f     	cmp	w8, #0x4
    4f98: 90000008     	adrp	x8, 0x4000 <aw22xxx_cfg_show+0x4c>
		0000000000004f98:  R_AARCH64_ADR_PREL_PG_HI21	lamp_effect
    4f9c: 54000061     	b.ne	0x4fa8 <aw22xxx_cfg_recover_update_wait+0x64>
    4fa0: b9000102     	str	w2, [x8]
		0000000000004fa0:  R_AARCH64_LDST32_ABS_LO12_NC	lamp_effect
    4fa4: 14000002     	b	0x4fac <aw22xxx_cfg_recover_update_wait+0x68>
    4fa8: b9400102     	ldr	w2, [x8]
		0000000000004fa8:  R_AARCH64_LDST32_ABS_LO12_NC	lamp_effect
    4fac: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_show+0x4c>
		0000000000004fac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x13f8
    4fb0: 91000000     	add	x0, x0, #0x0
		0000000000004fb0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x13f8
    4fb4: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_show+0x4c>
		0000000000004fb4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    4fb8: 91000021     	add	x1, x1, #0x0
		0000000000004fb8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    4fbc: 94000000     	bl	0x4fbc <aw22xxx_cfg_recover_update_wait+0x78>
		0000000000004fbc:  R_AARCH64_CALL26	_printk
    4fc0: b9430262     	ldr	w2, [x19, #0x300]
    4fc4: 121f7848     	and	w8, w2, #0xfffffffe
    4fc8: 7100091f     	cmp	w8, #0x2
    4fcc: 90000008     	adrp	x8, 0x4000 <aw22xxx_cfg_show+0x4c>
		0000000000004fcc:  R_AARCH64_ADR_PREL_PG_HI21	fan_effect
    4fd0: 54000061     	b.ne	0x4fdc <aw22xxx_cfg_recover_update_wait+0x98>
    4fd4: b9000102     	str	w2, [x8]
		0000000000004fd4:  R_AARCH64_LDST32_ABS_LO12_NC	fan_effect
    4fd8: 14000002     	b	0x4fe0 <aw22xxx_cfg_recover_update_wait+0x9c>
    4fdc: b9400102     	ldr	w2, [x8]
		0000000000004fdc:  R_AARCH64_LDST32_ABS_LO12_NC	fan_effect
    4fe0: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_show+0x4c>
		0000000000004fe0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb7f
    4fe4: 91000000     	add	x0, x0, #0x0
		0000000000004fe4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb7f
    4fe8: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_show+0x4c>
		0000000000004fe8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    4fec: 91000021     	add	x1, x1, #0x0
		0000000000004fec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    4ff0: 94000000     	bl	0x4ff0 <aw22xxx_cfg_recover_update_wait+0xac>
		0000000000004ff0:  R_AARCH64_CALL26	_printk
    4ff4: 90000008     	adrp	x8, 0x4000 <aw22xxx_cfg_show+0x4c>
		0000000000004ff4:  R_AARCH64_ADR_PREL_PG_HI21	g_cfgarray_count
    4ff8: b9430262     	ldr	w2, [x19, #0x300]
    4ffc: b9400108     	ldr	w8, [x8]
		0000000000004ffc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfgarray_count
    5000: 6b08005f     	cmp	w2, w8
    5004: 540002c2     	b.hs	0x505c <aw22xxx_cfg_recover_update_wait+0x118>
    5008: 90000015     	adrp	x21, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005008:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_cfg_name
    500c: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		000000000000500c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x18ba
    5010: 91000000     	add	x0, x0, #0x0
		0000000000005010:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x18ba
    5014: f94002a8     	ldr	x8, [x21]
		0000000000005014:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_cfg_name
    5018: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005018:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    501c: 91000021     	add	x1, x1, #0x0
		000000000000501c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    5020: f8627902     	ldr	x2, [x8, x2, lsl #3]
    5024: 94000000     	bl	0x5024 <aw22xxx_cfg_recover_update_wait+0xe0>
		0000000000005024:  R_AARCH64_CALL26	_printk
    5028: f94002b6     	ldr	x22, [x21]
		0000000000005028:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_cfg_name
    502c: b9430274     	ldr	w20, [x19, #0x300]
    5030: f8747ac0     	ldr	x0, [x22, x20, lsl #3]
    5034: 94000000     	bl	0x5034 <aw22xxx_cfg_recover_update_wait+0xf0>
		0000000000005034:  R_AARCH64_CALL26	strlen
    5038: f100141f     	cmp	x0, #0x5
    503c: 540001c2     	b.hs	0x5074 <aw22xxx_cfg_recover_update_wait+0x130>
    5040: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005040:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x33b
    5044: 91000000     	add	x0, x0, #0x0
		0000000000005044:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x33b
    5048: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005048:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    504c: 91000021     	add	x1, x1, #0x0
		000000000000504c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    5050: 2a1403e2     	mov	w2, w20
    5054: 94000000     	bl	0x5054 <aw22xxx_cfg_recover_update_wait+0x110>
		0000000000005054:  R_AARCH64_CALL26	_printk
    5058: 14000067     	b	0x51f4 <aw22xxx_cfg_recover_update_wait+0x2b0>
    505c: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		000000000000505c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1571
    5060: 91000000     	add	x0, x0, #0x0
		0000000000005060:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1571
    5064: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005064:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    5068: 91000021     	add	x1, x1, #0x0
		0000000000005068:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    506c: 94000000     	bl	0x506c <aw22xxx_cfg_recover_update_wait+0x128>
		000000000000506c:  R_AARCH64_CALL26	_printk
    5070: 14000061     	b	0x51f4 <aw22xxx_cfg_recover_update_wait+0x2b0>
    5074: 394bbe68     	ldrb	w8, [x19, #0x2ef]
    5078: 7100091f     	cmp	w8, #0x2
    507c: 54000121     	b.ne	0x50a0 <aw22xxx_cfg_recover_update_wait+0x15c>
    5080: 71000a9f     	cmp	w20, #0x2
    5084: 90000008     	adrp	x8, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005084:  R_AARCH64_ADR_PREL_PG_HI21	g_init_flg
    5088: 54000121     	b.ne	0x50ac <aw22xxx_cfg_recover_update_wait+0x168>
    508c: 39400109     	ldrb	w9, [x8]
		000000000000508c:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    5090: 390d227f     	strb	wzr, [x19, #0x348]
    5094: 36000149     	tbz	w9, #0x0, 0x50bc <aw22xxx_cfg_recover_update_wait+0x178>
    5098: 52800054     	mov	w20, #0x2               // =2
    509c: 1400000e     	b	0x50d4 <aw22xxx_cfg_recover_update_wait+0x190>
    50a0: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		00000000000050a0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6c2
    50a4: 91000000     	add	x0, x0, #0x0
		00000000000050a4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6c2
    50a8: 14000024     	b	0x5138 <aw22xxx_cfg_recover_update_wait+0x1f4>
    50ac: 39400109     	ldrb	w9, [x8]
		00000000000050ac:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    50b0: 5280002a     	mov	w10, #0x1               // =1
    50b4: 390d226a     	strb	w10, [x19, #0x348]
    50b8: 370000e9     	tbnz	w9, #0x0, 0x50d4 <aw22xxx_cfg_recover_update_wait+0x190>
    50bc: 52800029     	mov	w9, #0x1                // =1
    50c0: aa1303e0     	mov	x0, x19
    50c4: 39000109     	strb	w9, [x8]
		00000000000050c4:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    50c8: 97ffec88     	bl	0x2e8 <aw22xxx_fw_loaded+0x2e4>
		00000000000050c8:  R_AARCH64_CALL26	aw22xxx_init_cfg_update_array
    50cc: f94002b6     	ldr	x22, [x21]
		00000000000050cc:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_cfg_name
    50d0: b9430274     	ldr	w20, [x19, #0x300]
    50d4: f8745ac1     	ldr	x1, [x22, w20, uxtw #3]
    50d8: f9400662     	ldr	x2, [x19, #0x8]
    50dc: 910003e0     	mov	x0, sp
    50e0: 94000000     	bl	0x50e0 <aw22xxx_cfg_recover_update_wait+0x19c>
		00000000000050e0:  R_AARCH64_CALL26	request_firmware
    50e4: 35000260     	cbnz	w0, 0x5130 <aw22xxx_cfg_recover_update_wait+0x1ec>
    50e8: f94003f4     	ldr	x20, [sp]
    50ec: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		00000000000050ec:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    50f0: 91000000     	add	x0, x0, #0x0
		00000000000050f0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    50f4: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		00000000000050f4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1702
    50f8: 91000021     	add	x1, x1, #0x0
		00000000000050f8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1702
    50fc: 94000000     	bl	0x50fc <aw22xxx_cfg_recover_update_wait+0x1b8>
		00000000000050fc:  R_AARCH64_CALL26	_printk
    5100: f94002a8     	ldr	x8, [x21]
		0000000000005100:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_cfg_name
    5104: b9430269     	ldr	w9, [x19, #0x300]
    5108: f8697902     	ldr	x2, [x8, x9, lsl #3]
    510c: b50001f4     	cbnz	x20, 0x5148 <aw22xxx_cfg_recover_update_wait+0x204>
    5110: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005110:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x647
    5114: 91000000     	add	x0, x0, #0x0
		0000000000005114:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x647
    5118: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005118:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1702
    511c: 91000021     	add	x1, x1, #0x0
		000000000000511c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1702
    5120: 94000000     	bl	0x5120 <aw22xxx_cfg_recover_update_wait+0x1dc>
		0000000000005120:  R_AARCH64_CALL26	_printk
    5124: aa1f03e0     	mov	x0, xzr
    5128: 94000000     	bl	0x5128 <aw22xxx_cfg_recover_update_wait+0x1e4>
		0000000000005128:  R_AARCH64_CALL26	release_firmware
    512c: 14000027     	b	0x51c8 <aw22xxx_cfg_recover_update_wait+0x284>
    5130: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005130:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1359
    5134: 91000000     	add	x0, x0, #0x0
		0000000000005134:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1359
    5138: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005138:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    513c: 91000021     	add	x1, x1, #0x0
		000000000000513c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    5140: 94000000     	bl	0x5140 <aw22xxx_cfg_recover_update_wait+0x1fc>
		0000000000005140:  R_AARCH64_CALL26	_printk
    5144: 1400002c     	b	0x51f4 <aw22xxx_cfg_recover_update_wait+0x2b0>
    5148: f9400283     	ldr	x3, [x20]
    514c: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		000000000000514c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x31e
    5150: 91000000     	add	x0, x0, #0x0
		0000000000005150:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x31e
    5154: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		0000000000005154:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1702
    5158: 91000021     	add	x1, x1, #0x0
		0000000000005158:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1702
    515c: 94000000     	bl	0x515c <aw22xxx_cfg_recover_update_wait+0x218>
		000000000000515c:  R_AARCH64_CALL26	_printk
    5160: f9400288     	ldr	x8, [x20]
    5164: b5000628     	cbnz	x8, 0x5228 <aw22xxx_cfg_recover_update_wait+0x2e4>
    5168: aa1403e0     	mov	x0, x20
    516c: 94000000     	bl	0x516c <aw22xxx_cfg_recover_update_wait+0x228>
		000000000000516c:  R_AARCH64_CALL26	release_firmware
    5170: b942f268     	ldr	w8, [x19, #0x2f0]
    5174: 7100311f     	cmp	w8, #0xc
    5178: 54000c88     	b.hi	0x5308 <aw22xxx_cfg_recover_update_wait+0x3c4>
    517c: 90000009     	adrp	x9, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		000000000000517c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_imax_code
    5180: 91000129     	add	x9, x9, #0x0
		0000000000005180:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_imax_code
    5184: aa1303e0     	mov	x0, x19
    5188: 38686928     	ldrb	w8, [x9, x8]
    518c: 528001e9     	mov	w9, #0xf                // =15
    5190: 52801fe1     	mov	w1, #0xff               // =255
    5194: 2a1f03e2     	mov	w2, wzr
    5198: 71003d1f     	cmp	w8, #0xf
    519c: 1a893114     	csel	w20, w8, w9, lo
    51a0: 97ffecc3     	bl	0x4ac <aw22xxx_fw_loaded+0x4a8>
		00000000000051a0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51a4: aa1303e0     	mov	x0, x19
    51a8: 52800161     	mov	w1, #0xb                // =11
    51ac: 2a1403e2     	mov	w2, w20
    51b0: 97ffecbf     	bl	0x4ac <aw22xxx_fw_loaded+0x4a8>
		00000000000051b0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51b4: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		00000000000051b4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x850
    51b8: 91000000     	add	x0, x0, #0x0
		00000000000051b8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x850
    51bc: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		00000000000051bc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1702
    51c0: 91000021     	add	x1, x1, #0x0
		00000000000051c0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1702
    51c4: 94000000     	bl	0x51c4 <aw22xxx_cfg_recover_update_wait+0x280>
		00000000000051c4:  R_AARCH64_CALL26	_printk
    51c8: b942fa68     	ldr	w8, [x19, #0x2f8]
    51cc: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		00000000000051cc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xdda
    51d0: 91000000     	add	x0, x0, #0x0
		00000000000051d0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xdda
    51d4: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xbc>
		00000000000051d4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    51d8: 91000021     	add	x1, x1, #0x0
		00000000000051d8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    51dc: 528085a2     	mov	w2, #0x42d              // =1069
    51e0: 11000503     	add	w3, w8, #0x1
    51e4: b902fa63     	str	w3, [x19, #0x2f8]
    51e8: 94000000     	bl	0x51e8 <aw22xxx_cfg_recover_update_wait+0x2a4>
		00000000000051e8:  R_AARCH64_CALL26	_printk
    51ec: 52800280     	mov	w0, #0x14               // =20
    51f0: 94000000     	bl	0x51f0 <aw22xxx_cfg_recover_update_wait+0x2ac>
		00000000000051f0:  R_AARCH64_CALL26	msleep
    51f4: d5384108     	mrs	x8, SP_EL0
    51f8: f9438908     	ldr	x8, [x8, #0x710]
    51fc: f94007e9     	ldr	x9, [sp, #0x8]
    5200: eb09011f     	cmp	x8, x9
    5204: 54000801     	b.ne	0x5304 <aw22xxx_cfg_recover_update_wait+0x3c0>
    5208: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    520c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    5210: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    5214: a94267fa     	ldp	x26, x25, [sp, #0x20]
    5218: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    521c: 910183ff     	add	sp, sp, #0x60
    5220: d50323bf     	autiasp
    5224: d65f03c0     	ret
    5228: aa1f03fa     	mov	x26, xzr
    522c: 2a1f03f6     	mov	w22, wzr
    5230: 910c3275     	add	x21, x19, #0x30c
    5234: 52800057     	mov	w23, #0x2               // =2
    5238: 52801578     	mov	w24, #0xab              // =171
    523c: 52800219     	mov	w25, #0x10              // =16
    5240: 14000009     	b	0x5264 <aw22xxx_cfg_recover_update_wait+0x320>
    5244: 39400502     	ldrb	w2, [x8, #0x1]
    5248: aa1303e0     	mov	x0, x19
    524c: 97ffec98     	bl	0x4ac <aw22xxx_fw_loaded+0x4a8>
		000000000000524c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5250: 93407efa     	sxtw	x26, w23
    5254: f9400288     	ldr	x8, [x20]
    5258: 11000af7     	add	w23, w23, #0x2
    525c: eb1a011f     	cmp	x8, x26
    5260: 54fff849     	b.ls	0x5168 <aw22xxx_cfg_recover_update_wait+0x224>
    5264: f9400688     	ldr	x8, [x20, #0x8]
    5268: 8b1a0108     	add	x8, x8, x26
    526c: 39400101     	ldrb	w1, [x8]
    5270: 7103fc3f     	cmp	w1, #0xff
    5274: 54000041     	b.ne	0x527c <aw22xxx_cfg_recover_update_wait+0x338>
    5278: 39400516     	ldrb	w22, [x8, #0x1]
    527c: 394c1269     	ldrb	w9, [x19, #0x304]
    5280: 7100053f     	cmp	w9, #0x1
    5284: 54000200     	b.eq	0x52c4 <aw22xxx_cfg_recover_update_wait+0x380>
    5288: 710006df     	cmp	w22, #0x1
    528c: 540001c1     	b.ne	0x52c4 <aw22xxx_cfg_recover_update_wait+0x380>
    5290: 51004029     	sub	w9, w1, #0x10
    5294: 71006d3f     	cmp	w9, #0x1b
    5298: 54fffd62     	b.hs	0x5244 <aw22xxx_cfg_recover_update_wait+0x300>
    529c: 12001d28     	and	w8, w9, #0xff
    52a0: 1b187d08     	mul	w8, w8, w24
    52a4: 53097d08     	lsr	w8, w8, #9
    52a8: 0b08050a     	add	w10, w8, w8, lsl #1
    52ac: b8685aa8     	ldr	w8, [x21, w8, uxtw #2]
    52b0: 4b0a0129     	sub	w9, w9, w10
    52b4: 531d1129     	ubfiz	w9, w9, #3, #5
    52b8: 4b090329     	sub	w9, w25, w9
    52bc: 1ac92502     	lsr	w2, w8, w9
    52c0: 17ffffe2     	b	0x5248 <aw22xxx_cfg_recover_update_wait+0x304>
    52c4: 39400502     	ldrb	w2, [x8, #0x1]
    52c8: aa1303e0     	mov	x0, x19
    52cc: 97ffec78     	bl	0x4ac <aw22xxx_fw_loaded+0x4a8>
		00000000000052cc:  R_AARCH64_CALL26	aw22xxx_i2c_write
    52d0: 35fffc16     	cbnz	w22, 0x5250 <aw22xxx_cfg_recover_update_wait+0x30c>
    52d4: f9400688     	ldr	x8, [x20, #0x8]
    52d8: 8b1a0108     	add	x8, x8, x26
    52dc: 39400109     	ldrb	w9, [x8]
    52e0: 7100093f     	cmp	w9, #0x2
    52e4: 54fffb61     	b.ne	0x5250 <aw22xxx_cfg_recover_update_wait+0x30c>
    52e8: 39400508     	ldrb	w8, [x8, #0x1]
    52ec: 3607fb28     	tbz	w8, #0x0, 0x5250 <aw22xxx_cfg_recover_update_wait+0x30c>
    52f0: 5280fa00     	mov	w0, #0x7d0              // =2000
    52f4: 52813881     	mov	w1, #0x9c4              // =2500
    52f8: 52800042     	mov	w2, #0x2                // =2
    52fc: 94000000     	bl	0x52fc <aw22xxx_cfg_recover_update_wait+0x3b8>
		00000000000052fc:  R_AARCH64_CALL26	usleep_range_state
    5300: 17ffffd4     	b	0x5250 <aw22xxx_cfg_recover_update_wait+0x30c>
    5304: 94000000     	bl	0x5304 <aw22xxx_cfg_recover_update_wait+0x3c0>
		0000000000005304:  R_AARCH64_CALL26	__stack_chk_fail
    5308: d42aa240     	brk	#0x5512
