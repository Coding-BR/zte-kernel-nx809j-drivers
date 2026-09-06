
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fe8 <zte_power_supply_set_battery_charged>:
     fe8: b9445808     	ldr	w8, [x0, #0x458]
     fec: 37f802a8     	tbnz	w8, #0x1f, 0x1040 <zte_power_supply_set_battery_charged+0x58>
     ff0: f9400008     	ldr	x8, [x0]
     ff4: b9400909     	ldr	w9, [x8, #0x8]
     ff8: 7100053f     	cmp	w9, #0x1
     ffc: 54000221     	b.ne	0x1040 <zte_power_supply_set_battery_charged+0x58>
    1000: f9402908     	ldr	x8, [x8, #0x50]
    1004: b40001e8     	cbz	x8, 0x1040 <zte_power_supply_set_battery_charged+0x58>
    1008: d503233f     	paciasp
    100c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1010: 910003fd     	mov	x29, sp
    1014: b85fc110     	ldur	w16, [x8, #-0x4]
    1018: 7295bdf1     	movk	w17, #0xadef
    101c: 72ade731     	movk	w17, #0x6f39, lsl #16
    1020: 6b11021f     	cmp	w16, w17
    1024: 54000040     	b.eq	0x102c <zte_power_supply_set_battery_charged+0x44>
    1028: d4304500     	brk	#0x8228
    102c: d63f0100     	blr	x8
    1030: 2a1f03e0     	mov	w0, wzr
    1034: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1038: d50323bf     	autiasp
    103c: d65f03c0     	ret
    1040: 128002a0     	mov	w0, #-0x16              // =-22
    1044: d65f03c0     	ret
