
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d3a0 <syna_spi_release>:
    d3a0: d503233f     	paciasp
    d3a4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    d3a8: 910003fd     	mov	x29, sp
    d3ac: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xff0>
		000000000000d3ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x141d
    d3b0: 91000000     	add	x0, x0, #0x0
		000000000000d3b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x141d
    d3b4: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000d3b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x815
    d3b8: 91000021     	add	x1, x1, #0x0
		000000000000d3b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x815
    d3bc: 94000000     	bl	0xd3bc <syna_spi_release+0x1c>
		000000000000d3bc:  R_AARCH64_CALL26	_printk
    d3c0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    d3c4: d50323bf     	autiasp
    d3c8: d65f03c0     	ret
