
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009de4 <cancel_report_lcd_state_delayed_work>:
    9de4: d503233f     	paciasp
    9de8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9dec: 910003fd     	mov	x29, sp
    9df0: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009df0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9df4: f9400108     	ldr	x8, [x8]
		0000000000009df4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9df8: 91278100     	add	x0, x8, #0x9e0
    9dfc: 94000000     	bl	0x9dfc <cancel_report_lcd_state_delayed_work+0x18>
		0000000000009dfc:  R_AARCH64_CALL26	cancel_delayed_work_sync
    9e00: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9e04: d50323bf     	autiasp
    9e08: d65f03c0     	ret
