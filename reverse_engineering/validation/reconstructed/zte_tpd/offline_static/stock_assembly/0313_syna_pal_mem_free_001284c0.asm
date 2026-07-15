
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021c38 <syna_pal_mem_free>:
   21c38: d503233f     	paciasp
   21c3c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   21c40: f9000bf3     	str	x19, [sp, #0x10]
   21c44: 910003fd     	mov	x29, sp
   21c48: aa0003f3     	mov	x19, x0
   21c4c: 94000000     	bl	0x21c4c <syna_pal_mem_free+0x14>
		0000000000021c4c:  R_AARCH64_CALL26	syna_request_managed_device
   21c50: b4000100     	cbz	x0, 0x21c70 <syna_pal_mem_free+0x38>
   21c54: b4000073     	cbz	x19, 0x21c60 <syna_pal_mem_free+0x28>
   21c58: aa1303e1     	mov	x1, x19
   21c5c: 94000000     	bl	0x21c5c <syna_pal_mem_free+0x24>
		0000000000021c5c:  R_AARCH64_CALL26	devm_kfree
   21c60: f9400bf3     	ldr	x19, [sp, #0x10]
   21c64: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   21c68: d50323bf     	autiasp
   21c6c: d65f03c0     	ret
   21c70: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   21c74: 91000000     	add	x0, x0, #0x0
		0000000000021c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   21c78: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   21c7c: 91000021     	add	x1, x1, #0x0
		0000000000021c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   21c80: 94000000     	bl	0x21c80 <syna_pal_mem_free+0x48>
		0000000000021c80:  R_AARCH64_CALL26	_printk
   21c84: 17fffff7     	b	0x21c60 <syna_pal_mem_free+0x28>
