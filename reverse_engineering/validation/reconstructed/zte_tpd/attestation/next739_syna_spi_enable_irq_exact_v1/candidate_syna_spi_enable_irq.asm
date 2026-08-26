
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cf00 <syna_spi_enable_irq>:
    cf00: d503233f     	paciasp
    cf04: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    cf08: a9014ff4     	stp	x20, x19, [sp, #0x10]
    cf0c: 910003fd     	mov	x29, sp
    cf10: f9400013     	ldr	x19, [x0]
    cf14: b4000113     	cbz	x19, 0xcf34 <syna_spi_enable_irq+0x34>
    cf18: b940ba68     	ldr	w8, [x19, #0xb8]
    cf1c: 35000188     	cbnz	w8, 0xcf4c <syna_spi_enable_irq+0x4c>
    cf20: 128000a0     	mov	w0, #-0x6               // =-6
    cf24: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    cf28: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    cf2c: d50323bf     	autiasp
    cf30: d65f03c0     	ret
    cf34: 90000000     	adrp	x0, 0xc000 <syna_dev_set_charger_mode+0x30>
		000000000000cf34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c056
    cf38: 91000000     	add	x0, x0, #0x0
		000000000000cf38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c056
    cf3c: 90000001     	adrp	x1, 0xc000 <syna_dev_set_charger_mode+0x30>
		000000000000cf3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab46
    cf40: 91000021     	add	x1, x1, #0x0
		000000000000cf40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab46
    cf44: 94000000     	bl	0xcf44 <syna_spi_enable_irq+0x44>
		000000000000cf44:  R_AARCH64_CALL26	_printk
    cf48: 17fffff6     	b	0xcf20 <syna_spi_enable_irq+0x20>
    cf4c: 91030260     	add	x0, x19, #0xc0
    cf50: 2a0103f4     	mov	w20, w1
    cf54: 94000000     	bl	0xcf54 <syna_spi_enable_irq+0x54>
		000000000000cf54:  R_AARCH64_CALL26	mutex_lock
    cf58: 3942f268     	ldrb	w8, [x19, #0xbc]
    cf5c: 360000d4     	tbz	w20, #0x0, 0xcf74 <syna_spi_enable_irq+0x74>
    cf60: 36000188     	tbz	w8, #0x0, 0xcf90 <syna_spi_enable_irq+0x90>
    cf64: 2a1f03f4     	mov	w20, wzr
    cf68: 90000000     	adrp	x0, 0xc000 <syna_dev_set_charger_mode+0x30>
		000000000000cf68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a17a
    cf6c: 91000000     	add	x0, x0, #0x0
		000000000000cf6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a17a
    cf70: 14000013     	b	0xcfbc <syna_spi_enable_irq+0xbc>
    cf74: 340001e8     	cbz	w8, 0xcfb0 <syna_spi_enable_irq+0xb0>
    cf78: b940ba60     	ldr	w0, [x19, #0xb8]
    cf7c: 94000000     	bl	0xcf7c <syna_spi_enable_irq+0x7c>
		000000000000cf7c:  R_AARCH64_CALL26	disable_irq_nosync
    cf80: 2a1f03e8     	mov	w8, wzr
    cf84: 90000000     	adrp	x0, 0xc000 <syna_dev_set_charger_mode+0x30>
		000000000000cf84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cfc2
    cf88: 91000000     	add	x0, x0, #0x0
		000000000000cf88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cfc2
    cf8c: 14000006     	b	0xcfa4 <syna_spi_enable_irq+0xa4>
    cf90: b940ba60     	ldr	w0, [x19, #0xb8]
    cf94: 94000000     	bl	0xcf94 <syna_spi_enable_irq+0x94>
		000000000000cf94:  R_AARCH64_CALL26	enable_irq
    cf98: 90000000     	adrp	x0, 0xc000 <syna_dev_set_charger_mode+0x30>
		000000000000cf98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c328
    cf9c: 91000000     	add	x0, x0, #0x0
		000000000000cf9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c328
    cfa0: 52800028     	mov	w8, #0x1                // =1
    cfa4: 52800034     	mov	w20, #0x1               // =1
    cfa8: 3902f268     	strb	w8, [x19, #0xbc]
    cfac: 14000004     	b	0xcfbc <syna_spi_enable_irq+0xbc>
    cfb0: 2a1f03f4     	mov	w20, wzr
    cfb4: 90000000     	adrp	x0, 0xc000 <syna_dev_set_charger_mode+0x30>
		000000000000cfb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ecd
    cfb8: 91000000     	add	x0, x0, #0x0
		000000000000cfb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ecd
    cfbc: 90000001     	adrp	x1, 0xc000 <syna_dev_set_charger_mode+0x30>
		000000000000cfbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab46
    cfc0: 91000021     	add	x1, x1, #0x0
		000000000000cfc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab46
    cfc4: 94000000     	bl	0xcfc4 <syna_spi_enable_irq+0xc4>
		000000000000cfc4:  R_AARCH64_CALL26	_printk
    cfc8: 91030260     	add	x0, x19, #0xc0
    cfcc: 94000000     	bl	0xcfcc <syna_spi_enable_irq+0xcc>
		000000000000cfcc:  R_AARCH64_CALL26	mutex_unlock
    cfd0: 2a1403e0     	mov	w0, w20
    cfd4: 17ffffd4     	b	0xcf24 <syna_spi_enable_irq+0x24>
