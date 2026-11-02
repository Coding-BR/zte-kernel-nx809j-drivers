
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026478 <ufp_report_lcd_state_work>:
   26478: d503233f     	paciasp
   2647c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26480: 910003fd     	mov	x29, sp
   26484: 94000000     	bl	0x26484 <ufp_report_lcd_state_work+0xc>
		0000000000026484:  R_AARCH64_CALL26	ufp_report_lcd_state
   26488: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2648c: d50323bf     	autiasp
   26490: d65f03c0     	ret
