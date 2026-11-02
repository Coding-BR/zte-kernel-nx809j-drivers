
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000019d0 <aw22xxx_cfg_show>:
    19d0: d503233f     	paciasp
    19d4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    19d8: f9000bf3     	str	x19, [sp, #0x10]
    19dc: 910003fd     	mov	x29, sp
    19e0: f9404c08     	ldr	x8, [x0, #0x98]
    19e4: aa0203f3     	mov	x19, x2
    19e8: b942f101     	ldr	w1, [x8, #0x2f0]
    19ec: 71002c3f     	cmp	w1, #0xb
    19f0: 540001a2     	b.hs	0x1a24 <aw22xxx_cfg_show+0x54>
    19f4: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000019f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
    19f8: 90000002     	adrp	x2, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000019f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f4
    19fc: 91000042     	add	x2, x2, #0x0
		00000000000019fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f4
    1a00: f9400108     	ldr	x8, [x8]
		0000000000001a00:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1a04: aa1303e0     	mov	x0, x19
    1a08: f8617903     	ldr	x3, [x8, x1, lsl #3]
    1a0c: 52820001     	mov	w1, #0x1000             // =4096
    1a10: 94000000     	bl	0x1a10 <aw22xxx_cfg_show+0x40>
		0000000000001a10:  R_AARCH64_CALL26	snprintf
    1a14: 713ffc1f     	cmp	w0, #0xfff
    1a18: 540000c9     	b.ls	0x1a30 <aw22xxx_cfg_show+0x60>
    1a1c: 928001a0     	mov	x0, #-0xe               // =-14
    1a20: 14000006     	b	0x1a38 <aw22xxx_cfg_show+0x68>
    1a24: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001a24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1a28: 91000000     	add	x0, x0, #0x0
		0000000000001a28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1a2c: 94000000     	bl	0x1a2c <aw22xxx_cfg_show+0x5c>
		0000000000001a2c:  R_AARCH64_CALL26	_printk
    1a30: aa1303e0     	mov	x0, x19
    1a34: 94000000     	bl	0x1a34 <aw22xxx_cfg_show+0x64>
		0000000000001a34:  R_AARCH64_CALL26	strlen
    1a38: f9400bf3     	ldr	x19, [sp, #0x10]
    1a3c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1a40: d50323bf     	autiasp
    1a44: d65f03c0     	ret
