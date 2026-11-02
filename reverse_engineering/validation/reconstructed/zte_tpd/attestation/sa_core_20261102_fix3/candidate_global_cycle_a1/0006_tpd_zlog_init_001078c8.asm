
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d4f0 <tpd_zlog_init>:
    d4f0: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d4f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d4f4: 90000009     	adrp	x9, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d4f4:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    d4f8: f9400108     	ldr	x8, [x8]
		000000000000d4f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d4fc: f905f51f     	str	xzr, [x8, #0xbe8]
    d500: 392fc11f     	strb	wzr, [x8, #0xbf0]
    d504: f940012a     	ldr	x10, [x9]
		000000000000d504:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d508: f905fd0a     	str	x10, [x8, #0xbf8]
    d50c: f940012a     	ldr	x10, [x9]
		000000000000d50c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d510: f905a90a     	str	x10, [x8, #0xb50]
    d514: f940012a     	ldr	x10, [x9]
		000000000000d514:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d518: f905ad0a     	str	x10, [x8, #0xb58]
    d51c: f940012a     	ldr	x10, [x9]
		000000000000d51c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d520: f905b10a     	str	x10, [x8, #0xb60]
    d524: f940012a     	ldr	x10, [x9]
		000000000000d524:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d528: f905b50a     	str	x10, [x8, #0xb68]
    d52c: f940012a     	ldr	x10, [x9]
		000000000000d52c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d530: f905b90a     	str	x10, [x8, #0xb70]
    d534: f940012a     	ldr	x10, [x9]
		000000000000d534:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d538: f905bd0a     	str	x10, [x8, #0xb78]
    d53c: f940012a     	ldr	x10, [x9]
		000000000000d53c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d540: f905c10a     	str	x10, [x8, #0xb80]
    d544: f940012a     	ldr	x10, [x9]
		000000000000d544:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d548: f905c50a     	str	x10, [x8, #0xb88]
    d54c: f940012a     	ldr	x10, [x9]
		000000000000d54c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d550: f905c90a     	str	x10, [x8, #0xb90]
    d554: f940012a     	ldr	x10, [x9]
		000000000000d554:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d558: f905cd0a     	str	x10, [x8, #0xb98]
    d55c: f940012a     	ldr	x10, [x9]
		000000000000d55c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d560: f905d10a     	str	x10, [x8, #0xba0]
    d564: f940012a     	ldr	x10, [x9]
		000000000000d564:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d568: f905d50a     	str	x10, [x8, #0xba8]
    d56c: f940012a     	ldr	x10, [x9]
		000000000000d56c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d570: f905d90a     	str	x10, [x8, #0xbb0]
    d574: f940012a     	ldr	x10, [x9]
		000000000000d574:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d578: f905dd0a     	str	x10, [x8, #0xbb8]
    d57c: f940012a     	ldr	x10, [x9]
		000000000000d57c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d580: f905e10a     	str	x10, [x8, #0xbc0]
    d584: f940012a     	ldr	x10, [x9]
		000000000000d584:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d588: f905e50a     	str	x10, [x8, #0xbc8]
    d58c: f940012a     	ldr	x10, [x9]
		000000000000d58c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d590: f905e90a     	str	x10, [x8, #0xbd0]
    d594: f940012a     	ldr	x10, [x9]
		000000000000d594:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d598: f905ed0a     	str	x10, [x8, #0xbd8]
    d59c: f9400129     	ldr	x9, [x9]
		000000000000d59c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d5a0: f905f109     	str	x9, [x8, #0xbe0]
    d5a4: d65f03c0     	ret
