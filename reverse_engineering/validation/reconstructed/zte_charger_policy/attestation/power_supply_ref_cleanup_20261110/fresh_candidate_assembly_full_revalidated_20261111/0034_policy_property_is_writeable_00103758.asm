
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d0c <policy_property_is_writeable>:
    1d0c: 51000c28     	sub	w8, w1, #0x3
    1d10: 71000d1f     	cmp	w8, #0x3
    1d14: 1a9f27e0     	cset	w0, lo
    1d18: d65f03c0     	ret
