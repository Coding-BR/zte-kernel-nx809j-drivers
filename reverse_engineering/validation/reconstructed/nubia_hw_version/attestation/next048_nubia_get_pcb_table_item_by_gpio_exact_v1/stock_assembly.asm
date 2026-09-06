
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000188 <nubia_get_pcb_table_item_by_gpio>:
     188: aa1f03e2     	mov	x2, xzr
     18c: b4000260     	cbz	x0, 0x1d8 <nubia_get_pcb_table_item_by_gpio+0x50>
     190: 34000241     	cbz	w1, 0x1d8 <nubia_get_pcb_table_item_by_gpio+0x50>
     194: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     198: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio2_v
     19c: 2a0103ea     	mov	w10, w1
     1a0: 39400108     	ldrb	w8, [x8]
		00000000000001a0:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     1a4: 39400129     	ldrb	w9, [x9]
		00000000000001a4:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     1a8: 14000004     	b	0x1b8 <nubia_get_pcb_table_item_by_gpio+0x30>
     1ac: f100054a     	subs	x10, x10, #0x1
     1b0: 91006000     	add	x0, x0, #0x18
     1b4: 54000100     	b.eq	0x1d4 <nubia_get_pcb_table_item_by_gpio+0x4c>
     1b8: b940000b     	ldr	w11, [x0]
     1bc: 6b08017f     	cmp	w11, w8
     1c0: 54ffff61     	b.ne	0x1ac <nubia_get_pcb_table_item_by_gpio+0x24>
     1c4: b940040b     	ldr	w11, [x0, #0x4]
     1c8: 6b09017f     	cmp	w11, w9
     1cc: 54ffff01     	b.ne	0x1ac <nubia_get_pcb_table_item_by_gpio+0x24>
     1d0: d65f03c0     	ret
     1d4: aa1f03e2     	mov	x2, xzr
     1d8: aa0203e0     	mov	x0, x2
     1dc: d65f03c0     	ret
