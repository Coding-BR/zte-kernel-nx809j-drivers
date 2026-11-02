
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000397c <cont_brk_time_store>:
    397c: d503233f     	paciasp
    3980: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    3984: f9000bf5     	str	x21, [sp, #0x10]
    3988: a9024ff4     	stp	x20, x19, [sp, #0x20]
    398c: 910003fd     	mov	x29, sp
    3990: f9404c15     	ldr	x21, [x0, #0x98]
    3994: aa0203e0     	mov	x0, x2
    3998: 2a1f03e1     	mov	w1, wzr
    399c: aa0303f3     	mov	x19, x3
    39a0: 910fd6a2     	add	x2, x21, #0x3f5
    39a4: 94000000     	bl	0x39a4 <cont_brk_time_store+0x28>
		00000000000039a4:  R_AARCH64_CALL26	kstrtou8
    39a8: 37f80180     	tbnz	w0, #0x1f, 0x39d8 <cont_brk_time_store+0x5c>
    39ac: 910922a0     	add	x0, x21, #0x248
    39b0: d102a2b4     	sub	x20, x21, #0xa8
    39b4: 94000000     	bl	0x39b4 <cont_brk_time_store+0x38>
		00000000000039b4:  R_AARCH64_CALL26	mutex_lock
    39b8: 910fd6a2     	add	x2, x21, #0x3f5
    39bc: aa1403e0     	mov	x0, x20
    39c0: 52800421     	mov	w1, #0x21               // =33
    39c4: 52800023     	mov	w3, #0x1                // =1
    39c8: 94000000     	bl	0x39c8 <cont_brk_time_store+0x4c>
		00000000000039c8:  R_AARCH64_CALL26	i2c_w_bytes
    39cc: 910922a0     	add	x0, x21, #0x248
    39d0: 94000000     	bl	0x39d0 <cont_brk_time_store+0x54>
		00000000000039d0:  R_AARCH64_CALL26	mutex_unlock
    39d4: 14000002     	b	0x39dc <cont_brk_time_store+0x60>
    39d8: 93407c13     	sxtw	x19, w0
    39dc: aa1303e0     	mov	x0, x19
    39e0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    39e4: f9400bf5     	ldr	x21, [sp, #0x10]
    39e8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    39ec: d50323bf     	autiasp
    39f0: d65f03c0     	ret
