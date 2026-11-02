
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000914c <vbat_monitor_show>:
    914c: d503233f     	paciasp
    9150: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9154: f9000bf5     	str	x21, [sp, #0x10]
    9158: a9024ff4     	stp	x20, x19, [sp, #0x20]
    915c: 910003fd     	mov	x29, sp
    9160: f9404c15     	ldr	x21, [x0, #0x98]
    9164: aa0203f3     	mov	x19, x2
    9168: 910922a0     	add	x0, x21, #0x248
    916c: d102a2b4     	sub	x20, x21, #0xa8
    9170: 94000000     	bl	0x9170 <vbat_monitor_show+0x24>
		0000000000009170:  R_AARCH64_CALL26	mutex_lock
    9174: f94292a8     	ldr	x8, [x21, #0x520]
    9178: aa1403e0     	mov	x0, x20
    917c: f9402108     	ldr	x8, [x8, #0x40]
    9180: b85fc110     	ldur	w16, [x8, #-0x4]
    9184: 72810611     	movk	w17, #0x830
    9188: 72b08f51     	movk	w17, #0x847a, lsl #16
    918c: 6b11021f     	cmp	w16, w17
    9190: 54000040     	b.eq	0x9198 <vbat_monitor_show+0x4c>
    9194: d4304500     	brk	#0x8228
    9198: d63f0100     	blr	x8
    919c: b85c02a3     	ldur	w3, [x21, #-0x40]
    91a0: 90000002     	adrp	x2, 0x9000 <cont_show+0x34>
		00000000000091a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x277a
    91a4: 91000042     	add	x2, x2, #0x0
		00000000000091a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x277a
    91a8: aa1303e0     	mov	x0, x19
    91ac: 52820001     	mov	w1, #0x1000             // =4096
    91b0: 94000000     	bl	0x91b0 <vbat_monitor_show+0x64>
		00000000000091b0:  R_AARCH64_CALL26	snprintf
    91b4: 93407c13     	sxtw	x19, w0
    91b8: 910922a0     	add	x0, x21, #0x248
    91bc: 94000000     	bl	0x91bc <vbat_monitor_show+0x70>
		00000000000091bc:  R_AARCH64_CALL26	mutex_unlock
    91c0: aa1303e0     	mov	x0, x19
    91c4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    91c8: f9400bf5     	ldr	x21, [sp, #0x10]
    91cc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    91d0: d50323bf     	autiasp
    91d4: d65f03c0     	ret
