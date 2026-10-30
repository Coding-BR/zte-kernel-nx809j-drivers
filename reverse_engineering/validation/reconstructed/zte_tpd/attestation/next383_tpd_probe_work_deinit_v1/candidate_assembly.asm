
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020190 <tpd_probe_work_deinit>:
   20190: d503233f     	paciasp
   20194: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   20198: f9000bf3     	str	x19, [sp, #0x10]
   2019c: 910003fd     	mov	x29, sp
   201a0: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x28>
		00000000000201a0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   201a4: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000201a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x935
   201a8: 91000000     	add	x0, x0, #0x0
		00000000000201a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x935
   201ac: f9400113     	ldr	x19, [x8]
		00000000000201ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   201b0: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x28>
		00000000000201b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x945
   201b4: 91000021     	add	x1, x1, #0x0
		00000000000201b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x945
   201b8: 94000000     	bl	0x201b8 <tpd_probe_work_deinit+0x28>
		00000000000201b8:  R_AARCH64_CALL26	_printk
   201bc: 91234260     	add	x0, x19, #0x8d0
   201c0: 94000000     	bl	0x201c0 <tpd_probe_work_deinit+0x30>
		00000000000201c0:  R_AARCH64_CALL26	cancel_delayed_work_sync
   201c4: f9400bf3     	ldr	x19, [sp, #0x10]
   201c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   201cc: d50323bf     	autiasp
   201d0: d65f03c0     	ret
