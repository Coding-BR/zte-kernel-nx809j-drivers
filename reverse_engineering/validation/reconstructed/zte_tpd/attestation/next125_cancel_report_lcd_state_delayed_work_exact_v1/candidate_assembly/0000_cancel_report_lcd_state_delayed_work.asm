
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009190 <cancel_report_lcd_state_delayed_work>:
    9190: d503233f     	paciasp
    9194: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9198: 910003fd     	mov	x29, sp
    919c: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000919c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    91a0: f9400108     	ldr	x8, [x8]
		00000000000091a0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    91a4: 91278100     	add	x0, x8, #0x9e0
    91a8: 94000000     	bl	0x91a8 <cancel_report_lcd_state_delayed_work+0x18>
		00000000000091a8:  R_AARCH64_CALL26	cancel_delayed_work_sync
    91ac: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    91b0: d50323bf     	autiasp
    91b4: d65f03c0     	ret
