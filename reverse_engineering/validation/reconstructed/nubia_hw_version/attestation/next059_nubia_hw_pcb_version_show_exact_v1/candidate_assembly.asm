
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d3c <nubia_hw_pcb_version_show>:
     d3c: b40002e2     	cbz	x2, 0xd98 <nubia_hw_pcb_version_show+0x5c>
     d40: d503233f     	paciasp
     d44: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     d48: f9000bf3     	str	x19, [sp, #0x10]
     d4c: 910003fd     	mov	x29, sp
     d50: aa0203e0     	mov	x0, x2
     d54: aa0203f3     	mov	x19, x2
     d58: 94000000     	bl	0xd58 <nubia_hw_pcb_version_show+0x1c>
		0000000000000d58:  R_AARCH64_CALL26	nubia_get_hw_pcb_version
     d5c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d5c:  R_AARCH64_ADR_PREL_PG_HI21	debug_value
     d60: b9400108     	ldr	w8, [x8]
		0000000000000d60:  R_AARCH64_LDST32_ABS_LO12_NC	debug_value
     d64: 7100051f     	cmp	w8, #0x1
     d68: 540001c0     	b.eq	0xda0 <nubia_hw_pcb_version_show+0x64>
     d6c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78e
     d70: 91000042     	add	x2, x2, #0x0
		0000000000000d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78e
     d74: aa1303e0     	mov	x0, x19
     d78: 52800181     	mov	w1, #0xc                // =12
     d7c: aa1303e3     	mov	x3, x19
     d80: 94000000     	bl	0xd80 <nubia_hw_pcb_version_show+0x44>
		0000000000000d80:  R_AARCH64_CALL26	snprintf
     d84: 93407c00     	sxtw	x0, w0
     d88: f9400bf3     	ldr	x19, [sp, #0x10]
     d8c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     d90: d50323bf     	autiasp
     d94: d65f03c0     	ret
     d98: aa1f03e0     	mov	x0, xzr
     d9c: d65f03c0     	ret
     da0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b3
     da4: 91000000     	add	x0, x0, #0x0
		0000000000000da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b3
     da8: aa1303e1     	mov	x1, x19
     dac: 94000000     	bl	0xdac <nubia_hw_pcb_version_show+0x70>
		0000000000000dac:  R_AARCH64_CALL26	_printk
     db0: 17ffffef     	b	0xd6c <nubia_hw_pcb_version_show+0x30>
