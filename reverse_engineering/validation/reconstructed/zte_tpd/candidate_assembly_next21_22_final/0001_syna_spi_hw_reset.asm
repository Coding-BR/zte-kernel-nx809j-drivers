
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bcfc <syna_spi_hw_reset>:
    bcfc: b940f008     	ldr	w8, [x0, #0xf0]
    bd00: 35000048     	cbnz	w8, 0xbd08 <syna_spi_hw_reset+0xc>
    bd04: d65f03c0     	ret
    bd08: d503233f     	paciasp
    bd0c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bd10: a9014ff4     	stp	x20, x19, [sp, #0x10]
    bd14: 910003fd     	mov	x29, sp
    bd18: b940f414     	ldr	w20, [x0, #0xf4]
    bd1c: aa0003f3     	mov	x19, x0
    bd20: 2a0803e0     	mov	w0, w8
    bd24: 94000000     	bl	0xbd24 <syna_spi_hw_reset+0x28>
		000000000000bd24:  R_AARCH64_CALL26	gpio_to_desc
    bd28: 12000281     	and	w1, w20, #0x1
    bd2c: 94000000     	bl	0xbd2c <syna_spi_hw_reset+0x30>
		000000000000bd2c:  R_AARCH64_CALL26	gpiod_set_raw_value
    bd30: b940fe60     	ldr	w0, [x19, #0xfc]
    bd34: aa1303e8     	mov	x8, x19
    bd38: 7100041f     	cmp	w0, #0x1
    bd3c: 5400006b     	b.lt	0xbd48 <syna_spi_hw_reset+0x4c>
    bd40: 94000000     	bl	0xbd40 <syna_spi_hw_reset+0x44>
		000000000000bd40:  R_AARCH64_CALL26	msleep
    bd44: aa1303e8     	mov	x8, x19
    bd48: 295e2500     	ldp	w0, w9, [x8, #0xf0]
    bd4c: 7100013f     	cmp	w9, #0x0
    bd50: 1a9f17f3     	cset	w19, eq
    bd54: 94000000     	bl	0xbd54 <syna_spi_hw_reset+0x58>
		000000000000bd54:  R_AARCH64_CALL26	gpio_to_desc
    bd58: 2a1303e1     	mov	w1, w19
    bd5c: 94000000     	bl	0xbd5c <syna_spi_hw_reset+0x60>
		000000000000bd5c:  R_AARCH64_CALL26	gpiod_set_raw_value
    bd60: 52800a00     	mov	w0, #0x50               // =80
    bd64: 94000000     	bl	0xbd64 <syna_spi_hw_reset+0x68>
		000000000000bd64:  R_AARCH64_CALL26	msleep
    bd68: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0x64>
		000000000000bd68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x327c
    bd6c: 91000000     	add	x0, x0, #0x0
		000000000000bd6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x327c
    bd70: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0x64>
		000000000000bd70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ce9
    bd74: 91000021     	add	x1, x1, #0x0
		000000000000bd74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ce9
    bd78: 94000000     	bl	0xbd78 <syna_spi_hw_reset+0x7c>
		000000000000bd78:  R_AARCH64_CALL26	_printk
    bd7c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    bd80: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    bd84: d50323bf     	autiasp
    bd88: d65f03c0     	ret
