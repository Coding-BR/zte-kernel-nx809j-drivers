
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001238 <charger_policy_notifier_switch>:
    1238: b4000061     	cbz	x1, 0x1244 <charger_policy_notifier_switch+0xc>
    123c: 2a1f03e0     	mov	w0, wzr
    1240: d65f03c0     	ret
    1244: d503233f     	paciasp
    1248: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    124c: f9000bf5     	str	x21, [sp, #0x10]
    1250: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1254: 910003fd     	mov	x29, sp
    1258: aa0003f3     	mov	x19, x0
    125c: f8498e68     	ldr	x8, [x19, #0x98]!
    1260: 37000248     	tbnz	w8, #0x0, 0x12a8 <charger_policy_notifier_switch+0x70>
    1264: f9400048     	ldr	x8, [x2]
    1268: f940d401     	ldr	x1, [x0, #0x1a8]
    126c: aa0003f5     	mov	x21, x0
    1270: f9400114     	ldr	x20, [x8]
    1274: aa1403e0     	mov	x0, x20
    1278: 94000000     	bl	0x1278 <charger_policy_notifier_switch+0x40>
		0000000000001278:  R_AARCH64_CALL26	strcmp
    127c: 340000c0     	cbz	w0, 0x1294 <charger_policy_notifier_switch+0x5c>
    1280: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f6
    1284: 91000021     	add	x1, x1, #0x0
		0000000000001284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f6
    1288: aa1403e0     	mov	x0, x20
    128c: 94000000     	bl	0x128c <charger_policy_notifier_switch+0x54>
		000000000000128c:  R_AARCH64_CALL26	strcmp
    1290: 350000c0     	cbnz	w0, 0x12a8 <charger_policy_notifier_switch+0x70>
    1294: f9404aa1     	ldr	x1, [x21, #0x90]
    1298: 52800400     	mov	w0, #0x20               // =32
    129c: aa1303e2     	mov	x2, x19
    12a0: 52800643     	mov	w3, #0x32               // =50
    12a4: 94000000     	bl	0x12a4 <charger_policy_notifier_switch+0x6c>
		00000000000012a4:  R_AARCH64_CALL26	queue_delayed_work_on
    12a8: 52800020     	mov	w0, #0x1                // =1
    12ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    12b0: f9400bf5     	ldr	x21, [sp, #0x10]
    12b4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    12b8: d50323bf     	autiasp
    12bc: d65f03c0     	ret
