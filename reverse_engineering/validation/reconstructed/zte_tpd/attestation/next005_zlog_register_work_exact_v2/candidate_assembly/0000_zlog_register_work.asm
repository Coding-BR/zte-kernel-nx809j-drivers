
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013ad4 <zlog_register_work>:
   13ad4: 90000008     	adrp	x8, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013ad4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   13ad8: f9400100     	ldr	x0, [x8]
		0000000000013ad8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   13adc: 396fc008     	ldrb	w8, [x0, #0xbf0]
   13ae0: 370000e8     	tbnz	w8, #0x0, 0x13afc <zlog_register_work+0x28>
   13ae4: d503233f     	paciasp
   13ae8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   13aec: 910003fd     	mov	x29, sp
   13af0: 94000000     	bl	0x13af0 <zlog_register_work+0x1c>
		0000000000013af0:  R_AARCH64_CALL26	tpd_zlog_register
   13af4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   13af8: d50323bf     	autiasp
   13afc: d65f03c0     	ret
