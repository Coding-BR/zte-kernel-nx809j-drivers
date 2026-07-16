
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <zte_timezone_setup>:
       4: d503233f     	paciasp
       8: d10083ff     	sub	sp, sp, #0x20
       c: a9017bfd     	stp	x29, x30, [sp, #0x10]
      10: 910043fd     	add	x29, sp, #0x10
      14: d5384108     	mrs	x8, SP_EL0
      18: 910003e2     	mov	x2, sp
      1c: 2a1f03e1     	mov	w1, wzr
      20: f9438908     	ldr	x8, [x8, #0x710]
      24: f90007e8     	str	x8, [sp, #0x8]
      28: f90003ff     	str	xzr, [sp]
      2c: 94000000     	bl	0x2c <zte_timezone_setup+0x28>
		000000000000002c:  R_AARCH64_CALL26	kstrtoll
      30: 350000a0     	cbnz	w0, 0x44 <zte_timezone_setup+0x40>
      34: f94003e8     	ldr	x8, [sp]
      38: 90000009     	adrp	x9, 0x0 <.init.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	zte_timezone
      3c: 52800020     	mov	w0, #0x1                // =1
      40: b9000128     	str	w8, [x9]
		0000000000000040:  R_AARCH64_LDST32_ABS_LO12_NC	zte_timezone
      44: d5384108     	mrs	x8, SP_EL0
      48: f9438908     	ldr	x8, [x8, #0x710]
      4c: f94007e9     	ldr	x9, [sp, #0x8]
      50: eb09011f     	cmp	x8, x9
      54: 540000a1     	b.ne	0x68 <zte_timezone_setup+0x64>
      58: a9417bfd     	ldp	x29, x30, [sp, #0x10]
      5c: 910083ff     	add	sp, sp, #0x20
      60: d50323bf     	autiasp
      64: d65f03c0     	ret
      68: 94000000     	bl	0x68 <zte_timezone_setup+0x64>
		0000000000000068:  R_AARCH64_CALL26	__stack_chk_fail
