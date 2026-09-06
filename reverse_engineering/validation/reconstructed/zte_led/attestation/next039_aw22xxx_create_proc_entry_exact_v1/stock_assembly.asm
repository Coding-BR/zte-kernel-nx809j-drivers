
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000019e4 <aw22xxx_create_proc_entry>:
    19e4: d503233f     	paciasp
    19e8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    19ec: 910003fd     	mov	x29, sp
    19f0: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000019f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140f
    19f4: 91000000     	add	x0, x0, #0x0
		00000000000019f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140f
    19f8: 90000003     	adrp	x3, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000019f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x150
    19fc: 91000063     	add	x3, x3, #0x0
		00000000000019fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x150
    1a00: 52802481     	mov	w1, #0x124              // =292
    1a04: aa1f03e2     	mov	x2, xzr
    1a08: 94000000     	bl	0x1a08 <aw22xxx_create_proc_entry+0x24>
		0000000000001a08:  R_AARCH64_CALL26	proc_create
    1a0c: b50000a0     	cbnz	x0, 0x1a20 <aw22xxx_create_proc_entry+0x3c>
    1a10: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001a10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc8a
    1a14: 91000000     	add	x0, x0, #0x0
		0000000000001a14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc8a
    1a18: 94000000     	bl	0x1a18 <aw22xxx_create_proc_entry+0x34>
		0000000000001a18:  R_AARCH64_CALL26	_printk
    1a1c: 14000007     	b	0x1a38 <aw22xxx_create_proc_entry+0x54>
    1a20: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1596
    1a24: 91000000     	add	x0, x0, #0x0
		0000000000001a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1596
    1a28: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c2
    1a2c: 91000021     	add	x1, x1, #0x0
		0000000000001a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c2
    1a30: 52813862     	mov	w2, #0x9c3              // =2499
    1a34: 94000000     	bl	0x1a34 <aw22xxx_create_proc_entry+0x50>
		0000000000001a34:  R_AARCH64_CALL26	_printk
    1a38: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1a3c: d50323bf     	autiasp
    1a40: d65f03c0     	ret
