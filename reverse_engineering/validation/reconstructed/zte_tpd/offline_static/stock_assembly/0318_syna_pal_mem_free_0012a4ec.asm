
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023c64 <syna_pal_mem_free>:
   23c64: d503233f     	paciasp
   23c68: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   23c6c: f9000bf3     	str	x19, [sp, #0x10]
   23c70: 910003fd     	mov	x29, sp
   23c74: aa0003f3     	mov	x19, x0
   23c78: 94000000     	bl	0x23c78 <syna_pal_mem_free+0x14>
		0000000000023c78:  R_AARCH64_CALL26	syna_request_managed_device
   23c7c: b40000e0     	cbz	x0, 0x23c98 <syna_pal_mem_free+0x34>
   23c80: aa1303e1     	mov	x1, x19
   23c84: 94000000     	bl	0x23c84 <syna_pal_mem_free+0x20>
		0000000000023c84:  R_AARCH64_CALL26	devm_kfree
   23c88: f9400bf3     	ldr	x19, [sp, #0x10]
   23c8c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   23c90: d50323bf     	autiasp
   23c94: d65f03c0     	ret
   23c98: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   23c9c: 91000000     	add	x0, x0, #0x0
		0000000000023c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   23ca0: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   23ca4: 91000021     	add	x1, x1, #0x0
		0000000000023ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   23ca8: 94000000     	bl	0x23ca8 <syna_pal_mem_free+0x44>
		0000000000023ca8:  R_AARCH64_CALL26	_printk
   23cac: 17fffff7     	b	0x23c88 <syna_pal_mem_free+0x24>
