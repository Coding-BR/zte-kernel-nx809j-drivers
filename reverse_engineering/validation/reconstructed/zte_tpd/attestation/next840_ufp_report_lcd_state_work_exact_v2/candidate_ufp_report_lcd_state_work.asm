
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000255f0 <ufp_report_lcd_state_work>:
   255f0: d503233f     	paciasp
   255f4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   255f8: 910003fd     	mov	x29, sp
   255fc: 94000000     	bl	0x255fc <ufp_report_lcd_state_work+0xc>
		00000000000255fc:  R_AARCH64_CALL26	ufp_report_lcd_state
   25600: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   25604: d50323bf     	autiasp
   25608: d65f03c0     	ret
