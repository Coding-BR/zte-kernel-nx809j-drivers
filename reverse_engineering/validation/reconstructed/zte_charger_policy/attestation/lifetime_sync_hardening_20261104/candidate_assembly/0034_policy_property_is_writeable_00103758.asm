
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001cfc <policy_property_is_writeable>:
    1cfc: 51000c28     	sub	w8, w1, #0x3
    1d00: 71000d1f     	cmp	w8, #0x3
    1d04: 1a9f27e0     	cset	w0, lo
    1d08: d65f03c0     	ret
