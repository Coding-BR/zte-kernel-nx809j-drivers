
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b8bc <syna_input_agent_deregister_misc>:
    b8bc: b40002c0     	cbz	x0, 0xb914 <syna_input_agent_deregister_misc+0x58>
    b8c0: d503233f     	paciasp
    b8c4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b8c8: f9000bf3     	str	x19, [sp, #0x10]
    b8cc: 910003fd     	mov	x29, sp
    b8d0: aa0003f3     	mov	x19, x0
    b8d4: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b8d4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30678
    b8d8: 91000000     	add	x0, x0, #0x0
		000000000000b8d8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30678
    b8dc: 94000000     	bl	0xb8dc <syna_input_agent_deregister_misc+0x20>
		000000000000b8dc:  R_AARCH64_CALL26	mutex_lock
    b8e0: f9426a68     	ldr	x8, [x19, #0x4d0]
    b8e4: b40000c8     	cbz	x8, 0xb8fc <syna_input_agent_deregister_misc+0x40>
    b8e8: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
    b8ec: 54000088     	b.hi	0xb8fc <syna_input_agent_deregister_misc+0x40>
    b8f0: 91128260     	add	x0, x19, #0x4a0
    b8f4: 94000000     	bl	0xb8f4 <syna_input_agent_deregister_misc+0x38>
		000000000000b8f4:  R_AARCH64_CALL26	misc_deregister
    b8f8: f9026a7f     	str	xzr, [x19, #0x4d0]
    b8fc: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b8fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30678
    b900: 91000000     	add	x0, x0, #0x0
		000000000000b900:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30678
    b904: 94000000     	bl	0xb904 <syna_input_agent_deregister_misc+0x48>
		000000000000b904:  R_AARCH64_CALL26	mutex_unlock
    b908: f9400bf3     	ldr	x19, [sp, #0x10]
    b90c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b910: d50323bf     	autiasp
    b914: d65f03c0     	ret
