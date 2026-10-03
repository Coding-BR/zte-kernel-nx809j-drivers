
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002f7c <aw22xxx_play>:
    2f7c: d503233f     	paciasp
    2f80: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    2f84: a9016ffc     	stp	x28, x27, [sp, #0x10]
    2f88: a90267fa     	stp	x26, x25, [sp, #0x20]
    2f8c: a9035ff8     	stp	x24, x23, [sp, #0x30]
    2f90: a90457f6     	stp	x22, x21, [sp, #0x40]
    2f94: a9054ff4     	stp	x20, x19, [sp, #0x50]
    2f98: 910003fd     	mov	x29, sp
    2f9c: aa0003f3     	mov	x19, x0
    2fa0: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa94
    2fa4: 91000000     	add	x0, x0, #0x0
		0000000000002fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa94
    2fa8: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85e
    2fac: 91000021     	add	x1, x1, #0x0
		0000000000002fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85e
    2fb0: 94000000     	bl	0x2fb0 <aw22xxx_play+0x34>
		0000000000002fb0:  R_AARCH64_CALL26	_printk
    2fb4: aa1303e0     	mov	x0, x19
    2fb8: 97fffc6d     	bl	0x216c <aw22xxx_init_cfg_update_array>
    2fbc: 90000014     	adrp	x20, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002fbc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x84
    2fc0: 91000294     	add	x20, x20, #0x0
		0000000000002fc0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x84
    2fc4: aa1303e0     	mov	x0, x19
    2fc8: aa1403e1     	mov	x1, x20
    2fcc: 9400004b     	bl	0x30f8 <aw22xxx_set_breath_data>
    2fd0: 90000015     	adrp	x21, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002fd0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18728
    2fd4: 394002a8     	ldrb	w8, [x21]
		0000000000002fd4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18728
    2fd8: 7100051f     	cmp	w8, #0x1
    2fdc: 540005a1     	b.ne	0x3090 <aw22xxx_play+0x114>
    2fe0: 90000018     	adrp	x24, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002fe0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18738
    2fe4: 52801139     	mov	w25, #0x89              // =137
    2fe8: 90000017     	adrp	x23, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002fe8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18724
    2fec: 90000016     	adrp	x22, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002fec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x80
    2ff0: 5280033a     	mov	w26, #0x19              // =25
    2ff4: 528c34fb     	mov	w27, #0x61a7            // =24999
    2ff8: 528c353c     	mov	w28, #0x61a9            // =25001
    2ffc: 39400308     	ldrb	w8, [x24]
		0000000000002ffc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18738
    3000: 1b197d08     	mul	w8, w8, w25
    3004: 530c7d00     	lsr	w0, w8, #12
    3008: 94000000     	bl	0x3008 <aw22xxx_play+0x8c>
		0000000000003008:  R_AARCH64_CALL26	msleep
    300c: b94002e8     	ldr	w8, [x23]
		000000000000300c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18724
    3010: b94002c9     	ldr	w9, [x22]
		0000000000003010:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x80
    3014: 6b09011f     	cmp	w8, w9
    3018: 540001e0     	b.eq	0x3054 <aw22xxx_play+0xd8>
    301c: 1b1a7d08     	mul	w8, w8, w26
    3020: 6b1b011f     	cmp	w8, w27
    3024: 5400032c     	b.gt	0x3088 <aw22xxx_play+0x10c>
    3028: 6b1c011f     	cmp	w8, w28
    302c: 54000642     	b.hs	0x30f4 <aw22xxx_play+0x178>
    3030: 8b284a81     	add	x1, x20, w8, uxtw #2
    3034: aa1303e0     	mov	x0, x19
    3038: 94000030     	bl	0x30f8 <aw22xxx_set_breath_data>
    303c: b94002e8     	ldr	w8, [x23]
		000000000000303c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18724
    3040: 394002a9     	ldrb	w9, [x21]
		0000000000003040:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18728
    3044: 11000508     	add	w8, w8, #0x1
    3048: b90002e8     	str	w8, [x23]
		0000000000003048:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18724
    304c: 3707fd89     	tbnz	w9, #0x0, 0x2ffc <aw22xxx_play+0x80>
    3050: 14000010     	b	0x3090 <aw22xxx_play+0x114>
    3054: 90000008     	adrp	x8, 0x3000 <aw22xxx_play+0x84>
		0000000000003054:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    3058: 9108c262     	add	x2, x19, #0x230
    305c: 52800400     	mov	w0, #0x20               // =32
    3060: f9400101     	ldr	x1, [x8]
		0000000000003060:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    3064: 390002bf     	strb	wzr, [x21]
		0000000000003064:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18728
    3068: b90002ff     	str	wzr, [x23]
		0000000000003068:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18724
    306c: b90002df     	str	wzr, [x22]
		000000000000306c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x80
    3070: 94000000     	bl	0x3070 <aw22xxx_play+0xf4>
		0000000000003070:  R_AARCH64_CALL26	queue_work_on
    3074: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1094
    3078: 91000000     	add	x0, x0, #0x0
		0000000000003078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1094
    307c: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		000000000000307c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85e
    3080: 91000021     	add	x1, x1, #0x0
		0000000000003080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85e
    3084: 94000000     	bl	0x3084 <aw22xxx_play+0x108>
		0000000000003084:  R_AARCH64_CALL26	_printk
    3088: 394002a8     	ldrb	w8, [x21]
		0000000000003088:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18728
    308c: 37000228     	tbnz	w8, #0x0, 0x30d0 <aw22xxx_play+0x154>
    3090: aa1303e0     	mov	x0, x19
    3094: 52801fe1     	mov	w1, #0xff               // =255
    3098: 2a1f03e2     	mov	w2, wzr
    309c: 97fff3f1     	bl	0x60 <aw22xxx_i2c_write>
    30a0: aa1303e0     	mov	x0, x19
    30a4: 528000a1     	mov	w1, #0x5                // =5
    30a8: 2a1f03e2     	mov	w2, wzr
    30ac: 97fff3ed     	bl	0x60 <aw22xxx_i2c_write>
    30b0: aa1303e0     	mov	x0, x19
    30b4: 52800081     	mov	w1, #0x4                // =4
    30b8: 52800022     	mov	w2, #0x1                // =1
    30bc: 97fff3e9     	bl	0x60 <aw22xxx_i2c_write>
    30c0: aa1303e0     	mov	x0, x19
    30c4: 52800041     	mov	w1, #0x2                // =2
    30c8: 2a1f03e2     	mov	w2, wzr
    30cc: 97fff3e5     	bl	0x60 <aw22xxx_i2c_write>
    30d0: 2a1f03e0     	mov	w0, wzr
    30d4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    30d8: a94457f6     	ldp	x22, x21, [sp, #0x40]
    30dc: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    30e0: a94267fa     	ldp	x26, x25, [sp, #0x20]
    30e4: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    30e8: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    30ec: d50323bf     	autiasp
    30f0: d65f03c0     	ret
    30f4: d42aa240     	brk	#0x5512
