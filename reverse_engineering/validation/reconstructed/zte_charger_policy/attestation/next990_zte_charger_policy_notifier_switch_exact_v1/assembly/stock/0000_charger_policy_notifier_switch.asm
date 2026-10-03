
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002aa8 <charger_policy_notifier_switch>:
    2aa8: b4000061     	cbz	x1, 0x2ab4 <charger_policy_notifier_switch+0xc>
    2aac: 2a1f03e0     	mov	w0, wzr
    2ab0: d65f03c0     	ret
    2ab4: d503233f     	paciasp
    2ab8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2abc: f9000bf5     	str	x21, [sp, #0x10]
    2ac0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2ac4: 910003fd     	mov	x29, sp
    2ac8: aa0003f3     	mov	x19, x0
    2acc: f8498e68     	ldr	x8, [x19, #0x98]!
    2ad0: 37000248     	tbnz	w8, #0x0, 0x2b18 <charger_policy_notifier_switch+0x70>
    2ad4: f9400048     	ldr	x8, [x2]
    2ad8: f940d401     	ldr	x1, [x0, #0x1a8]
    2adc: aa0003f5     	mov	x21, x0
    2ae0: f9400114     	ldr	x20, [x8]
    2ae4: aa1403e0     	mov	x0, x20
    2ae8: 94000000     	bl	0x2ae8 <charger_policy_notifier_switch+0x40>
		0000000000002ae8:  R_AARCH64_CALL26	strcmp
    2aec: 340000c0     	cbz	w0, 0x2b04 <charger_policy_notifier_switch+0x5c>
    2af0: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36a
    2af4: 91000021     	add	x1, x1, #0x0
		0000000000002af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36a
    2af8: aa1403e0     	mov	x0, x20
    2afc: 94000000     	bl	0x2afc <charger_policy_notifier_switch+0x54>
		0000000000002afc:  R_AARCH64_CALL26	strcmp
    2b00: 350000c0     	cbnz	w0, 0x2b18 <charger_policy_notifier_switch+0x70>
    2b04: f9404aa1     	ldr	x1, [x21, #0x90]
    2b08: 52800400     	mov	w0, #0x20               // =32
    2b0c: aa1303e2     	mov	x2, x19
    2b10: 52800643     	mov	w3, #0x32               // =50
    2b14: 94000000     	bl	0x2b14 <charger_policy_notifier_switch+0x6c>
		0000000000002b14:  R_AARCH64_CALL26	queue_delayed_work_on
    2b18: 52800020     	mov	w0, #0x1                // =1
    2b1c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2b20: f9400bf5     	ldr	x21, [sp, #0x10]
    2b24: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2b28: d50323bf     	autiasp
    2b2c: d65f03c0     	ret
