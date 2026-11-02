
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ea4 <aw22xxx_play>:
     ea4: d503233f     	paciasp
     ea8: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     eac: a9016ffc     	stp	x28, x27, [sp, #0x10]
     eb0: a90267fa     	stp	x26, x25, [sp, #0x20]
     eb4: a9035ff8     	stp	x24, x23, [sp, #0x30]
     eb8: a90457f6     	stp	x22, x21, [sp, #0x40]
     ebc: a9054ff4     	stp	x20, x19, [sp, #0x50]
     ec0: 910003fd     	mov	x29, sp
     ec4: aa0003f3     	mov	x19, x0
     ec8: 94000000     	bl	0xec8 <aw22xxx_play+0x24>
		0000000000000ec8:  R_AARCH64_CALL26	aw22xxx_init_cfg_update_array
     ecc: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000ecc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x5
     ed0: 91000294     	add	x20, x20, #0x0
		0000000000000ed0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_bss_base+0x5
     ed4: aa1303e0     	mov	x0, x19
     ed8: aa1403e1     	mov	x1, x20
     edc: 94000000     	bl	0xedc <aw22xxx_play+0x38>
		0000000000000edc:  R_AARCH64_CALL26	aw22xxx_set_breath_data
     ee0: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000ee0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x4
     ee4: 52801139     	mov	w25, #0x89              // =137
     ee8: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000ee8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b0
     eec: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000eec:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b4
     ef0: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000ef0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b8
     ef4: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000ef4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x896
     ef8: 910002d6     	add	x22, x22, #0x0
		0000000000000ef8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x896
     efc: 52800335     	mov	w21, #0x19              // =25
     f00: 528c3517     	mov	w23, #0x61a8            // =25000
     f04: 39400308     	ldrb	w8, [x24]
		0000000000000f04:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x4
     f08: 1b197d08     	mul	w8, w8, w25
     f0c: 530c7d00     	lsr	w0, w8, #12
     f10: 94000000     	bl	0xf10 <aw22xxx_play+0x6c>
		0000000000000f10:  R_AARCH64_CALL26	msleep
     f14: b9400348     	ldr	w8, [x26]
		0000000000000f14:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b0
     f18: b9400369     	ldr	w9, [x27]
		0000000000000f18:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
     f1c: 6b09011f     	cmp	w8, w9
     f20: 540001c0     	b.eq	0xf58 <aw22xxx_play+0xb4>
     f24: 39400388     	ldrb	w8, [x28]
		0000000000000f24:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
     f28: 36000348     	tbz	w8, #0x0, 0xf90 <aw22xxx_play+0xec>
     f2c: b9400348     	ldr	w8, [x26]
		0000000000000f2c:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b0
     f30: 1b157d08     	mul	w8, w8, w21
     f34: 6b17011f     	cmp	w8, w23
     f38: 54000568     	b.hi	0xfe4 <aw22xxx_play+0x140>
     f3c: 8b284281     	add	x1, x20, w8, uxtw
     f40: aa1303e0     	mov	x0, x19
     f44: 94000000     	bl	0xf44 <aw22xxx_play+0xa0>
		0000000000000f44:  R_AARCH64_CALL26	aw22xxx_set_breath_data
     f48: b9400348     	ldr	w8, [x26]
		0000000000000f48:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b0
     f4c: 11000508     	add	w8, w8, #0x1
     f50: b9000348     	str	w8, [x26]
		0000000000000f50:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b0
     f54: 17ffffec     	b	0xf04 <aw22xxx_play+0x60>
     f58: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f58:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
     f5c: 9108c262     	add	x2, x19, #0x230
     f60: 52800400     	mov	w0, #0x20               // =32
     f64: f9400101     	ldr	x1, [x8]
		0000000000000f64:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
     f68: 3900039f     	strb	wzr, [x28]
		0000000000000f68:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
     f6c: b900035f     	str	wzr, [x26]
		0000000000000f6c:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b0
     f70: b900037f     	str	wzr, [x27]
		0000000000000f70:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
     f74: 94000000     	bl	0xf74 <aw22xxx_play+0xd0>
		0000000000000f74:  R_AARCH64_CALL26	queue_work_on
     f78: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f78:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe9e
     f7c: 91000000     	add	x0, x0, #0x0
		0000000000000f7c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe9e
     f80: aa1603e1     	mov	x1, x22
     f84: 94000000     	bl	0xf84 <aw22xxx_play+0xe0>
		0000000000000f84:  R_AARCH64_CALL26	_printk
     f88: 39400388     	ldrb	w8, [x28]
		0000000000000f88:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b8
     f8c: 3707fd08     	tbnz	w8, #0x0, 0xf2c <aw22xxx_play+0x88>
     f90: aa1303e0     	mov	x0, x19
     f94: 52801fe1     	mov	w1, #0xff               // =255
     f98: 2a1f03e2     	mov	w2, wzr
     f9c: 94000000     	bl	0xf9c <aw22xxx_play+0xf8>
		0000000000000f9c:  R_AARCH64_CALL26	aw22xxx_i2c_write
     fa0: aa1303e0     	mov	x0, x19
     fa4: 528000a1     	mov	w1, #0x5                // =5
     fa8: 2a1f03e2     	mov	w2, wzr
     fac: 94000000     	bl	0xfac <aw22xxx_play+0x108>
		0000000000000fac:  R_AARCH64_CALL26	aw22xxx_i2c_write
     fb0: aa1303e0     	mov	x0, x19
     fb4: 52800081     	mov	w1, #0x4                // =4
     fb8: 52800022     	mov	w2, #0x1                // =1
     fbc: 94000000     	bl	0xfbc <aw22xxx_play+0x118>
		0000000000000fbc:  R_AARCH64_CALL26	aw22xxx_i2c_write
     fc0: aa1303e0     	mov	x0, x19
     fc4: 52800041     	mov	w1, #0x2                // =2
     fc8: 2a1f03e2     	mov	w2, wzr
     fcc: 94000000     	bl	0xfcc <aw22xxx_play+0x128>
		0000000000000fcc:  R_AARCH64_CALL26	aw22xxx_i2c_write
     fd0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fd0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xaf3
     fd4: 91000000     	add	x0, x0, #0x0
		0000000000000fd4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xaf3
     fd8: aa1603e1     	mov	x1, x22
     fdc: 94000000     	bl	0xfdc <aw22xxx_play+0x138>
		0000000000000fdc:  R_AARCH64_CALL26	_printk
     fe0: 17ffffd3     	b	0xf2c <aw22xxx_play+0x88>
     fe4: d42aa240     	brk	#0x5512
