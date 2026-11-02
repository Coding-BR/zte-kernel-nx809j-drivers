
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000265f4 <ufp_get_lcdstate>:
   265f4: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		00000000000265f4:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   265f8: b9400100     	ldr	w0, [x8]
		00000000000265f8:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   265fc: d65f03c0     	ret
