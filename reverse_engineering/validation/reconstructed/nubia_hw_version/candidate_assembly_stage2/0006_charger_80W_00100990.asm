
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003f0 <charger_80W>:
     3f0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003f0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     3f4: 39400108     	ldrb	w8, [x8]
		00000000000003f4:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     3f8: 7100091f     	cmp	w8, #0x2
     3fc: 1a9f17e0     	cset	w0, eq
     400: d65f03c0     	ret
