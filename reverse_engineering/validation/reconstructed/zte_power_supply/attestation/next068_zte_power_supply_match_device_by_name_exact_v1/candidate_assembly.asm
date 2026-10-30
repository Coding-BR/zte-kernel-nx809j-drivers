
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002148 <zte_power_supply_match_device_by_name>:
    2148: d503233f     	paciasp
    214c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2150: 910003fd     	mov	x29, sp
    2154: f9404c08     	ldr	x8, [x0, #0x98]
    2158: f9400108     	ldr	x8, [x8]
    215c: f9400100     	ldr	x0, [x8]
    2160: 94000000     	bl	0x2160 <zte_power_supply_match_device_by_name+0x18>
		0000000000002160:  R_AARCH64_CALL26	strcmp
    2164: 7100001f     	cmp	w0, #0x0
    2168: 1a9f17e0     	cset	w0, eq
    216c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2170: d50323bf     	autiasp
    2174: d65f03c0     	ret
