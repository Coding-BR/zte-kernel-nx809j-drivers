
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ca4 <charger_80W>:
     ca4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ca4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     ca8: 39400108     	ldrb	w8, [x8]
		0000000000000ca8:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     cac: 7100091f     	cmp	w8, #0x2
     cb0: 1a9f17e0     	cset	w0, eq
     cb4: d65f03c0     	ret
