
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009504 <ram_vbat_comp_store>:
    9504: d503233f     	paciasp
    9508: d100c3ff     	sub	sp, sp, #0x30
    950c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9510: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9514: 910043fd     	add	x29, sp, #0x10
    9518: d5384109     	mrs	x9, SP_EL0
    951c: aa0203e8     	mov	x8, x2
    9520: 910013e2     	add	x2, sp, #0x4
    9524: f9438929     	ldr	x9, [x9, #0x710]
    9528: 2a1f03e1     	mov	w1, wzr
    952c: aa0303f3     	mov	x19, x3
    9530: f90007e9     	str	x9, [sp, #0x8]
    9534: f9404c14     	ldr	x20, [x0, #0x98]
    9538: aa0803e0     	mov	x0, x8
    953c: b90007ff     	str	wzr, [sp, #0x4]
    9540: 94000000     	bl	0x9540 <ram_vbat_comp_store+0x3c>
		0000000000009540:  R_AARCH64_CALL26	kstrtouint
    9544: 37f80140     	tbnz	w0, #0x1f, 0x956c <ram_vbat_comp_store+0x68>
    9548: 91092280     	add	x0, x20, #0x248
    954c: 94000000     	bl	0x954c <ram_vbat_comp_store+0x48>
		000000000000954c:  R_AARCH64_CALL26	mutex_lock
    9550: b94007e8     	ldr	w8, [sp, #0x4]
    9554: 91092280     	add	x0, x20, #0x248
    9558: 7100011f     	cmp	w8, #0x0
    955c: 1a9f07e8     	cset	w8, ne
    9560: 38174288     	sturb	w8, [x20, #-0x8c]
    9564: 94000000     	bl	0x9564 <ram_vbat_comp_store+0x60>
		0000000000009564:  R_AARCH64_CALL26	mutex_unlock
    9568: 14000002     	b	0x9570 <ram_vbat_comp_store+0x6c>
    956c: 93407c13     	sxtw	x19, w0
    9570: d5384108     	mrs	x8, SP_EL0
    9574: f9438908     	ldr	x8, [x8, #0x710]
    9578: f94007e9     	ldr	x9, [sp, #0x8]
    957c: eb09011f     	cmp	x8, x9
    9580: 540000e1     	b.ne	0x959c <ram_vbat_comp_store+0x98>
    9584: aa1303e0     	mov	x0, x19
    9588: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    958c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9590: 9100c3ff     	add	sp, sp, #0x30
    9594: d50323bf     	autiasp
    9598: d65f03c0     	ret
    959c: 94000000     	bl	0x959c <ram_vbat_comp_store+0x98>
		000000000000959c:  R_AARCH64_CALL26	__stack_chk_fail
