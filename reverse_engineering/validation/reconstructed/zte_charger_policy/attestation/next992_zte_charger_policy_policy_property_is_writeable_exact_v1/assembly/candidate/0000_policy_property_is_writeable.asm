
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002060 <policy_property_is_writeable>:
    2060: 51000c28     	sub	w8, w1, #0x3
    2064: 71000d1f     	cmp	w8, #0x3
    2068: 1a9f27e0     	cset	w0, lo
    206c: d65f03c0     	ret
