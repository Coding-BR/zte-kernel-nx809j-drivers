
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001040 <tpd_zlog_init>:
    1040: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001040:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1044: 90000009     	adrp	x9, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001044:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    1048: f9400108     	ldr	x8, [x8]
		0000000000001048:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    104c: f905f51f     	str	xzr, [x8, #0xbe8]
    1050: 392fc11f     	strb	wzr, [x8, #0xbf0]
    1054: f940012a     	ldr	x10, [x9]
		0000000000001054:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1058: f905fd0a     	str	x10, [x8, #0xbf8]
    105c: f940012a     	ldr	x10, [x9]
		000000000000105c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1060: f905a90a     	str	x10, [x8, #0xb50]
    1064: f940012a     	ldr	x10, [x9]
		0000000000001064:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1068: f905ad0a     	str	x10, [x8, #0xb58]
    106c: f940012a     	ldr	x10, [x9]
		000000000000106c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1070: f905b10a     	str	x10, [x8, #0xb60]
    1074: f940012a     	ldr	x10, [x9]
		0000000000001074:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1078: f905b50a     	str	x10, [x8, #0xb68]
    107c: f940012a     	ldr	x10, [x9]
		000000000000107c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1080: f905b90a     	str	x10, [x8, #0xb70]
    1084: f940012a     	ldr	x10, [x9]
		0000000000001084:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1088: f905bd0a     	str	x10, [x8, #0xb78]
    108c: f940012a     	ldr	x10, [x9]
		000000000000108c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1090: f905c10a     	str	x10, [x8, #0xb80]
    1094: f940012a     	ldr	x10, [x9]
		0000000000001094:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1098: f905c50a     	str	x10, [x8, #0xb88]
    109c: f940012a     	ldr	x10, [x9]
		000000000000109c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10a0: f905c90a     	str	x10, [x8, #0xb90]
    10a4: f940012a     	ldr	x10, [x9]
		00000000000010a4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10a8: f905cd0a     	str	x10, [x8, #0xb98]
    10ac: f940012a     	ldr	x10, [x9]
		00000000000010ac:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10b0: f905d10a     	str	x10, [x8, #0xba0]
    10b4: f940012a     	ldr	x10, [x9]
		00000000000010b4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10b8: f905d50a     	str	x10, [x8, #0xba8]
    10bc: f940012a     	ldr	x10, [x9]
		00000000000010bc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10c0: f905d90a     	str	x10, [x8, #0xbb0]
    10c4: f940012a     	ldr	x10, [x9]
		00000000000010c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10c8: f905dd0a     	str	x10, [x8, #0xbb8]
    10cc: f940012a     	ldr	x10, [x9]
		00000000000010cc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10d0: f905e10a     	str	x10, [x8, #0xbc0]
    10d4: f940012a     	ldr	x10, [x9]
		00000000000010d4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10d8: f905e50a     	str	x10, [x8, #0xbc8]
    10dc: f940012a     	ldr	x10, [x9]
		00000000000010dc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10e0: f905e90a     	str	x10, [x8, #0xbd0]
    10e4: f940012a     	ldr	x10, [x9]
		00000000000010e4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10e8: f905ed0a     	str	x10, [x8, #0xbd8]
    10ec: f9400129     	ldr	x9, [x9]
		00000000000010ec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    10f0: f905f109     	str	x9, [x8, #0xbe0]
    10f4: d65f03c0     	ret
