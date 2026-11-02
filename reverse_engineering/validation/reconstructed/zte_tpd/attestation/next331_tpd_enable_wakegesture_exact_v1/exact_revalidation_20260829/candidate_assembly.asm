
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026cdc <tpd_enable_wakegesture>:
   26cdc: f946dc08     	ldr	x8, [x0, #0xdb8]
   26ce0: b9457d09     	ldr	w9, [x8, #0x57c]
   26ce4: 7100053f     	cmp	w9, #0x1
   26ce8: 54000081     	b.ne	0x26cf8 <tpd_enable_wakegesture+0x1c>
   26cec: 2a1f03e0     	mov	w0, wzr
   26cf0: b905c501     	str	w1, [x8, #0x5c4]
   26cf4: d65f03c0     	ret
   26cf8: d503233f     	paciasp
   26cfc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26d00: 910003fd     	mov	x29, sp
   26d04: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   26d08: 91000000     	add	x0, x0, #0x0
		0000000000026d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   26d0c: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e4a
   26d10: 91000021     	add	x1, x1, #0x0
		0000000000026d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e4a
   26d14: 94000000     	bl	0x26d14 <tpd_enable_wakegesture+0x38>
		0000000000026d14:  R_AARCH64_CALL26	_printk
   26d18: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26d1c: d50323bf     	autiasp
   26d20: 2a1f03e0     	mov	w0, wzr
   26d24: d65f03c0     	ret
