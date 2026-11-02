
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fe4 <irq_handle>:
     fe4: d503233f     	paciasp
     fe8: d100c3ff     	sub	sp, sp, #0x30
     fec: a9017bfd     	stp	x29, x30, [sp, #0x10]
     ff0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     ff4: 910043fd     	add	x29, sp, #0x10
     ff8: d5384108     	mrs	x8, SP_EL0
     ffc: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000ffc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1000: 91000294     	add	x20, x20, #0x0
		0000000000001000:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1004: f9438908     	ldr	x8, [x8, #0x710]
    1008: aa0103f3     	mov	x19, x1
    100c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000100c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x886
    1010: 91000000     	add	x0, x0, #0x0
		0000000000001010:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x886
    1014: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001014:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4c2
    1018: 91000063     	add	x3, x3, #0x0
		0000000000001018:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4c2
    101c: aa1403e1     	mov	x1, x20
    1020: 528032e2     	mov	w2, #0x197              // =407
    1024: f90007e8     	str	x8, [sp, #0x8]
    1028: 94000000     	bl	0x1028 <irq_handle+0x44>
		0000000000001028:  R_AARCH64_CALL26	_printk
    102c: 910013e2     	add	x2, sp, #0x4
    1030: aa1303e0     	mov	x0, x19
    1034: 52800081     	mov	w1, #0x4                // =4
    1038: 79000bff     	strh	wzr, [sp, #0x4]
    103c: 97fffd6e     	bl	0x5f4 <haptic_i2c_read>
		000000000000103c:  R_AARCH64_CALL26	haptic_i2c_read
    1040: 79400bf3     	ldrh	w19, [sp, #0x4]
    1044: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001044:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x404
    1048: 91000000     	add	x0, x0, #0x0
		0000000000001048:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x404
    104c: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		000000000000104c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xaad
    1050: 91000063     	add	x3, x3, #0x0
		0000000000001050:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xaad
    1054: aa1403e1     	mov	x1, x20
    1058: 52803022     	mov	w2, #0x181              // =385
    105c: 2a1303e4     	mov	w4, w19
    1060: 94000000     	bl	0x1060 <irq_handle+0x7c>
		0000000000001060:  R_AARCH64_CALL26	_printk
    1064: 37480253     	tbnz	w19, #0x9, 0x10ac <irq_handle+0xc8>
    1068: 37400353     	tbnz	w19, #0x8, 0x10d0 <irq_handle+0xec>
    106c: 37380453     	tbnz	w19, #0x7, 0x10f4 <irq_handle+0x110>
    1070: 37300553     	tbnz	w19, #0x6, 0x1118 <irq_handle+0x134>
    1074: 37280653     	tbnz	w19, #0x5, 0x113c <irq_handle+0x158>
    1078: 37200753     	tbnz	w19, #0x4, 0x1160 <irq_handle+0x17c>
    107c: 37180853     	tbnz	w19, #0x3, 0x1184 <irq_handle+0x1a0>
    1080: d5384108     	mrs	x8, SP_EL0
    1084: f9438908     	ldr	x8, [x8, #0x710]
    1088: f94007e9     	ldr	x9, [sp, #0x8]
    108c: eb09011f     	cmp	x8, x9
    1090: 540008c1     	b.ne	0x11a8 <irq_handle+0x1c4>
    1094: 52800020     	mov	w0, #0x1                // =1
    1098: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    109c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    10a0: 9100c3ff     	add	sp, sp, #0x30
    10a4: d50323bf     	autiasp
    10a8: d65f03c0     	ret
    10ac: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000010ac:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xd0a
    10b0: 91000000     	add	x0, x0, #0x0
		00000000000010b0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xd0a
    10b4: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000010b4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    10b8: 91000021     	add	x1, x1, #0x0
		00000000000010b8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    10bc: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000010bc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xaad
    10c0: 91000063     	add	x3, x3, #0x0
		00000000000010c0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xaad
    10c4: 52803082     	mov	w2, #0x184              // =388
    10c8: 94000000     	bl	0x10c8 <irq_handle+0xe4>
		00000000000010c8:  R_AARCH64_CALL26	_printk
    10cc: 3647fd13     	tbz	w19, #0x8, 0x106c <irq_handle+0x88>
    10d0: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000010d0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x77a
    10d4: 91000000     	add	x0, x0, #0x0
		00000000000010d4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x77a
    10d8: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000010d8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    10dc: 91000021     	add	x1, x1, #0x0
		00000000000010dc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    10e0: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000010e0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xaad
    10e4: 91000063     	add	x3, x3, #0x0
		00000000000010e4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xaad
    10e8: 528030c2     	mov	w2, #0x186              // =390
    10ec: 94000000     	bl	0x10ec <irq_handle+0x108>
		00000000000010ec:  R_AARCH64_CALL26	_printk
    10f0: 363ffc13     	tbz	w19, #0x7, 0x1070 <irq_handle+0x8c>
    10f4: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000010f4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x42e
    10f8: 91000000     	add	x0, x0, #0x0
		00000000000010f8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x42e
    10fc: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000010fc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1100: 91000021     	add	x1, x1, #0x0
		0000000000001100:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1104: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001104:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xaad
    1108: 91000063     	add	x3, x3, #0x0
		0000000000001108:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xaad
    110c: 52803102     	mov	w2, #0x188              // =392
    1110: 94000000     	bl	0x1110 <irq_handle+0x12c>
		0000000000001110:  R_AARCH64_CALL26	_printk
    1114: 3637fb13     	tbz	w19, #0x6, 0x1074 <irq_handle+0x90>
    1118: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001118:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x449
    111c: 91000000     	add	x0, x0, #0x0
		000000000000111c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x449
    1120: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001120:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1124: 91000021     	add	x1, x1, #0x0
		0000000000001124:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1128: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001128:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xaad
    112c: 91000063     	add	x3, x3, #0x0
		000000000000112c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xaad
    1130: 52803142     	mov	w2, #0x18a              // =394
    1134: 94000000     	bl	0x1134 <irq_handle+0x150>
		0000000000001134:  R_AARCH64_CALL26	_printk
    1138: 362ffa13     	tbz	w19, #0x5, 0x1078 <irq_handle+0x94>
    113c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000113c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x105a
    1140: 91000000     	add	x0, x0, #0x0
		0000000000001140:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x105a
    1144: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001144:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1148: 91000021     	add	x1, x1, #0x0
		0000000000001148:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    114c: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		000000000000114c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xaad
    1150: 91000063     	add	x3, x3, #0x0
		0000000000001150:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xaad
    1154: 52803182     	mov	w2, #0x18c              // =396
    1158: 94000000     	bl	0x1158 <irq_handle+0x174>
		0000000000001158:  R_AARCH64_CALL26	_printk
    115c: 3627f913     	tbz	w19, #0x4, 0x107c <irq_handle+0x98>
    1160: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001160:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xef9
    1164: 91000000     	add	x0, x0, #0x0
		0000000000001164:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xef9
    1168: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001168:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    116c: 91000021     	add	x1, x1, #0x0
		000000000000116c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1170: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001170:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xaad
    1174: 91000063     	add	x3, x3, #0x0
		0000000000001174:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xaad
    1178: 528031c2     	mov	w2, #0x18e              // =398
    117c: 94000000     	bl	0x117c <irq_handle+0x198>
		000000000000117c:  R_AARCH64_CALL26	_printk
    1180: 361ff813     	tbz	w19, #0x3, 0x1080 <irq_handle+0x9c>
    1184: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001184:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x167
    1188: 91000000     	add	x0, x0, #0x0
		0000000000001188:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x167
    118c: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		000000000000118c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1190: 91000021     	add	x1, x1, #0x0
		0000000000001190:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1194: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001194:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xaad
    1198: 91000063     	add	x3, x3, #0x0
		0000000000001198:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xaad
    119c: 52803202     	mov	w2, #0x190              // =400
    11a0: 94000000     	bl	0x11a0 <irq_handle+0x1bc>
		00000000000011a0:  R_AARCH64_CALL26	_printk
    11a4: 17ffffb7     	b	0x1080 <irq_handle+0x9c>
    11a8: 94000000     	bl	0x11a8 <irq_handle+0x1c4>
		00000000000011a8:  R_AARCH64_CALL26	__stack_chk_fail
