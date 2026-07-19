
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bd3c <syna_spi_hw_reset>:
    bd3c: b940f008     	ldr	w8, [x0, #0xf0]
    bd40: 35000048     	cbnz	w8, 0xbd48 <syna_spi_hw_reset+0xc>
    bd44: d65f03c0     	ret
    bd48: d503233f     	paciasp
    bd4c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bd50: a9014ff4     	stp	x20, x19, [sp, #0x10]
    bd54: 910003fd     	mov	x29, sp
    bd58: b940f414     	ldr	w20, [x0, #0xf4]
    bd5c: aa0003f3     	mov	x19, x0
    bd60: 2a0803e0     	mov	w0, w8
    bd64: 94000000     	bl	0xbd64 <syna_spi_hw_reset+0x28>
		000000000000bd64:  R_AARCH64_CALL26	gpio_to_desc
    bd68: 12000281     	and	w1, w20, #0x1
    bd6c: 94000000     	bl	0xbd6c <syna_spi_hw_reset+0x30>
		000000000000bd6c:  R_AARCH64_CALL26	gpiod_set_raw_value
    bd70: b940fe60     	ldr	w0, [x19, #0xfc]
    bd74: aa1303e8     	mov	x8, x19
    bd78: 7100041f     	cmp	w0, #0x1
    bd7c: 5400006b     	b.lt	0xbd88 <syna_spi_hw_reset+0x4c>
    bd80: 94000000     	bl	0xbd80 <syna_spi_hw_reset+0x44>
		000000000000bd80:  R_AARCH64_CALL26	msleep
    bd84: aa1303e8     	mov	x8, x19
    bd88: 295e2500     	ldp	w0, w9, [x8, #0xf0]
    bd8c: 7100013f     	cmp	w9, #0x0
    bd90: 1a9f17f3     	cset	w19, eq
    bd94: 94000000     	bl	0xbd94 <syna_spi_hw_reset+0x58>
		000000000000bd94:  R_AARCH64_CALL26	gpio_to_desc
    bd98: 2a1303e1     	mov	w1, w19
    bd9c: 94000000     	bl	0xbd9c <syna_spi_hw_reset+0x60>
		000000000000bd9c:  R_AARCH64_CALL26	gpiod_set_raw_value
    bda0: 52800a00     	mov	w0, #0x50               // =80
    bda4: 94000000     	bl	0xbda4 <syna_spi_hw_reset+0x68>
		000000000000bda4:  R_AARCH64_CALL26	msleep
    bda8: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0x2c>
		000000000000bda8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e7
    bdac: 91000000     	add	x0, x0, #0x0
		000000000000bdac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e7
    bdb0: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0x2c>
		000000000000bdb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51e6
    bdb4: 91000021     	add	x1, x1, #0x0
		000000000000bdb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51e6
    bdb8: 94000000     	bl	0xbdb8 <syna_spi_hw_reset+0x7c>
		000000000000bdb8:  R_AARCH64_CALL26	_printk
    bdbc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    bdc0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    bdc4: d50323bf     	autiasp
    bdc8: d65f03c0     	ret
