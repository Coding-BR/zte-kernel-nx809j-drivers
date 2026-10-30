
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000265c4 <get_lcd_panel_name>:
   265c4: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		00000000000265c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb56c
   265c8: 91000000     	add	x0, x0, #0x0
		00000000000265c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb56c
   265cc: d65f03c0     	ret
