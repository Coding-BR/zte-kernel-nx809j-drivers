
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ac4 <zte_devm_power_supply_put>:
    1ac4: d503233f     	paciasp
    1ac8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1acc: 910003fd     	mov	x29, sp
    1ad0: f9400028     	ldr	x8, [x1]
    1ad4: 14000009     	b	0x1af8 <zte_devm_power_supply_put+0x34>
    1ad8: 91116109     	add	x9, x8, #0x458
    1adc: 1280000a     	mov	w10, #-0x1              // =-1
    1ae0: b82a013f     	stadd	w10, [x9]
    1ae4: 9100e100     	add	x0, x8, #0x38
    1ae8: 94000000     	bl	0x1ae8 <zte_devm_power_supply_put+0x24>
		0000000000001ae8:  R_AARCH64_CALL26	put_device
    1aec: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1af0: d50323bf     	autiasp
    1af4: d65f03c0     	ret
    1af8: 91116109     	add	x9, x8, #0x458
    1afc: 5280002a     	mov	w10, #0x1               // =1
    1b00: f9800131     	prfm	pstl1strm, [x9]
    1b04: 885f7d2b     	ldxr	w11, [x9]
    1b08: 4b0a016b     	sub	w11, w11, w10
    1b0c: 880c7d2b     	stxr	w12, w11, [x9]
    1b10: 35ffffac     	cbnz	w12, 0x1b04 <zte_devm_power_supply_put+0x40>
    1b14: 17fffff4     	b	0x1ae4 <zte_devm_power_supply_put+0x20>
