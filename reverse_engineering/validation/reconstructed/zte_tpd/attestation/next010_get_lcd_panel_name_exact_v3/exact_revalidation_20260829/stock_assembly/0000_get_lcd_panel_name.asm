
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001458 <get_lcd_panel_name>:
    1458: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2b3
    145c: 91000000     	add	x0, x0, #0x0
		000000000000145c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2b3
    1460: d65f03c0     	ret
