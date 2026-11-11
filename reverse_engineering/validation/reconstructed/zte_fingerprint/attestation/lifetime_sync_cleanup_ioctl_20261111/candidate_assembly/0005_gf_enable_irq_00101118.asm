
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000118c <gf_enable_irq>:
    118c: d503233f     	paciasp
    1190: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1194: f9000bf3     	str	x19, [sp, #0x10]
    1198: 910003fd     	mov	x29, sp
    119c: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		000000000000119c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x64
    11a0: b9400108     	ldr	w8, [x8]
		00000000000011a0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x64
    11a4: 35000168     	cbnz	w8, 0x11d0 <gf_enable_irq+0x44>
    11a8: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3ec>
		00000000000011a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x60
    11ac: 91000273     	add	x19, x19, #0x0
		00000000000011ac:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x60
    11b0: b9400260     	ldr	w0, [x19]
    11b4: 94000000     	bl	0x11b4 <gf_enable_irq+0x28>
		00000000000011b4:  R_AARCH64_CALL26	enable_irq
    11b8: 52800028     	mov	w8, #0x1                // =1
    11bc: b9000668     	str	w8, [x19, #0x4]
    11c0: f9400bf3     	ldr	x19, [sp, #0x10]
    11c4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    11c8: d50323bf     	autiasp
    11cc: d65f03c0     	ret
    11d0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000011d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x738
    11d4: 91000000     	add	x0, x0, #0x0
		00000000000011d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x738
    11d8: 94000000     	bl	0x11d8 <gf_enable_irq+0x4c>
		00000000000011d8:  R_AARCH64_CALL26	_printk
    11dc: 17fffff9     	b	0x11c0 <gf_enable_irq+0x34>
