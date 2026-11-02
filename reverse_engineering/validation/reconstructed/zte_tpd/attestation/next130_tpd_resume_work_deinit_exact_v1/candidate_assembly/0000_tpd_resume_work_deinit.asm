
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021fcc <tpd_resume_work_deinit>:
   21fcc: d503233f     	paciasp
   21fd0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   21fd4: f9000bf3     	str	x19, [sp, #0x10]
   21fd8: 910003fd     	mov	x29, sp
   21fdc: 90000008     	adrp	x8, 0x21000 <tp_zlog_debug_write+0x10>
		0000000000021fdc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   21fe0: 90000000     	adrp	x0, 0x21000 <tp_zlog_debug_write+0x10>
		0000000000021fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75f
   21fe4: 91000000     	add	x0, x0, #0x0
		0000000000021fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75f
   21fe8: f9400113     	ldr	x19, [x8]
		0000000000021fe8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21fec: 90000001     	adrp	x1, 0x21000 <tp_zlog_debug_write+0x10>
		0000000000021fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2449
   21ff0: 91000021     	add	x1, x1, #0x0
		0000000000021ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2449
   21ff4: 94000000     	bl	0x21ff4 <tpd_resume_work_deinit+0x28>
		0000000000021ff4:  R_AARCH64_CALL26	_printk
   21ff8: 91270260     	add	x0, x19, #0x9c0
   21ffc: 94000000     	bl	0x21ffc <tpd_resume_work_deinit+0x30>
		0000000000021ffc:  R_AARCH64_CALL26	cancel_work_sync
   22000: 91268260     	add	x0, x19, #0x9a0
   22004: 94000000     	bl	0x22004 <tpd_resume_work_deinit+0x38>
		0000000000022004:  R_AARCH64_CALL26	cancel_work_sync
   22008: 91278260     	add	x0, x19, #0x9e0
   2200c: 94000000     	bl	0x2200c <tpd_resume_work_deinit+0x40>
		000000000002200c:  R_AARCH64_CALL26	cancel_delayed_work_sync
   22010: f9400bf3     	ldr	x19, [sp, #0x10]
   22014: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   22018: d50323bf     	autiasp
   2201c: d65f03c0     	ret
