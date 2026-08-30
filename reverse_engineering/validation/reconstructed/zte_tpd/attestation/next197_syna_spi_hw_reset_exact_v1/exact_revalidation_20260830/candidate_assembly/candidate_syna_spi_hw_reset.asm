
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000afdc <syna_spi_hw_reset>:
    afdc: b940f008     	ldr	w8, [x0, #0xf0]
    afe0: 35000048     	cbnz	w8, 0xafe8 <syna_spi_hw_reset+0xc>
    afe4: d65f03c0     	ret
    afe8: d503233f     	paciasp
    afec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    aff0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    aff4: 910003fd     	mov	x29, sp
    aff8: b940f414     	ldr	w20, [x0, #0xf4]
    affc: aa0003f3     	mov	x19, x0
    b000: 2a0803e0     	mov	w0, w8
    b004: 94000000     	bl	0xb004 <syna_spi_hw_reset+0x28>
		000000000000b004:  R_AARCH64_CALL26	gpio_to_desc
    b008: 12000281     	and	w1, w20, #0x1
    b00c: 94000000     	bl	0xb00c <syna_spi_hw_reset+0x30>
		000000000000b00c:  R_AARCH64_CALL26	gpiod_set_raw_value
    b010: b940fe60     	ldr	w0, [x19, #0xfc]
    b014: aa1303e8     	mov	x8, x19
    b018: 7100041f     	cmp	w0, #0x1
    b01c: 5400006b     	b.lt	0xb028 <syna_spi_hw_reset+0x4c>
    b020: 94000000     	bl	0xb020 <syna_spi_hw_reset+0x44>
		000000000000b020:  R_AARCH64_CALL26	msleep
    b024: aa1303e8     	mov	x8, x19
    b028: 295e2500     	ldp	w0, w9, [x8, #0xf0]
    b02c: 7100013f     	cmp	w9, #0x0
    b030: 1a9f17f3     	cset	w19, eq
    b034: 94000000     	bl	0xb034 <syna_spi_hw_reset+0x58>
		000000000000b034:  R_AARCH64_CALL26	gpio_to_desc
    b038: 2a1303e1     	mov	w1, w19
    b03c: 94000000     	bl	0xb03c <syna_spi_hw_reset+0x60>
		000000000000b03c:  R_AARCH64_CALL26	gpiod_set_raw_value
    b040: 52800a00     	mov	w0, #0x50               // =80
    b044: 94000000     	bl	0xb044 <syna_spi_hw_reset+0x68>
		000000000000b044:  R_AARCH64_CALL26	msleep
    b048: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a991
    b04c: 91000000     	add	x0, x0, #0x0
		000000000000b04c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a991
    b050: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c419
    b054: 91000021     	add	x1, x1, #0x0
		000000000000b054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c419
    b058: 94000000     	bl	0xb058 <syna_spi_hw_reset+0x7c>
		000000000000b058:  R_AARCH64_CALL26	_printk
    b05c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    b060: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b064: d50323bf     	autiasp
    b068: d65f03c0     	ret
