
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009fe0 <ufp_get_lcdstate>:
    9fe0: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009fe0:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    9fe4: b9400100     	ldr	w0, [x8]
		0000000000009fe4:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    9fe8: d65f03c0     	ret
