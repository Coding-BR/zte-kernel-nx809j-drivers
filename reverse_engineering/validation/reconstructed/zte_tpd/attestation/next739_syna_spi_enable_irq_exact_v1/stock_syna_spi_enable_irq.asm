
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013518 <syna_spi_enable_irq>:
   13518: d503233f     	paciasp
   1351c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13520: a9014ff4     	stp	x20, x19, [sp, #0x10]
   13524: 910003fd     	mov	x29, sp
   13528: f9400013     	ldr	x19, [x0]
   1352c: b4000113     	cbz	x19, 0x1354c <syna_spi_enable_irq+0x34>
   13530: b940ba68     	ldr	w8, [x19, #0xb8]
   13534: 35000188     	cbnz	w8, 0x13564 <syna_spi_enable_irq+0x4c>
   13538: 128000a0     	mov	w0, #-0x6               // =-6
   1353c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   13540: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13544: d50323bf     	autiasp
   13548: d65f03c0     	ret
   1354c: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		000000000001354c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9230
   13550: 91000000     	add	x0, x0, #0x0
		0000000000013550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9230
   13554: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b81
   13558: 91000021     	add	x1, x1, #0x0
		0000000000013558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b81
   1355c: 94000000     	bl	0x1355c <syna_spi_enable_irq+0x44>
		000000000001355c:  R_AARCH64_CALL26	_printk
   13560: 17fffff6     	b	0x13538 <syna_spi_enable_irq+0x20>
   13564: 91030260     	add	x0, x19, #0xc0
   13568: 2a0103f4     	mov	w20, w1
   1356c: 94000000     	bl	0x1356c <syna_spi_enable_irq+0x54>
		000000000001356c:  R_AARCH64_CALL26	mutex_lock
   13570: 3942f268     	ldrb	w8, [x19, #0xbc]
   13574: 360000d4     	tbz	w20, #0x0, 0x1358c <syna_spi_enable_irq+0x74>
   13578: 36000188     	tbz	w8, #0x0, 0x135a8 <syna_spi_enable_irq+0x90>
   1357c: 2a1f03f4     	mov	w20, wzr
   13580: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x573b
   13584: 91000000     	add	x0, x0, #0x0
		0000000000013584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x573b
   13588: 14000013     	b	0x135d4 <syna_spi_enable_irq+0xbc>
   1358c: 340001e8     	cbz	w8, 0x135c8 <syna_spi_enable_irq+0xb0>
   13590: b940ba60     	ldr	w0, [x19, #0xb8]
   13594: 94000000     	bl	0x13594 <syna_spi_enable_irq+0x7c>
		0000000000013594:  R_AARCH64_CALL26	disable_irq_nosync
   13598: 2a1f03e8     	mov	w8, wzr
   1359c: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		000000000001359c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb499
   135a0: 91000000     	add	x0, x0, #0x0
		00000000000135a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb499
   135a4: 14000006     	b	0x135bc <syna_spi_enable_irq+0xa4>
   135a8: b940ba60     	ldr	w0, [x19, #0xb8]
   135ac: 94000000     	bl	0x135ac <syna_spi_enable_irq+0x94>
		00000000000135ac:  R_AARCH64_CALL26	enable_irq
   135b0: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000135b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9967
   135b4: 91000000     	add	x0, x0, #0x0
		00000000000135b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9967
   135b8: 52800028     	mov	w8, #0x1                // =1
   135bc: 52800034     	mov	w20, #0x1               // =1
   135c0: 3902f268     	strb	w8, [x19, #0xbc]
   135c4: 14000004     	b	0x135d4 <syna_spi_enable_irq+0xbc>
   135c8: 2a1f03f4     	mov	w20, wzr
   135cc: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000135cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3408
   135d0: 91000000     	add	x0, x0, #0x0
		00000000000135d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3408
   135d4: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		00000000000135d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b81
   135d8: 91000021     	add	x1, x1, #0x0
		00000000000135d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b81
   135dc: 94000000     	bl	0x135dc <syna_spi_enable_irq+0xc4>
		00000000000135dc:  R_AARCH64_CALL26	_printk
   135e0: 91030260     	add	x0, x19, #0xc0
   135e4: 94000000     	bl	0x135e4 <syna_spi_enable_irq+0xcc>
		00000000000135e4:  R_AARCH64_CALL26	mutex_unlock
   135e8: 2a1403e0     	mov	w0, w20
   135ec: 17ffffd4     	b	0x1353c <syna_spi_enable_irq+0x24>
