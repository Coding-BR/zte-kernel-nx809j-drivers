
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000011ac <gf_enable_irq>:
    11ac: d503233f     	paciasp
    11b0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    11b4: f9000bf3     	str	x19, [sp, #0x10]
    11b8: 910003fd     	mov	x29, sp
    11bc: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		00000000000011bc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x64
    11c0: b9400108     	ldr	w8, [x8]
		00000000000011c0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x64
    11c4: 35000168     	cbnz	w8, 0x11f0 <gf_enable_irq+0x44>
    11c8: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3cc>
		00000000000011c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x60
    11cc: 91000273     	add	x19, x19, #0x0
		00000000000011cc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x60
    11d0: b9400260     	ldr	w0, [x19]
    11d4: 94000000     	bl	0x11d4 <gf_enable_irq+0x28>
		00000000000011d4:  R_AARCH64_CALL26	enable_irq
    11d8: 52800028     	mov	w8, #0x1                // =1
    11dc: b9000668     	str	w8, [x19, #0x4]
    11e0: f9400bf3     	ldr	x19, [sp, #0x10]
    11e4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    11e8: d50323bf     	autiasp
    11ec: d65f03c0     	ret
    11f0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000011f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706
    11f4: 91000000     	add	x0, x0, #0x0
		00000000000011f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706
    11f8: 94000000     	bl	0x11f8 <gf_enable_irq+0x4c>
		00000000000011f8:  R_AARCH64_CALL26	_printk
    11fc: 17fffff9     	b	0x11e0 <gf_enable_irq+0x34>
