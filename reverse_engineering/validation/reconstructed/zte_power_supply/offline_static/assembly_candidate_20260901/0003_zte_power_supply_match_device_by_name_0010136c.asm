
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b28 <zte_power_supply_match_device_by_name>:
     b28: aa0003e8     	mov	x8, x0
     b2c: f9403800     	ldr	x0, [x0, #0x70]
     b30: b5000040     	cbnz	x0, 0xb38 <zte_power_supply_match_device_by_name+0x10>
     b34: f9400100     	ldr	x0, [x8]
     b38: d503233f     	paciasp
     b3c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b40: 910003fd     	mov	x29, sp
     b44: 94000000     	bl	0xb44 <zte_power_supply_match_device_by_name+0x1c>
		0000000000000b44:  R_AARCH64_CALL26	strcmp
     b48: 7100001f     	cmp	w0, #0x0
     b4c: 1a9f17e0     	cset	w0, eq
     b50: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     b54: d50323bf     	autiasp
     b58: d65f03c0     	ret
