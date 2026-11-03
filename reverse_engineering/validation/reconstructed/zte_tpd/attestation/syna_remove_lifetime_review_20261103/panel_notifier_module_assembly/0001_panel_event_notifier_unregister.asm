
/input/panel_event_notifier.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000108 <panel_event_notifier_unregister>:
     108: b4000240     	cbz	x0, 0x150 <panel_event_notifier_unregister+0x48>
     10c: d503233f     	paciasp
     110: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     114: a9014ff4     	stp	x20, x19, [sp, #0x10]
     118: 910003fd     	mov	x29, sp
     11c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     120: 91000294     	add	x20, x20, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.data
     124: aa0003f3     	mov	x19, x0
     128: aa1403e0     	mov	x0, x20
     12c: 94000000     	bl	0x12c <panel_event_notifier_unregister+0x24>
		000000000000012c:  R_AARCH64_CALL26	mutex_lock
     130: aa1403e0     	mov	x0, x20
     134: b9001a7f     	str	wzr, [x19, #0x18]
     138: a900fe7f     	stp	xzr, xzr, [x19, #0x8]
     13c: f900027f     	str	xzr, [x19]
     140: 94000000     	bl	0x140 <panel_event_notifier_unregister+0x38>
		0000000000000140:  R_AARCH64_CALL26	mutex_unlock
     144: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     148: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     14c: d50323bf     	autiasp
     150: d65f03c0     	ret
