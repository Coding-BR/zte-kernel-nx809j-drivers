
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000011c0 <gf_enable_irq>:
    11c0: d503233f     	paciasp
    11c4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    11c8: f9000bf3     	str	x19, [sp, #0x10]
    11cc: 910003fd     	mov	x29, sp
    11d0: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		00000000000011d0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x64
    11d4: b9400108     	ldr	w8, [x8]
		00000000000011d4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x64
    11d8: 35000168     	cbnz	w8, 0x1204 <gf_enable_irq+0x44>
    11dc: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3b8>
		00000000000011dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x60
    11e0: 91000273     	add	x19, x19, #0x0
		00000000000011e0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x60
    11e4: b9400260     	ldr	w0, [x19]
    11e8: 94000000     	bl	0x11e8 <gf_enable_irq+0x28>
		00000000000011e8:  R_AARCH64_CALL26	enable_irq
    11ec: 52800028     	mov	w8, #0x1                // =1
    11f0: b9000668     	str	w8, [x19, #0x4]
    11f4: f9400bf3     	ldr	x19, [sp, #0x10]
    11f8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    11fc: d50323bf     	autiasp
    1200: d65f03c0     	ret
    1204: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706
    1208: 91000000     	add	x0, x0, #0x0
		0000000000001208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706
    120c: 94000000     	bl	0x120c <gf_enable_irq+0x4c>
		000000000000120c:  R_AARCH64_CALL26	_printk
    1210: 17fffff9     	b	0x11f4 <gf_enable_irq+0x34>
