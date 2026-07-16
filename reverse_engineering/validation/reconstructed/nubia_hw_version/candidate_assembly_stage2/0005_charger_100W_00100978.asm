
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003d8 <charger_100W>:
     3d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     3dc: 39400108     	ldrb	w8, [x8]
		00000000000003dc:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     3e0: 7100011f     	cmp	w8, #0x0
     3e4: 1a9f17e0     	cset	w0, eq
     3e8: d65f03c0     	ret
