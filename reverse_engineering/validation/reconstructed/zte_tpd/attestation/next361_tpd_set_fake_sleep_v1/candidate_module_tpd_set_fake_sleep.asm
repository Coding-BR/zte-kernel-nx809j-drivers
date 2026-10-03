
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020c04 <tpd_set_fake_sleep>:
   20c04: f946dc08     	ldr	x8, [x0, #0xdb8]
   20c08: b9457d09     	ldr	w9, [x8, #0x57c]
   20c0c: b905ed01     	str	w1, [x8, #0x5ec]
   20c10: 7100053f     	cmp	w9, #0x1
   20c14: 540000c1     	b.ne	0x20c2c <tpd_set_fake_sleep+0x28>
   20c18: b905e901     	str	w1, [x8, #0x5e8]
   20c1c: 90000008     	adrp	x8, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020c1c:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   20c20: 2a1f03e0     	mov	w0, wzr
   20c24: b9000101     	str	w1, [x8]
		0000000000020c24:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   20c28: d65f03c0     	ret
   20c2c: d503233f     	paciasp
   20c30: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   20c34: 910003fd     	mov	x29, sp
   20c38: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020c38:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
   20c3c: 91000000     	add	x0, x0, #0x0
		0000000000020c3c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
   20c40: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d04
   20c44: 91000021     	add	x1, x1, #0x0
		0000000000020c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d04
   20c48: 94000000     	bl	0x20c48 <tpd_set_fake_sleep+0x44>
		0000000000020c48:  R_AARCH64_CALL26	_printk
   20c4c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   20c50: d50323bf     	autiasp
   20c54: 2a1f03e0     	mov	w0, wzr
   20c58: d65f03c0     	ret
