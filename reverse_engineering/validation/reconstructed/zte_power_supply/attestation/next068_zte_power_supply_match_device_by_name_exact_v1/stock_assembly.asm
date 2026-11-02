
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000013c <zte_power_supply_match_device_by_name>:
     13c: d503233f     	paciasp
     140: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     144: 910003fd     	mov	x29, sp
     148: f9404c08     	ldr	x8, [x0, #0x98]
     14c: f9400108     	ldr	x8, [x8]
     150: f9400100     	ldr	x0, [x8]
     154: 94000000     	bl	0x154 <zte_power_supply_match_device_by_name+0x18>
		0000000000000154:  R_AARCH64_CALL26	strcmp
     158: 7100001f     	cmp	w0, #0x0
     15c: 1a9f17e0     	cset	w0, eq
     160: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     164: d50323bf     	autiasp
     168: d65f03c0     	ret
