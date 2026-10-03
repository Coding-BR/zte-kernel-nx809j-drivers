
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000060 <aw22xxx_i2c_write>:
      60: d503233f     	paciasp
      64: d100c3ff     	sub	sp, sp, #0x30
      68: a9017bfd     	stp	x29, x30, [sp, #0x10]
      6c: a9024ff4     	stp	x20, x19, [sp, #0x20]
      70: 910043fd     	add	x29, sp, #0x10
      74: d5384108     	mrs	x8, SP_EL0
      78: aa0003f3     	mov	x19, x0
      7c: 2a1f03e3     	mov	w3, wzr
      80: f9438908     	ldr	x8, [x8, #0x710]
      84: f90007e8     	str	x8, [sp, #0x8]
      88: f9400014     	ldr	x20, [x0]
      8c: 390013e1     	strb	w1, [sp, #0x4]
      90: 910013e1     	add	x1, sp, #0x4
      94: 390017e2     	strb	w2, [sp, #0x5]
      98: 52800042     	mov	w2, #0x2                // =2
      9c: aa1403e0     	mov	x0, x20
      a0: 94000000     	bl	0xa0 <aw22xxx_i2c_write+0x40>
		00000000000000a0:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
      a4: 37f80160     	tbnz	w0, #0x1f, 0xd0 <aw22xxx_i2c_write+0x70>
      a8: d5384108     	mrs	x8, SP_EL0
      ac: f9438908     	ldr	x8, [x8, #0x710]
      b0: f94007e9     	ldr	x9, [sp, #0x8]
      b4: eb09011f     	cmp	x8, x9
      b8: 54000541     	b.ne	0x160 <aw22xxx_i2c_write+0x100>
      bc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      c0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
      c4: 9100c3ff     	add	sp, sp, #0x30
      c8: d50323bf     	autiasp
      cc: d65f03c0     	ret
      d0: b942e260     	ldr	w0, [x19, #0x2e0]
      d4: 94000000     	bl	0xd4 <aw22xxx_i2c_write+0x74>
		00000000000000d4:  R_AARCH64_CALL26	gpio_to_desc
      d8: 94000000     	bl	0xd8 <aw22xxx_i2c_write+0x78>
		00000000000000d8:  R_AARCH64_CALL26	gpiod_get_raw_value
      dc: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000000dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12aa
      e0: 91000000     	add	x0, x0, #0x0
		00000000000000e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12aa
      e4: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf7
      e8: 91000021     	add	x1, x1, #0x0
		00000000000000e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf7
      ec: 94000000     	bl	0xec <aw22xxx_i2c_write+0x8c>
		00000000000000ec:  R_AARCH64_CALL26	_printk
      f0: 52800020     	mov	w0, #0x1                // =1
      f4: 94000000     	bl	0xf4 <aw22xxx_i2c_write+0x94>
		00000000000000f4:  R_AARCH64_CALL26	msleep
      f8: 910013e1     	add	x1, sp, #0x4
      fc: aa1403e0     	mov	x0, x20
     100: 52800042     	mov	w2, #0x2                // =2
     104: 2a1f03e3     	mov	w3, wzr
     108: 94000000     	bl	0x108 <aw22xxx_i2c_write+0xa8>
		0000000000000108:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     10c: 36fffce0     	tbz	w0, #0x1f, 0xa8 <aw22xxx_i2c_write+0x48>
     110: b942e260     	ldr	w0, [x19, #0x2e0]
     114: 94000000     	bl	0x114 <aw22xxx_i2c_write+0xb4>
		0000000000000114:  R_AARCH64_CALL26	gpio_to_desc
     118: 94000000     	bl	0x118 <aw22xxx_i2c_write+0xb8>
		0000000000000118:  R_AARCH64_CALL26	gpiod_get_raw_value
     11c: 90000014     	adrp	x20, 0x0 <aw22xxx_led_imax_cfg>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf7
     120: 91000294     	add	x20, x20, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf7
     124: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe9d
     128: 91000000     	add	x0, x0, #0x0
		0000000000000128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe9d
     12c: aa1403e1     	mov	x1, x20
     130: 94000000     	bl	0x130 <aw22xxx_i2c_write+0xd0>
		0000000000000130:  R_AARCH64_CALL26	_printk
     134: b942e260     	ldr	w0, [x19, #0x2e0]
     138: 94000000     	bl	0x138 <aw22xxx_i2c_write+0xd8>
		0000000000000138:  R_AARCH64_CALL26	gpio_to_desc
     13c: 52800021     	mov	w1, #0x1                // =1
     140: 94000000     	bl	0x140 <aw22xxx_i2c_write+0xe0>
		0000000000000140:  R_AARCH64_CALL26	gpiod_direction_output_raw
     144: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
     148: 91000000     	add	x0, x0, #0x0
		0000000000000148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
     14c: aa1403e1     	mov	x1, x20
     150: 94000000     	bl	0x150 <aw22xxx_i2c_write+0xf0>
		0000000000000150:  R_AARCH64_CALL26	_printk
     154: 52800020     	mov	w0, #0x1                // =1
     158: 94000000     	bl	0x158 <aw22xxx_i2c_write+0xf8>
		0000000000000158:  R_AARCH64_CALL26	msleep
     15c: 17ffffd3     	b	0xa8 <aw22xxx_i2c_write+0x48>
     160: 94000000     	bl	0x160 <aw22xxx_i2c_write+0x100>
		0000000000000160:  R_AARCH64_CALL26	__stack_chk_fail
