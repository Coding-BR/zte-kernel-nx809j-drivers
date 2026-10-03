
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001458 <zte_devm_power_supply_put>:
    1458: d503233f     	paciasp
    145c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1460: 910003fd     	mov	x29, sp
    1464: f9400028     	ldr	x8, [x1]
    1468: 14000009     	b	0x148c <zte_devm_power_supply_put+0x34>
    146c: 91116109     	add	x9, x8, #0x458
    1470: 1280000a     	mov	w10, #-0x1              // =-1
    1474: b82a013f     	stadd	w10, [x9]
    1478: 9100e100     	add	x0, x8, #0x38
    147c: 94000000     	bl	0x147c <zte_devm_power_supply_put+0x24>
		000000000000147c:  R_AARCH64_CALL26	put_device
    1480: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1484: d50323bf     	autiasp
    1488: d65f03c0     	ret
    148c: 91116109     	add	x9, x8, #0x458
    1490: 5280002a     	mov	w10, #0x1               // =1
    1494: f9800131     	prfm	pstl1strm, [x9]
    1498: 885f7d2b     	ldxr	w11, [x9]
    149c: 4b0a016b     	sub	w11, w11, w10
    14a0: 880c7d2b     	stxr	w12, w11, [x9]
    14a4: 35ffffac     	cbnz	w12, 0x1498 <zte_devm_power_supply_put+0x40>
    14a8: 17fffff4     	b	0x1478 <zte_devm_power_supply_put+0x20>
