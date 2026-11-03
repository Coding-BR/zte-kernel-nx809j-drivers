
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009ba0 <syna_cdev_clear_global_data>:
    9ba0: d503233f     	paciasp
    9ba4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9ba8: f9000bf5     	str	x21, [sp, #0x10]
    9bac: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9bb0: 910003fd     	mov	x29, sp
    9bb4: 94000000     	bl	0x9bb4 <syna_cdev_clear_global_data+0x14>
		0000000000009bb4:  R_AARCH64_CALL26	syna_cdev_quiesce
    9bb8: 90000014     	adrp	x20, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009bb8:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_mutex
    9bbc: 91000294     	add	x20, x20, #0x0
		0000000000009bbc:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_lifecycle_mutex
    9bc0: aa1403e0     	mov	x0, x20
    9bc4: 94000000     	bl	0x9bc4 <syna_cdev_clear_global_data+0x24>
		0000000000009bc4:  R_AARCH64_CALL26	mutex_lock
    9bc8: 90000015     	adrp	x21, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009bc8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26e0
    9bcc: aa1403e0     	mov	x0, x20
    9bd0: f94002b3     	ldr	x19, [x21]
		0000000000009bd0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x26e0
    9bd4: 94000000     	bl	0x9bd4 <syna_cdev_clear_global_data+0x34>
		0000000000009bd4:  R_AARCH64_CALL26	mutex_unlock
    9bd8: b40000b3     	cbz	x19, 0x9bec <syna_cdev_clear_global_data+0x4c>
    9bdc: aa1303e0     	mov	x0, x19
    9be0: 94000000     	bl	0x9be0 <syna_cdev_clear_global_data+0x40>
		0000000000009be0:  R_AARCH64_CALL26	syna_input_agent_deregister_misc
    9be4: aa1303e0     	mov	x0, x19
    9be8: 94000000     	bl	0x9be8 <syna_cdev_clear_global_data+0x48>
		0000000000009be8:  R_AARCH64_CALL26	syna_input_agent_retire
    9bec: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009bec:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_mutex
    9bf0: 91000273     	add	x19, x19, #0x0
		0000000000009bf0:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_lifecycle_mutex
    9bf4: aa1303e0     	mov	x0, x19
    9bf8: 94000000     	bl	0x9bf8 <syna_cdev_clear_global_data+0x58>
		0000000000009bf8:  R_AARCH64_CALL26	mutex_lock
    9bfc: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009bfc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    9c00: 90000009     	adrp	x9, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009c00:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26f0
    9c04: aa1303e0     	mov	x0, x19
    9c08: f90002bf     	str	xzr, [x21]
		0000000000009c08:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x26e0
    9c0c: f900011f     	str	xzr, [x8]
		0000000000009c0c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data
    9c10: 3900013f     	strb	wzr, [x9]
		0000000000009c10:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x26f0
    9c14: 94000000     	bl	0x9c14 <syna_cdev_clear_global_data+0x74>
		0000000000009c14:  R_AARCH64_CALL26	mutex_unlock
    9c18: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9c1c: f9400bf5     	ldr	x21, [sp, #0x10]
    9c20: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9c24: d50323bf     	autiasp
    9c28: d65f03c0     	ret
