
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004f58 <aw22xxx_cfg_recover_update_wait>:
    4f58: d503233f     	paciasp
    4f5c: d10183ff     	sub	sp, sp, #0x60
    4f60: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4f64: a90267fa     	stp	x26, x25, [sp, #0x20]
    4f68: a9035ff8     	stp	x24, x23, [sp, #0x30]
    4f6c: a90457f6     	stp	x22, x21, [sp, #0x40]
    4f70: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4f74: 910043fd     	add	x29, sp, #0x10
    4f78: d5384108     	mrs	x8, SP_EL0
    4f7c: aa0003f3     	mov	x19, x0
    4f80: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004f80:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    4f84: 91000000     	add	x0, x0, #0x0
		0000000000004f84:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    4f88: f9438908     	ldr	x8, [x8, #0x710]
    4f8c: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004f8c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    4f90: 91000021     	add	x1, x1, #0x0
		0000000000004f90:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    4f94: f90007e8     	str	x8, [sp, #0x8]
    4f98: f90003ff     	str	xzr, [sp]
    4f9c: 94000000     	bl	0x4f9c <aw22xxx_cfg_recover_update_wait+0x44>
		0000000000004f9c:  R_AARCH64_CALL26	_printk
    4fa0: b9430262     	ldr	w2, [x19, #0x300]
    4fa4: 121f7848     	and	w8, w2, #0xfffffffe
    4fa8: 7100111f     	cmp	w8, #0x4
    4fac: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004fac:  R_AARCH64_ADR_PREL_PG_HI21	lamp_effect
    4fb0: 54000061     	b.ne	0x4fbc <aw22xxx_cfg_recover_update_wait+0x64>
    4fb4: b9000102     	str	w2, [x8]
		0000000000004fb4:  R_AARCH64_LDST32_ABS_LO12_NC	lamp_effect
    4fb8: 14000002     	b	0x4fc0 <aw22xxx_cfg_recover_update_wait+0x68>
    4fbc: b9400102     	ldr	w2, [x8]
		0000000000004fbc:  R_AARCH64_LDST32_ABS_LO12_NC	lamp_effect
    4fc0: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004fc0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x13f8
    4fc4: 91000000     	add	x0, x0, #0x0
		0000000000004fc4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x13f8
    4fc8: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004fc8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    4fcc: 91000021     	add	x1, x1, #0x0
		0000000000004fcc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    4fd0: 94000000     	bl	0x4fd0 <aw22xxx_cfg_recover_update_wait+0x78>
		0000000000004fd0:  R_AARCH64_CALL26	_printk
    4fd4: b9430262     	ldr	w2, [x19, #0x300]
    4fd8: 121f7848     	and	w8, w2, #0xfffffffe
    4fdc: 7100091f     	cmp	w8, #0x2
    4fe0: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004fe0:  R_AARCH64_ADR_PREL_PG_HI21	fan_effect
    4fe4: 54000061     	b.ne	0x4ff0 <aw22xxx_cfg_recover_update_wait+0x98>
    4fe8: b9000102     	str	w2, [x8]
		0000000000004fe8:  R_AARCH64_LDST32_ABS_LO12_NC	fan_effect
    4fec: 14000002     	b	0x4ff4 <aw22xxx_cfg_recover_update_wait+0x9c>
    4ff0: b9400102     	ldr	w2, [x8]
		0000000000004ff0:  R_AARCH64_LDST32_ABS_LO12_NC	fan_effect
    4ff4: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004ff4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb7f
    4ff8: 91000000     	add	x0, x0, #0x0
		0000000000004ff8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb7f
    4ffc: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004ffc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    5000: 91000021     	add	x1, x1, #0x0
		0000000000005000:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    5004: 94000000     	bl	0x5004 <aw22xxx_cfg_recover_update_wait+0xac>
		0000000000005004:  R_AARCH64_CALL26	_printk
    5008: 90000008     	adrp	x8, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005008:  R_AARCH64_ADR_PREL_PG_HI21	g_cfgarray_count
    500c: b9430262     	ldr	w2, [x19, #0x300]
    5010: b9400108     	ldr	w8, [x8]
		0000000000005010:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfgarray_count
    5014: 6b08005f     	cmp	w2, w8
    5018: 540002c2     	b.hs	0x5070 <aw22xxx_cfg_recover_update_wait+0x118>
    501c: 90000015     	adrp	x21, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		000000000000501c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_cfg_name
    5020: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005020:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x18ba
    5024: 91000000     	add	x0, x0, #0x0
		0000000000005024:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x18ba
    5028: f94002a8     	ldr	x8, [x21]
		0000000000005028:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_cfg_name
    502c: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		000000000000502c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    5030: 91000021     	add	x1, x1, #0x0
		0000000000005030:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    5034: f8627902     	ldr	x2, [x8, x2, lsl #3]
    5038: 94000000     	bl	0x5038 <aw22xxx_cfg_recover_update_wait+0xe0>
		0000000000005038:  R_AARCH64_CALL26	_printk
    503c: f94002b6     	ldr	x22, [x21]
		000000000000503c:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_cfg_name
    5040: b9430274     	ldr	w20, [x19, #0x300]
    5044: f8747ac0     	ldr	x0, [x22, x20, lsl #3]
    5048: 94000000     	bl	0x5048 <aw22xxx_cfg_recover_update_wait+0xf0>
		0000000000005048:  R_AARCH64_CALL26	strlen
    504c: f100141f     	cmp	x0, #0x5
    5050: 540001c2     	b.hs	0x5088 <aw22xxx_cfg_recover_update_wait+0x130>
    5054: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005054:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x33b
    5058: 91000000     	add	x0, x0, #0x0
		0000000000005058:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x33b
    505c: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		000000000000505c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    5060: 91000021     	add	x1, x1, #0x0
		0000000000005060:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    5064: 2a1403e2     	mov	w2, w20
    5068: 94000000     	bl	0x5068 <aw22xxx_cfg_recover_update_wait+0x110>
		0000000000005068:  R_AARCH64_CALL26	_printk
    506c: 14000067     	b	0x5208 <aw22xxx_cfg_recover_update_wait+0x2b0>
    5070: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005070:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1571
    5074: 91000000     	add	x0, x0, #0x0
		0000000000005074:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1571
    5078: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005078:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    507c: 91000021     	add	x1, x1, #0x0
		000000000000507c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    5080: 94000000     	bl	0x5080 <aw22xxx_cfg_recover_update_wait+0x128>
		0000000000005080:  R_AARCH64_CALL26	_printk
    5084: 14000061     	b	0x5208 <aw22xxx_cfg_recover_update_wait+0x2b0>
    5088: 394bbe68     	ldrb	w8, [x19, #0x2ef]
    508c: 7100091f     	cmp	w8, #0x2
    5090: 54000121     	b.ne	0x50b4 <aw22xxx_cfg_recover_update_wait+0x15c>
    5094: 71000a9f     	cmp	w20, #0x2
    5098: 90000008     	adrp	x8, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005098:  R_AARCH64_ADR_PREL_PG_HI21	g_init_flg
    509c: 54000121     	b.ne	0x50c0 <aw22xxx_cfg_recover_update_wait+0x168>
    50a0: 39400109     	ldrb	w9, [x8]
		00000000000050a0:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    50a4: 390d227f     	strb	wzr, [x19, #0x348]
    50a8: 36000149     	tbz	w9, #0x0, 0x50d0 <aw22xxx_cfg_recover_update_wait+0x178>
    50ac: 52800054     	mov	w20, #0x2               // =2
    50b0: 1400000e     	b	0x50e8 <aw22xxx_cfg_recover_update_wait+0x190>
    50b4: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		00000000000050b4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6c2
    50b8: 91000000     	add	x0, x0, #0x0
		00000000000050b8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6c2
    50bc: 14000024     	b	0x514c <aw22xxx_cfg_recover_update_wait+0x1f4>
    50c0: 39400109     	ldrb	w9, [x8]
		00000000000050c0:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    50c4: 5280002a     	mov	w10, #0x1               // =1
    50c8: 390d226a     	strb	w10, [x19, #0x348]
    50cc: 370000e9     	tbnz	w9, #0x0, 0x50e8 <aw22xxx_cfg_recover_update_wait+0x190>
    50d0: 52800029     	mov	w9, #0x1                // =1
    50d4: aa1303e0     	mov	x0, x19
    50d8: 39000109     	strb	w9, [x8]
		00000000000050d8:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    50dc: 97ffec88     	bl	0x2fc <aw22xxx_fw_loaded+0x2f8>
		00000000000050dc:  R_AARCH64_CALL26	aw22xxx_init_cfg_update_array
    50e0: f94002b6     	ldr	x22, [x21]
		00000000000050e0:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_cfg_name
    50e4: b9430274     	ldr	w20, [x19, #0x300]
    50e8: f8745ac1     	ldr	x1, [x22, w20, uxtw #3]
    50ec: f9400662     	ldr	x2, [x19, #0x8]
    50f0: 910003e0     	mov	x0, sp
    50f4: 94000000     	bl	0x50f4 <aw22xxx_cfg_recover_update_wait+0x19c>
		00000000000050f4:  R_AARCH64_CALL26	request_firmware
    50f8: 35000260     	cbnz	w0, 0x5144 <aw22xxx_cfg_recover_update_wait+0x1ec>
    50fc: f94003f4     	ldr	x20, [sp]
    5100: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005100:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    5104: 91000000     	add	x0, x0, #0x0
		0000000000005104:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    5108: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005108:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1702
    510c: 91000021     	add	x1, x1, #0x0
		000000000000510c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1702
    5110: 94000000     	bl	0x5110 <aw22xxx_cfg_recover_update_wait+0x1b8>
		0000000000005110:  R_AARCH64_CALL26	_printk
    5114: f94002a8     	ldr	x8, [x21]
		0000000000005114:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_cfg_name
    5118: b9430269     	ldr	w9, [x19, #0x300]
    511c: f8697902     	ldr	x2, [x8, x9, lsl #3]
    5120: b50001f4     	cbnz	x20, 0x515c <aw22xxx_cfg_recover_update_wait+0x204>
    5124: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005124:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x647
    5128: 91000000     	add	x0, x0, #0x0
		0000000000005128:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x647
    512c: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		000000000000512c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1702
    5130: 91000021     	add	x1, x1, #0x0
		0000000000005130:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1702
    5134: 94000000     	bl	0x5134 <aw22xxx_cfg_recover_update_wait+0x1dc>
		0000000000005134:  R_AARCH64_CALL26	_printk
    5138: aa1f03e0     	mov	x0, xzr
    513c: 94000000     	bl	0x513c <aw22xxx_cfg_recover_update_wait+0x1e4>
		000000000000513c:  R_AARCH64_CALL26	release_firmware
    5140: 14000027     	b	0x51dc <aw22xxx_cfg_recover_update_wait+0x284>
    5144: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005144:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1359
    5148: 91000000     	add	x0, x0, #0x0
		0000000000005148:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1359
    514c: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		000000000000514c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    5150: 91000021     	add	x1, x1, #0x0
		0000000000005150:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    5154: 94000000     	bl	0x5154 <aw22xxx_cfg_recover_update_wait+0x1fc>
		0000000000005154:  R_AARCH64_CALL26	_printk
    5158: 1400002c     	b	0x5208 <aw22xxx_cfg_recover_update_wait+0x2b0>
    515c: f9400283     	ldr	x3, [x20]
    5160: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005160:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x31e
    5164: 91000000     	add	x0, x0, #0x0
		0000000000005164:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x31e
    5168: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005168:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1702
    516c: 91000021     	add	x1, x1, #0x0
		000000000000516c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1702
    5170: 94000000     	bl	0x5170 <aw22xxx_cfg_recover_update_wait+0x218>
		0000000000005170:  R_AARCH64_CALL26	_printk
    5174: f9400288     	ldr	x8, [x20]
    5178: b5000628     	cbnz	x8, 0x523c <aw22xxx_cfg_recover_update_wait+0x2e4>
    517c: aa1403e0     	mov	x0, x20
    5180: 94000000     	bl	0x5180 <aw22xxx_cfg_recover_update_wait+0x228>
		0000000000005180:  R_AARCH64_CALL26	release_firmware
    5184: b942f268     	ldr	w8, [x19, #0x2f0]
    5188: 7100311f     	cmp	w8, #0xc
    518c: 54000c88     	b.hi	0x531c <aw22xxx_cfg_recover_update_wait+0x3c4>
    5190: 90000009     	adrp	x9, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005190:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_imax_code
    5194: 91000129     	add	x9, x9, #0x0
		0000000000005194:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_imax_code
    5198: aa1303e0     	mov	x0, x19
    519c: 38686928     	ldrb	w8, [x9, x8]
    51a0: 528001e9     	mov	w9, #0xf                // =15
    51a4: 52801fe1     	mov	w1, #0xff               // =255
    51a8: 2a1f03e2     	mov	w2, wzr
    51ac: 71003d1f     	cmp	w8, #0xf
    51b0: 1a893114     	csel	w20, w8, w9, lo
    51b4: 97ffecc3     	bl	0x4c0 <aw22xxx_fw_loaded+0x4bc>
		00000000000051b4:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51b8: aa1303e0     	mov	x0, x19
    51bc: 52800161     	mov	w1, #0xb                // =11
    51c0: 2a1403e2     	mov	w2, w20
    51c4: 97ffecbf     	bl	0x4c0 <aw22xxx_fw_loaded+0x4bc>
		00000000000051c4:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51c8: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		00000000000051c8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x850
    51cc: 91000000     	add	x0, x0, #0x0
		00000000000051cc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x850
    51d0: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		00000000000051d0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1702
    51d4: 91000021     	add	x1, x1, #0x0
		00000000000051d4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1702
    51d8: 94000000     	bl	0x51d8 <aw22xxx_cfg_recover_update_wait+0x280>
		00000000000051d8:  R_AARCH64_CALL26	_printk
    51dc: b942fa68     	ldr	w8, [x19, #0x2f8]
    51e0: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		00000000000051e0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xdda
    51e4: 91000000     	add	x0, x0, #0x0
		00000000000051e4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xdda
    51e8: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		00000000000051e8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc6a
    51ec: 91000021     	add	x1, x1, #0x0
		00000000000051ec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc6a
    51f0: 528085a2     	mov	w2, #0x42d              // =1069
    51f4: 11000503     	add	w3, w8, #0x1
    51f8: b902fa63     	str	w3, [x19, #0x2f8]
    51fc: 94000000     	bl	0x51fc <aw22xxx_cfg_recover_update_wait+0x2a4>
		00000000000051fc:  R_AARCH64_CALL26	_printk
    5200: 52800280     	mov	w0, #0x14               // =20
    5204: 94000000     	bl	0x5204 <aw22xxx_cfg_recover_update_wait+0x2ac>
		0000000000005204:  R_AARCH64_CALL26	msleep
    5208: d5384108     	mrs	x8, SP_EL0
    520c: f9438908     	ldr	x8, [x8, #0x710]
    5210: f94007e9     	ldr	x9, [sp, #0x8]
    5214: eb09011f     	cmp	x8, x9
    5218: 54000801     	b.ne	0x5318 <aw22xxx_cfg_recover_update_wait+0x3c0>
    521c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    5220: a94457f6     	ldp	x22, x21, [sp, #0x40]
    5224: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    5228: a94267fa     	ldp	x26, x25, [sp, #0x20]
    522c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5230: 910183ff     	add	sp, sp, #0x60
    5234: d50323bf     	autiasp
    5238: d65f03c0     	ret
    523c: aa1f03fa     	mov	x26, xzr
    5240: 2a1f03f6     	mov	w22, wzr
    5244: 910c3275     	add	x21, x19, #0x30c
    5248: 52800057     	mov	w23, #0x2               // =2
    524c: 52801578     	mov	w24, #0xab              // =171
    5250: 52800219     	mov	w25, #0x10              // =16
    5254: 14000009     	b	0x5278 <aw22xxx_cfg_recover_update_wait+0x320>
    5258: 39400502     	ldrb	w2, [x8, #0x1]
    525c: aa1303e0     	mov	x0, x19
    5260: 97ffec98     	bl	0x4c0 <aw22xxx_fw_loaded+0x4bc>
		0000000000005260:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5264: 93407efa     	sxtw	x26, w23
    5268: f9400288     	ldr	x8, [x20]
    526c: 11000af7     	add	w23, w23, #0x2
    5270: eb1a011f     	cmp	x8, x26
    5274: 54fff849     	b.ls	0x517c <aw22xxx_cfg_recover_update_wait+0x224>
    5278: f9400688     	ldr	x8, [x20, #0x8]
    527c: 8b1a0108     	add	x8, x8, x26
    5280: 39400101     	ldrb	w1, [x8]
    5284: 7103fc3f     	cmp	w1, #0xff
    5288: 54000041     	b.ne	0x5290 <aw22xxx_cfg_recover_update_wait+0x338>
    528c: 39400516     	ldrb	w22, [x8, #0x1]
    5290: 394c1269     	ldrb	w9, [x19, #0x304]
    5294: 7100053f     	cmp	w9, #0x1
    5298: 54000200     	b.eq	0x52d8 <aw22xxx_cfg_recover_update_wait+0x380>
    529c: 710006df     	cmp	w22, #0x1
    52a0: 540001c1     	b.ne	0x52d8 <aw22xxx_cfg_recover_update_wait+0x380>
    52a4: 51004029     	sub	w9, w1, #0x10
    52a8: 71006d3f     	cmp	w9, #0x1b
    52ac: 54fffd62     	b.hs	0x5258 <aw22xxx_cfg_recover_update_wait+0x300>
    52b0: 12001d28     	and	w8, w9, #0xff
    52b4: 1b187d08     	mul	w8, w8, w24
    52b8: 53097d08     	lsr	w8, w8, #9
    52bc: 0b08050a     	add	w10, w8, w8, lsl #1
    52c0: b8685aa8     	ldr	w8, [x21, w8, uxtw #2]
    52c4: 4b0a0129     	sub	w9, w9, w10
    52c8: 531d1129     	ubfiz	w9, w9, #3, #5
    52cc: 4b090329     	sub	w9, w25, w9
    52d0: 1ac92502     	lsr	w2, w8, w9
    52d4: 17ffffe2     	b	0x525c <aw22xxx_cfg_recover_update_wait+0x304>
    52d8: 39400502     	ldrb	w2, [x8, #0x1]
    52dc: aa1303e0     	mov	x0, x19
    52e0: 97ffec78     	bl	0x4c0 <aw22xxx_fw_loaded+0x4bc>
		00000000000052e0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    52e4: 35fffc16     	cbnz	w22, 0x5264 <aw22xxx_cfg_recover_update_wait+0x30c>
    52e8: f9400688     	ldr	x8, [x20, #0x8]
    52ec: 8b1a0108     	add	x8, x8, x26
    52f0: 39400109     	ldrb	w9, [x8]
    52f4: 7100093f     	cmp	w9, #0x2
    52f8: 54fffb61     	b.ne	0x5264 <aw22xxx_cfg_recover_update_wait+0x30c>
    52fc: 39400508     	ldrb	w8, [x8, #0x1]
    5300: 3607fb28     	tbz	w8, #0x0, 0x5264 <aw22xxx_cfg_recover_update_wait+0x30c>
    5304: 5280fa00     	mov	w0, #0x7d0              // =2000
    5308: 52813881     	mov	w1, #0x9c4              // =2500
    530c: 52800042     	mov	w2, #0x2                // =2
    5310: 94000000     	bl	0x5310 <aw22xxx_cfg_recover_update_wait+0x3b8>
		0000000000005310:  R_AARCH64_CALL26	usleep_range_state
    5314: 17ffffd4     	b	0x5264 <aw22xxx_cfg_recover_update_wait+0x30c>
    5318: 94000000     	bl	0x5318 <aw22xxx_cfg_recover_update_wait+0x3c0>
		0000000000005318:  R_AARCH64_CALL26	__stack_chk_fail
    531c: d42aa240     	brk	#0x5512
