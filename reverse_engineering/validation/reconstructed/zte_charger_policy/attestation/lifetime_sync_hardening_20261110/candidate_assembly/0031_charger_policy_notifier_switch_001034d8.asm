
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001228 <charger_policy_notifier_switch>:
    1228: b4000061     	cbz	x1, 0x1234 <charger_policy_notifier_switch+0xc>
    122c: 2a1f03e0     	mov	w0, wzr
    1230: d65f03c0     	ret
    1234: d503233f     	paciasp
    1238: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    123c: f9000bf5     	str	x21, [sp, #0x10]
    1240: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1244: 910003fd     	mov	x29, sp
    1248: aa0003f3     	mov	x19, x0
    124c: f8498e68     	ldr	x8, [x19, #0x98]!
    1250: 37000248     	tbnz	w8, #0x0, 0x1298 <charger_policy_notifier_switch+0x70>
    1254: f9400048     	ldr	x8, [x2]
    1258: f940d401     	ldr	x1, [x0, #0x1a8]
    125c: aa0003f5     	mov	x21, x0
    1260: f9400114     	ldr	x20, [x8]
    1264: aa1403e0     	mov	x0, x20
    1268: 94000000     	bl	0x1268 <charger_policy_notifier_switch+0x40>
		0000000000001268:  R_AARCH64_CALL26	strcmp
    126c: 340000c0     	cbz	w0, 0x1284 <charger_policy_notifier_switch+0x5c>
    1270: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f6
    1274: 91000021     	add	x1, x1, #0x0
		0000000000001274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f6
    1278: aa1403e0     	mov	x0, x20
    127c: 94000000     	bl	0x127c <charger_policy_notifier_switch+0x54>
		000000000000127c:  R_AARCH64_CALL26	strcmp
    1280: 350000c0     	cbnz	w0, 0x1298 <charger_policy_notifier_switch+0x70>
    1284: f9404aa1     	ldr	x1, [x21, #0x90]
    1288: 52800400     	mov	w0, #0x20               // =32
    128c: aa1303e2     	mov	x2, x19
    1290: 52800643     	mov	w3, #0x32               // =50
    1294: 94000000     	bl	0x1294 <charger_policy_notifier_switch+0x6c>
		0000000000001294:  R_AARCH64_CALL26	queue_delayed_work_on
    1298: 52800020     	mov	w0, #0x1                // =1
    129c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    12a0: f9400bf5     	ldr	x21, [sp, #0x10]
    12a4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    12a8: d50323bf     	autiasp
    12ac: d65f03c0     	ret
