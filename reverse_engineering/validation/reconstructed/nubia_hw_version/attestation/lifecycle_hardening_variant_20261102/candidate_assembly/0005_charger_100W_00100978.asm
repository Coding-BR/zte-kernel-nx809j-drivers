
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c8c <charger_100W>:
     c8c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c8c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     c90: 39400108     	ldrb	w8, [x8]
		0000000000000c90:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     c94: 7100011f     	cmp	w8, #0x0
     c98: 1a9f17e0     	cset	w0, eq
     c9c: d65f03c0     	ret
