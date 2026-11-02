
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a40 <nubia_get_pcb_table_item_by_gpio>:
     a40: aa1f03e2     	mov	x2, xzr
     a44: b4000260     	cbz	x0, 0xa90 <nubia_get_pcb_table_item_by_gpio+0x50>
     a48: 34000241     	cbz	w1, 0xa90 <nubia_get_pcb_table_item_by_gpio+0x50>
     a4c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a4c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     a50: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000a50:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio2_v
     a54: 2a0103ea     	mov	w10, w1
     a58: 39400108     	ldrb	w8, [x8]
		0000000000000a58:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     a5c: 39400129     	ldrb	w9, [x9]
		0000000000000a5c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     a60: 14000004     	b	0xa70 <nubia_get_pcb_table_item_by_gpio+0x30>
     a64: f100054a     	subs	x10, x10, #0x1
     a68: 91006000     	add	x0, x0, #0x18
     a6c: 54000100     	b.eq	0xa8c <nubia_get_pcb_table_item_by_gpio+0x4c>
     a70: b940000b     	ldr	w11, [x0]
     a74: 6b08017f     	cmp	w11, w8
     a78: 54ffff61     	b.ne	0xa64 <nubia_get_pcb_table_item_by_gpio+0x24>
     a7c: b940040b     	ldr	w11, [x0, #0x4]
     a80: 6b09017f     	cmp	w11, w9
     a84: 54ffff01     	b.ne	0xa64 <nubia_get_pcb_table_item_by_gpio+0x24>
     a88: d65f03c0     	ret
     a8c: aa1f03e2     	mov	x2, xzr
     a90: aa0203e0     	mov	x0, x2
     a94: d65f03c0     	ret
