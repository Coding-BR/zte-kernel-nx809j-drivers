
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000050d4 <aw22xxx_multi_breath_pattern_store>:
    50d4: d503233f     	paciasp
    50d8: d10103ff     	sub	sp, sp, #0x40
    50dc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    50e0: f90013f5     	str	x21, [sp, #0x20]
    50e4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    50e8: 910043fd     	add	x29, sp, #0x10
    50ec: d5384109     	mrs	x9, SP_EL0
    50f0: aa0203e8     	mov	x8, x2
    50f4: 90000001     	adrp	x1, 0x5000 <aw22xxx_fw_show+0x14>
		00000000000050f4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x542
    50f8: 91000021     	add	x1, x1, #0x0
		00000000000050f8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x542
    50fc: f9438929     	ldr	x9, [x9, #0x710]
    5100: 910013e2     	add	x2, sp, #0x4
    5104: aa0303f3     	mov	x19, x3
    5108: f90007e9     	str	x9, [sp, #0x8]
    510c: f9404c15     	ldr	x21, [x0, #0x98]
    5110: aa0803e0     	mov	x0, x8
    5114: b90007ff     	str	wzr, [sp, #0x4]
    5118: 94000000     	bl	0x5118 <aw22xxx_multi_breath_pattern_store+0x44>
		0000000000005118:  R_AARCH64_CALL26	sscanf
    511c: 7100041f     	cmp	w0, #0x1
    5120: 54000741     	b.ne	0x5208 <aw22xxx_multi_breath_pattern_store+0x134>
    5124: b94007e8     	ldr	w8, [sp, #0x4]
    5128: d10042b4     	sub	x20, x21, #0x10
    512c: b902faa8     	str	w8, [x21, #0x2f8]
    5130: 340003a8     	cbz	w8, 0x51a4 <aw22xxx_multi_breath_pattern_store+0xd0>
    5134: 7100051f     	cmp	w8, #0x1
    5138: 54000681     	b.ne	0x5208 <aw22xxx_multi_breath_pattern_store+0x134>
    513c: 90000015     	adrp	x21, 0x5000 <aw22xxx_fw_show+0x14>
		000000000000513c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b8
    5140: 90000009     	adrp	x9, 0x5000 <aw22xxx_fw_show+0x14>
		0000000000005140:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b0
    5144: 394002a8     	ldrb	w8, [x21]
		0000000000005144:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    5148: b900013f     	str	wzr, [x9]
		0000000000005148:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b0
    514c: 370005e8     	tbnz	w8, #0x0, 0x5208 <aw22xxx_multi_breath_pattern_store+0x134>
    5150: 90000008     	adrp	x8, 0x5000 <aw22xxx_fw_show+0x14>
		0000000000005150:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b4
    5154: b9400108     	ldr	w8, [x8]
		0000000000005154:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
    5158: 34000588     	cbz	w8, 0x5208 <aw22xxx_multi_breath_pattern_store+0x134>
    515c: 90000000     	adrp	x0, 0x5000 <aw22xxx_fw_show+0x14>
		000000000000515c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_play
    5160: 91000000     	add	x0, x0, #0x0
		0000000000005160:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_play
    5164: 90000003     	adrp	x3, 0x5000 <aw22xxx_fw_show+0x14>
		0000000000005164:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb42
    5168: 91000063     	add	x3, x3, #0x0
		0000000000005168:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb42
    516c: 90000004     	adrp	x4, 0x5000 <aw22xxx_fw_show+0x14>
		000000000000516c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x896
    5170: 91000084     	add	x4, x4, #0x0
		0000000000005170:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x896
    5174: aa1403e1     	mov	x1, x20
    5178: 12800002     	mov	w2, #-0x1               // =-1
    517c: 94000000     	bl	0x517c <aw22xxx_multi_breath_pattern_store+0xa8>
		000000000000517c:  R_AARCH64_CALL26	kthread_create_on_node
    5180: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    5184: 540005a9     	b.ls	0x5238 <aw22xxx_multi_breath_pattern_store+0x164>
    5188: 90000008     	adrp	x8, 0x5000 <aw22xxx_fw_show+0x14>
		0000000000005188:  R_AARCH64_ADR_PREL_PG_HI21	cfg_update_kthread
    518c: 390002bf     	strb	wzr, [x21]
		000000000000518c:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    5190: f9000100     	str	x0, [x8]
		0000000000005190:  R_AARCH64_LDST64_ABS_LO12_NC	cfg_update_kthread
    5194: 90000000     	adrp	x0, 0x5000 <aw22xxx_fw_show+0x14>
		0000000000005194:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf7b
    5198: 91000000     	add	x0, x0, #0x0
		0000000000005198:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf7b
    519c: 94000000     	bl	0x519c <aw22xxx_multi_breath_pattern_store+0xc8>
		000000000000519c:  R_AARCH64_CALL26	_printk
    51a0: 1400001a     	b	0x5208 <aw22xxx_multi_breath_pattern_store+0x134>
    51a4: 90000008     	adrp	x8, 0x5000 <aw22xxx_fw_show+0x14>
		00000000000051a4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b8
    51a8: 9000000a     	adrp	x10, 0x5000 <aw22xxx_fw_show+0x14>
		00000000000051a8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b0
    51ac: 39400109     	ldrb	w9, [x8]
		00000000000051ac:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    51b0: b900015f     	str	wzr, [x10]
		00000000000051b0:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b0
    51b4: 9000000a     	adrp	x10, 0x5000 <aw22xxx_fw_show+0x14>
		00000000000051b4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b4
    51b8: b900015f     	str	wzr, [x10]
		00000000000051b8:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
    51bc: 7100053f     	cmp	w9, #0x1
    51c0: 54000041     	b.ne	0x51c8 <aw22xxx_multi_breath_pattern_store+0xf4>
    51c4: 3900011f     	strb	wzr, [x8]
		00000000000051c4:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    51c8: aa1403e0     	mov	x0, x20
    51cc: 52801fe1     	mov	w1, #0xff               // =255
    51d0: 2a1f03e2     	mov	w2, wzr
    51d4: 94000000     	bl	0x51d4 <aw22xxx_multi_breath_pattern_store+0x100>
		00000000000051d4:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51d8: aa1403e0     	mov	x0, x20
    51dc: 528000a1     	mov	w1, #0x5                // =5
    51e0: 2a1f03e2     	mov	w2, wzr
    51e4: 94000000     	bl	0x51e4 <aw22xxx_multi_breath_pattern_store+0x110>
		00000000000051e4:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51e8: aa1403e0     	mov	x0, x20
    51ec: 52800081     	mov	w1, #0x4                // =4
    51f0: 52800022     	mov	w2, #0x1                // =1
    51f4: 94000000     	bl	0x51f4 <aw22xxx_multi_breath_pattern_store+0x120>
		00000000000051f4:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51f8: aa1403e0     	mov	x0, x20
    51fc: 52800041     	mov	w1, #0x2                // =2
    5200: 2a1f03e2     	mov	w2, wzr
    5204: 94000000     	bl	0x5204 <aw22xxx_multi_breath_pattern_store+0x130>
		0000000000005204:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5208: d5384108     	mrs	x8, SP_EL0
    520c: f9438908     	ldr	x8, [x8, #0x710]
    5210: f94007e9     	ldr	x9, [sp, #0x8]
    5214: eb09011f     	cmp	x8, x9
    5218: 54000241     	b.ne	0x5260 <aw22xxx_multi_breath_pattern_store+0x18c>
    521c: aa1303e0     	mov	x0, x19
    5220: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    5224: f94013f5     	ldr	x21, [sp, #0x20]
    5228: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    522c: 910103ff     	add	sp, sp, #0x40
    5230: d50323bf     	autiasp
    5234: d65f03c0     	ret
    5238: aa0003f4     	mov	x20, x0
    523c: 94000000     	bl	0x523c <aw22xxx_multi_breath_pattern_store+0x168>
		000000000000523c:  R_AARCH64_CALL26	wake_up_process
    5240: 90000008     	adrp	x8, 0x5000 <aw22xxx_fw_show+0x14>
		0000000000005240:  R_AARCH64_ADR_PREL_PG_HI21	cfg_update_kthread
    5244: 52800029     	mov	w9, #0x1                // =1
    5248: 90000000     	adrp	x0, 0x5000 <aw22xxx_fw_show+0x14>
		0000000000005248:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1631
    524c: 91000000     	add	x0, x0, #0x0
		000000000000524c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1631
    5250: f9000114     	str	x20, [x8]
		0000000000005250:  R_AARCH64_LDST64_ABS_LO12_NC	cfg_update_kthread
    5254: 390002a9     	strb	w9, [x21]
		0000000000005254:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
    5258: 94000000     	bl	0x5258 <aw22xxx_multi_breath_pattern_store+0x184>
		0000000000005258:  R_AARCH64_CALL26	_printk
    525c: 17ffffeb     	b	0x5208 <aw22xxx_multi_breath_pattern_store+0x134>
    5260: 94000000     	bl	0x5260 <aw22xxx_multi_breath_pattern_store+0x18c>
		0000000000005260:  R_AARCH64_CALL26	__stack_chk_fail
