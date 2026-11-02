
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001018 <gf_enable_irq>:
    1018: d503233f     	paciasp
    101c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1020: f9000bf3     	str	x19, [sp, #0x10]
    1024: 910003fd     	mov	x29, sp
    1028: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		0000000000001028:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x5c
    102c: b9400108     	ldr	w8, [x8]
		000000000000102c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x5c
    1030: 35000168     	cbnz	w8, 0x105c <gf_enable_irq+0x44>
    1034: 90000013     	adrp	x19, 0x1000 <gf_release+0xd8>
		0000000000001034:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x58
    1038: 91000273     	add	x19, x19, #0x0
		0000000000001038:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x58
    103c: b9400260     	ldr	w0, [x19]
    1040: 94000000     	bl	0x1040 <gf_enable_irq+0x28>
		0000000000001040:  R_AARCH64_CALL26	enable_irq
    1044: 52800028     	mov	w8, #0x1                // =1
    1048: b9000668     	str	w8, [x19, #0x4]
    104c: f9400bf3     	ldr	x19, [sp, #0x10]
    1050: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1054: d50323bf     	autiasp
    1058: d65f03c0     	ret
    105c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		000000000000105c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f
    1060: 91000000     	add	x0, x0, #0x0
		0000000000001060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f
    1064: 94000000     	bl	0x1064 <gf_enable_irq+0x4c>
		0000000000001064:  R_AARCH64_CALL26	_printk
    1068: 17fffff9     	b	0x104c <gf_enable_irq+0x34>
