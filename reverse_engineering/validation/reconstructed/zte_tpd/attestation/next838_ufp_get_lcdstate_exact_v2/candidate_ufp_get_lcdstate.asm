
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002529c <ufp_get_lcdstate>:
   2529c: 90000008     	adrp	x8, 0x25000 <tpfwupgrade_store+0xf4>
		000000000002529c:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   252a0: b9400100     	ldr	w0, [x8]
		00000000000252a0:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   252a4: d65f03c0     	ret
