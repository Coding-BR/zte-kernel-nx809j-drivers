
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bb3c <syna_spi_enable_irq>:
    bb3c: d503233f     	paciasp
    bb40: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bb44: a9014ff4     	stp	x20, x19, [sp, #0x10]
    bb48: 910003fd     	mov	x29, sp
    bb4c: f9400013     	ldr	x19, [x0]
    bb50: b4000113     	cbz	x19, 0xbb70 <syna_spi_enable_irq+0x34>
    bb54: b940ba68     	ldr	w8, [x19, #0xb8]
    bb58: 35000188     	cbnz	w8, 0xbb88 <syna_spi_enable_irq+0x4c>
    bb5c: 128000a0     	mov	w0, #-0x6               // =-6
    bb60: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    bb64: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    bb68: d50323bf     	autiasp
    bb6c: d65f03c0     	ret
    bb70: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0x64>
		000000000000bb70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cfd
    bb74: 91000000     	add	x0, x0, #0x0
		000000000000bb74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cfd
    bb78: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0x64>
		000000000000bb78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c90
    bb7c: 91000021     	add	x1, x1, #0x0
		000000000000bb7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c90
    bb80: 94000000     	bl	0xbb80 <syna_spi_enable_irq+0x44>
		000000000000bb80:  R_AARCH64_CALL26	_printk
    bb84: 17fffff6     	b	0xbb5c <syna_spi_enable_irq+0x20>
    bb88: 91030260     	add	x0, x19, #0xc0
    bb8c: 2a0103f4     	mov	w20, w1
    bb90: 94000000     	bl	0xbb90 <syna_spi_enable_irq+0x54>
		000000000000bb90:  R_AARCH64_CALL26	mutex_lock
    bb94: 3942f268     	ldrb	w8, [x19, #0xbc]
    bb98: 360000d4     	tbz	w20, #0x0, 0xbbb0 <syna_spi_enable_irq+0x74>
    bb9c: 36000188     	tbz	w8, #0x0, 0xbbcc <syna_spi_enable_irq+0x90>
    bba0: 2a1f03f4     	mov	w20, wzr
    bba4: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0x64>
		000000000000bba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24eb
    bba8: 91000000     	add	x0, x0, #0x0
		000000000000bba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24eb
    bbac: 14000013     	b	0xbbf8 <syna_spi_enable_irq+0xbc>
    bbb0: 340001e8     	cbz	w8, 0xbbec <syna_spi_enable_irq+0xb0>
    bbb4: b940ba60     	ldr	w0, [x19, #0xb8]
    bbb8: 94000000     	bl	0xbbb8 <syna_spi_enable_irq+0x7c>
		000000000000bbb8:  R_AARCH64_CALL26	disable_irq_nosync
    bbbc: 2a1f03e8     	mov	w8, wzr
    bbc0: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0x64>
		000000000000bbc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a96
    bbc4: 91000000     	add	x0, x0, #0x0
		000000000000bbc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a96
    bbc8: 14000006     	b	0xbbe0 <syna_spi_enable_irq+0xa4>
    bbcc: b940ba60     	ldr	w0, [x19, #0xb8]
    bbd0: 94000000     	bl	0xbbd0 <syna_spi_enable_irq+0x94>
		000000000000bbd0:  R_AARCH64_CALL26	enable_irq
    bbd4: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0x64>
		000000000000bbd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f35
    bbd8: 91000000     	add	x0, x0, #0x0
		000000000000bbd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f35
    bbdc: 52800028     	mov	w8, #0x1                // =1
    bbe0: 52800034     	mov	w20, #0x1               // =1
    bbe4: 3902f268     	strb	w8, [x19, #0xbc]
    bbe8: 14000004     	b	0xbbf8 <syna_spi_enable_irq+0xbc>
    bbec: 2a1f03f4     	mov	w20, wzr
    bbf0: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0x64>
		000000000000bbf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1604
    bbf4: 91000000     	add	x0, x0, #0x0
		000000000000bbf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1604
    bbf8: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0x64>
		000000000000bbf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c90
    bbfc: 91000021     	add	x1, x1, #0x0
		000000000000bbfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c90
    bc00: 94000000     	bl	0xbc00 <syna_spi_enable_irq+0xc4>
		000000000000bc00:  R_AARCH64_CALL26	_printk
    bc04: 91030260     	add	x0, x19, #0xc0
    bc08: 94000000     	bl	0xbc08 <syna_spi_enable_irq+0xcc>
		000000000000bc08:  R_AARCH64_CALL26	mutex_unlock
    bc0c: 2a1403e0     	mov	w0, w20
    bc10: 17ffffd4     	b	0xbb60 <syna_spi_enable_irq+0x24>
