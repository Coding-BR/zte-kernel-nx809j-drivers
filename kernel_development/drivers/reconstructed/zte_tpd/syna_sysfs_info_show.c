ssize_t syna_sysfs_info_show(struct kobject *kobj,
			     struct kobj_attribute *attr, char *buf)
{
	__int64 a1 = (__int64)kobj;
	__int64 a3 = (__int64)buf;
	tcm_unaligned_u64 *puVar1;
	__int64 uVar2;
	bool bVar3;
	unsigned int uVar4;
	unsigned int uVar5;
	unsigned int uVar6;
	int iVar7;
	__int64 lVar8;
	char *pcVar9;
	__int64 lVar10;
	__int64 lVar11;
	__int64 *plVar12;

	(void)attr;

	plVar12 = *(__int64 **)(*(__int64 *)(a1 + 24) + 0x98);
	lVar11 = *plVar12;
	uVar4 = scnprintf((char *)a3, 0x1000,
			  "Driver version:     %d.%s\n", 1, "9.0");
	uVar5 = uVar4;
	if ((int)uVar4 < 0)
		goto out;

	a3 += (unsigned long)uVar4;
	uVar5 = scnprintf((char *)a3, 0x1000 - (unsigned long)uVar4,
			  "Core lib version:   %d.%02d\n\n", 2, 0xc);
	if ((int)uVar5 < 0)
		goto out;

	a3 += (unsigned long)uVar5;
	uVar4 = uVar5 + uVar4;
	bVar3 = *(_DWORD *)((char *)plVar12 + 0x57c) != 3;
	if ((*((u8 *)plVar12 + 0x582) & 1) == 0) {
		if (!bVar3)
			goto bare_connection;
		pcVar9 = "Device is NOT connected\n";
	} else {
		if (bVar3) {
			uVar6 = scnprintf((char *)a3,
					  0x1000 - (unsigned long)uVar4,
					  "Character Dev. Node: /dev/%s* (ref. count:%d)\n\n",
					  "tcm", *(_DWORD *)((char *)plVar12 + 900));
			uVar5 = uVar6;
			if ((int)uVar6 >= 0) {
				uVar5 = scnprintf(
					(char *)a3 + (unsigned long)uVar6,
					0x1000 - (unsigned long)(uVar6 + uVar4),
					"TouchComm version:  %d\n",
					*(u8 *)(lVar11 + 0x80));
				if ((int)uVar5 >= 0) {
					lVar10 = a3 + (unsigned long)uVar6 +
						 (unsigned long)uVar5;
					uVar4 = uVar5 + uVar6 + uVar4;
					if (*(char *)(lVar11 + 0x81) == '\v') {
						lVar8 = 0x1000 - (unsigned long)uVar4;
						pcVar9 = "Firmware mode:      Bootloader, 0x%02x\n";
					} else if (*(char *)(lVar11 + 0x81) == '\x01') {
						lVar8 = 0x1000 - (unsigned long)uVar4;
						pcVar9 = "Firmware mode:      Application Firmware, 0x%02x\n";
					} else {
						lVar8 = 0x1000 - (unsigned long)uVar4;
						pcVar9 = "Firmware mode:      Mode 0x%02x\n";
					}
					uVar6 = scnprintf((char *)lVar10, lVar8,
							  pcVar9,
							  *(u8 *)(lVar11 + 0x81));
					uVar5 = uVar6;
					if ((int)uVar6 >= 0) {
						lVar10 += (unsigned long)uVar6;
						uVar5 = scnprintf(
							(char *)lVar10,
							0x1000 - (unsigned long)(uVar6 + uVar4),
							"Part number:        ");
						if ((int)uVar5 >= 0) {
							if (((tcm_unaligned_u64 *)(lVar11 + 0x82) != NULL) &&
							    (puVar1 = (tcm_unaligned_u64 *)(lVar10 +
								(unsigned long)uVar5),
							     puVar1 != NULL)) {
								iVar7 = uVar6 + uVar4 + uVar5;
								uVar4 = 0x1000 - iVar7;
								if (0xf < uVar4) {
									uVar2 = *(tcm_unaligned_u64 *)(lVar11 + 0x8a);
									uVar4 = iVar7 + 0x10;
									*puVar1 = *(tcm_unaligned_u64 *)(lVar11 + 0x82);
									puVar1[1] = uVar2;
									uVar5 = scnprintf(
										(char *)(puVar1 + 2),
										0x1000 - (unsigned long)uVar4,
										"\n");
									if ((int)uVar5 >= 0) {
										lVar10 = (__int64)(puVar1 + 2) +
											 (unsigned long)uVar5;
										uVar4 = uVar5 + uVar4;
										uVar6 = scnprintf(
											(char *)lVar10,
											0x1000 - (unsigned long)uVar4,
											"Packrat number:     %d\n\n",
											*(_DWORD *)(lVar11 + 0xc));
										uVar5 = uVar6;
										if ((int)uVar6 >= 0) {
											uVar4 = uVar6 + uVar4;
											uVar5 = uVar4;
											if (*(char *)(lVar11 + 0x81) == '\x01') {
												lVar10 += (unsigned long)uVar6;
												uVar5 = scnprintf(
													(char *)lVar10,
													0x1000 - (unsigned long)uVar4,
													"Config ID:          ");
												if ((int)uVar5 >= 0) {
													lVar10 += (unsigned long)uVar5;
													lVar8 = 0;
													uVar4 = uVar5 + uVar4;
													do {
														uVar5 = scnprintf(
															(char *)lVar10,
															0x1000 - (unsigned long)uVar4,
															"0x%2x ",
															*(u8 *)(lVar11 +
																0x24 + lVar8));
														if ((int)uVar5 < 0)
															goto out;
														lVar8++;
														lVar10 += (unsigned long)uVar5;
														uVar4 = uVar5 + uVar4;
													} while (lVar8 != 0x10);
													uVar6 = scnprintf(
														(char *)lVar10,
														0x1000 - (unsigned long)uVar4,
														"\n");
													uVar5 = uVar6;
													if ((int)uVar6 >= 0) {
														uVar5 = scnprintf(
															(char *)lVar10 +
																(unsigned long)uVar6,
															0x1000 - (unsigned long)(uVar6 +
																uVar4),
															"Max X & Y:          %d, %d\n",
															*(_DWORD *)(lVar11 + 0x10),
															*(_DWORD *)(lVar11 + 0x14));
														if ((int)uVar5 >= 0) {
															lVar10 += (unsigned long)uVar6 +
																(unsigned long)uVar5;
															uVar4 = uVar5 + uVar6 + uVar4;
															uVar5 = scnprintf(
																(char *)lVar10,
																0x1000 - (unsigned long)uVar4,
																"Num of objects:     %d\n",
																*(_DWORD *)(lVar11 + 0x18));
															if ((int)uVar5 >= 0) {
																lVar10 += (unsigned long)uVar5;
																uVar4 = uVar5 + uVar4;
																uVar5 = scnprintf(
																	(char *)lVar10,
																	0x1000 - (unsigned long)uVar4,
																	"Num of cols & rows: %d, %d\n",
																	*(_DWORD *)(lVar11 + 0x20),
																	*(_DWORD *)(lVar11 + 0x1c));
																if ((int)uVar5 >= 0) {
																	lVar10 += (unsigned long)uVar5;
																	uVar4 = uVar5 + uVar4;
																	uVar5 = scnprintf(
																		(char *)lVar10,
																		0x1000 - (unsigned long)uVar4,
																		"Max. Read Size:     %d bytes\n",
																		*(_DWORD *)(lVar11 + 0x3c));
																	if ((int)uVar5 >= 0) {
																		uVar4 = uVar5 + uVar4;
																		iVar7 = scnprintf(
																			(char *)lVar10 +
																				(unsigned long)uVar5,
																			0x1000 - (unsigned long)uVar4,
																			"Max. Write Size:    %d bytes\n",
																			*(_DWORD *)(lVar11 + 0x38));
																		uVar5 = 0;
																		if (iVar7 >= 0)
																			uVar5 = uVar4;
																		uVar5 += iVar7;
																	}
																}
															}
														}
													}
												}
											}
										}
									}
									goto out;
								}
								printk(
									"\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n",
									"syna_pal_mem_cpy", 0x10, uVar4, 0x10);
							}
							printk(
								"\0013[error] %s: Fail to copy part number string\n",
								"syna_sysfs_info_show");
							uVar5 = 0xffffffea;
						}
					}
				}
			}
			goto out;
		}
bare_connection:
		pcVar9 = "Device in BARE connection\n";
	}
	iVar7 = scnprintf((char *)a3,
			  0x1000 - (unsigned long)uVar4, pcVar9);
	uVar5 = iVar7 + uVar4;

out:
	return (ssize_t)(int)uVar5;
}
