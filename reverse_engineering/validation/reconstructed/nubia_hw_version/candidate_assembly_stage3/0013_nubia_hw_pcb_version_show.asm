
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ba0 <nubia_hw_pcb_version_show>:
     ba0: b40002e2     	cbz	x2, 0xbfc <nubia_hw_pcb_version_show+0x5c>
     ba4: d503233f     	paciasp
     ba8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     bac: f9000bf3     	str	x19, [sp, #0x10]
     bb0: 910003fd     	mov	x29, sp
     bb4: aa0203e0     	mov	x0, x2
     bb8: aa0203f3     	mov	x19, x2
     bbc: 94000000     	bl	0xbbc <nubia_hw_pcb_version_show+0x1c>
		0000000000000bbc:  R_AARCH64_CALL26	nubia_get_hw_pcb_version
     bc0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000bc0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     bc4: b9400108     	ldr	w8, [x8]
		0000000000000bc4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     bc8: 7100051f     	cmp	w8, #0x1
     bcc: 540001c0     	b.eq	0xc04 <nubia_hw_pcb_version_show+0x64>
     bd0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32e
     bd4: 91000042     	add	x2, x2, #0x0
		0000000000000bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32e
     bd8: aa1303e0     	mov	x0, x19
     bdc: 52800181     	mov	w1, #0xc                // =12
     be0: aa1303e3     	mov	x3, x19
     be4: 94000000     	bl	0xbe4 <nubia_hw_pcb_version_show+0x44>
		0000000000000be4:  R_AARCH64_CALL26	snprintf
     be8: 93407c00     	sxtw	x0, w0
     bec: f9400bf3     	ldr	x19, [sp, #0x10]
     bf0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     bf4: d50323bf     	autiasp
     bf8: d65f03c0     	ret
     bfc: aa1f03e0     	mov	x0, xzr
     c00: d65f03c0     	ret
     c04: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d
     c08: 91000000     	add	x0, x0, #0x0
		0000000000000c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d
     c0c: aa1303e1     	mov	x1, x19
     c10: 94000000     	bl	0xc10 <nubia_hw_pcb_version_show+0x70>
		0000000000000c10:  R_AARCH64_CALL26	_printk
     c14: 17ffffef     	b	0xbd0 <nubia_hw_pcb_version_show+0x30>
