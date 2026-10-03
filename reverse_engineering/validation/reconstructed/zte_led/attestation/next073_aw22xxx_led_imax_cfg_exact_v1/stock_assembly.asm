
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003ac <aw22xxx_led_imax_cfg>:
     3ac: d503233f     	paciasp
     3b0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     3b4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     3b8: 910003fd     	mov	x29, sp
     3bc: 52801fe1     	mov	w1, #0xff               // =255
     3c0: 2a1f03e2     	mov	w2, wzr
     3c4: aa0003f3     	mov	x19, x0
     3c8: 94000015     	bl	0x41c <aw22xxx_i2c_write>
     3cc: aa1303e0     	mov	x0, x19
     3d0: 52800161     	mov	w1, #0xb                // =11
     3d4: 528000e2     	mov	w2, #0x7                // =7
     3d8: 528000f4     	mov	w20, #0x7               // =7
     3dc: 94000010     	bl	0x41c <aw22xxx_i2c_write>
     3e0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003e0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61c0
     3e4: b9430269     	ldr	w9, [x19, #0x300]
     3e8: b902f274     	str	w20, [x19, #0x2f0]
     3ec: f9400108     	ldr	x8, [x8]
		00000000000003ec:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
     3f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f4
     3f4: 91000000     	add	x0, x0, #0x0
		00000000000003f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f4
     3f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196
     3fc: 91000021     	add	x1, x1, #0x0
		00000000000003fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196
     400: 528000e3     	mov	w3, #0x7                // =7
     404: f8697902     	ldr	x2, [x8, x9, lsl #3]
     408: 94000000     	bl	0x408 <aw22xxx_led_imax_cfg+0x5c>
		0000000000000408:  R_AARCH64_CALL26	_printk
     40c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     410: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     414: d50323bf     	autiasp
     418: d65f03c0     	ret
