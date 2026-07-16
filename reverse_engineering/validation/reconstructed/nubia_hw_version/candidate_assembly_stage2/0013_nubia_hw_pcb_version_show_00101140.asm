
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b78 <nubia_hw_pcb_version_show>:
     b78: b40002e2     	cbz	x2, 0xbd4 <nubia_hw_pcb_version_show+0x5c>
     b7c: d503233f     	paciasp
     b80: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b84: f9000bf3     	str	x19, [sp, #0x10]
     b88: 910003fd     	mov	x29, sp
     b8c: aa0203e0     	mov	x0, x2
     b90: aa0203f3     	mov	x19, x2
     b94: 94000000     	bl	0xb94 <nubia_hw_pcb_version_show+0x1c>
		0000000000000b94:  R_AARCH64_CALL26	nubia_get_hw_pcb_version
     b98: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b98:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     b9c: b9400108     	ldr	w8, [x8]
		0000000000000b9c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     ba0: 7100051f     	cmp	w8, #0x1
     ba4: 540001c0     	b.eq	0xbdc <nubia_hw_pcb_version_show+0x64>
     ba8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e5
     bac: 91000042     	add	x2, x2, #0x0
		0000000000000bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e5
     bb0: aa1303e0     	mov	x0, x19
     bb4: 52800181     	mov	w1, #0xc                // =12
     bb8: aa1303e3     	mov	x3, x19
     bbc: 94000000     	bl	0xbbc <nubia_hw_pcb_version_show+0x44>
		0000000000000bbc:  R_AARCH64_CALL26	snprintf
     bc0: 93407c00     	sxtw	x0, w0
     bc4: f9400bf3     	ldr	x19, [sp, #0x10]
     bc8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     bcc: d50323bf     	autiasp
     bd0: d65f03c0     	ret
     bd4: aa1f03e0     	mov	x0, xzr
     bd8: d65f03c0     	ret
     bdc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x128
     be0: 91000000     	add	x0, x0, #0x0
		0000000000000be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x128
     be4: aa1303e1     	mov	x1, x19
     be8: 94000000     	bl	0xbe8 <nubia_hw_pcb_version_show+0x70>
		0000000000000be8:  R_AARCH64_CALL26	_printk
     bec: 17ffffef     	b	0xba8 <nubia_hw_pcb_version_show+0x30>
