
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 94000000     	bl	0x10 <cleanup_module+0xc>
		0000000000000010:  R_AARCH64_CALL26	sensors_sensitivity_unregister
      14: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      18: d50323bf     	autiasp
      1c: d65f03c0     	ret
