
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000104 <cancel_report_lcd_state_delayed_work>:
     104: d503233f     	paciasp
     108: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     10c: 910003fd     	mov	x29, sp
     110: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000110:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     114: f9400108     	ldr	x8, [x8]
		0000000000000114:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     118: 91278100     	add	x0, x8, #0x9e0
     11c: 94000000     	bl	0x11c <cancel_report_lcd_state_delayed_work+0x18>
		000000000000011c:  R_AARCH64_CALL26	cancel_delayed_work_sync
     120: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     124: d50323bf     	autiasp
     128: d65f03c0     	ret
