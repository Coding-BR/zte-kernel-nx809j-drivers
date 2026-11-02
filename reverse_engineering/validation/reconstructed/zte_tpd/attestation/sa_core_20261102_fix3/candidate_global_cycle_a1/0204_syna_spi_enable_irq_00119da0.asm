
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ae1c <syna_spi_enable_irq>:
    ae1c: d503233f     	paciasp
    ae20: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    ae24: a9014ff4     	stp	x20, x19, [sp, #0x10]
    ae28: 910003fd     	mov	x29, sp
    ae2c: f9400013     	ldr	x19, [x0]
    ae30: b4000113     	cbz	x19, 0xae50 <syna_spi_enable_irq+0x34>
    ae34: b940ba68     	ldr	w8, [x19, #0xb8]
    ae38: 35000188     	cbnz	w8, 0xae68 <syna_spi_enable_irq+0x4c>
    ae3c: 128000a0     	mov	w0, #-0x6               // =-6
    ae40: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    ae44: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    ae48: d50323bf     	autiasp
    ae4c: d65f03c0     	ret
    ae50: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000ae50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3c2
    ae54: 91000000     	add	x0, x0, #0x0
		000000000000ae54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3c2
    ae58: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000ae58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a129
    ae5c: 91000021     	add	x1, x1, #0x0
		000000000000ae5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a129
    ae60: 94000000     	bl	0xae60 <syna_spi_enable_irq+0x44>
		000000000000ae60:  R_AARCH64_CALL26	_printk
    ae64: 17fffff6     	b	0xae3c <syna_spi_enable_irq+0x20>
    ae68: 91030260     	add	x0, x19, #0xc0
    ae6c: 2a0103f4     	mov	w20, w1
    ae70: 94000000     	bl	0xae70 <syna_spi_enable_irq+0x54>
		000000000000ae70:  R_AARCH64_CALL26	mutex_lock
    ae74: 3942f268     	ldrb	w8, [x19, #0xbc]
    ae78: 360000d4     	tbz	w20, #0x0, 0xae90 <syna_spi_enable_irq+0x74>
    ae7c: 36000188     	tbz	w8, #0x0, 0xaeac <syna_spi_enable_irq+0x90>
    ae80: 2a1f03f4     	mov	w20, wzr
    ae84: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000ae84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1994e
    ae88: 91000000     	add	x0, x0, #0x0
		000000000000ae88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1994e
    ae8c: 14000013     	b	0xaed8 <syna_spi_enable_irq+0xbc>
    ae90: 340001e8     	cbz	w8, 0xaecc <syna_spi_enable_irq+0xb0>
    ae94: b940ba60     	ldr	w0, [x19, #0xb8]
    ae98: 94000000     	bl	0xae98 <syna_spi_enable_irq+0x7c>
		000000000000ae98:  R_AARCH64_CALL26	disable_irq_nosync
    ae9c: 2a1f03e8     	mov	w8, wzr
    aea0: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1f8
    aea4: 91000000     	add	x0, x0, #0x0
		000000000000aea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1f8
    aea8: 14000006     	b	0xaec0 <syna_spi_enable_irq+0xa4>
    aeac: b940ba60     	ldr	w0, [x19, #0xb8]
    aeb0: 94000000     	bl	0xaeb0 <syna_spi_enable_irq+0x94>
		000000000000aeb0:  R_AARCH64_CALL26	enable_irq
    aeb4: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aeb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b5f6
    aeb8: 91000000     	add	x0, x0, #0x0
		000000000000aeb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b5f6
    aebc: 52800028     	mov	w8, #0x1                // =1
    aec0: 52800034     	mov	w20, #0x1               // =1
    aec4: 3902f268     	strb	w8, [x19, #0xbc]
    aec8: 14000004     	b	0xaed8 <syna_spi_enable_irq+0xbc>
    aecc: 2a1f03f4     	mov	w20, wzr
    aed0: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1898f
    aed4: 91000000     	add	x0, x0, #0x0
		000000000000aed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1898f
    aed8: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a129
    aedc: 91000021     	add	x1, x1, #0x0
		000000000000aedc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a129
    aee0: 94000000     	bl	0xaee0 <syna_spi_enable_irq+0xc4>
		000000000000aee0:  R_AARCH64_CALL26	_printk
    aee4: 91030260     	add	x0, x19, #0xc0
    aee8: 94000000     	bl	0xaee8 <syna_spi_enable_irq+0xcc>
		000000000000aee8:  R_AARCH64_CALL26	mutex_unlock
    aeec: 2a1403e0     	mov	w0, w20
    aef0: 17ffffd4     	b	0xae40 <syna_spi_enable_irq+0x24>
