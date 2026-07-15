
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009f68 <ufp_report_lcd_state_work>:
    9f68: d503233f     	paciasp
    9f6c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9f70: 910003fd     	mov	x29, sp
    9f74: 94000000     	bl	0x9f74 <ufp_report_lcd_state_work+0xc>
		0000000000009f74:  R_AARCH64_CALL26	ufp_report_lcd_state
    9f78: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9f7c: d50323bf     	autiasp
    9f80: d65f03c0     	ret
