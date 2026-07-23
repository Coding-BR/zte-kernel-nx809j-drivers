
long syna_sysfs_info_show(long param_1,undefined8 param_2,long param_3)

{
  undefined8 *puVar1;
  char *pcVar2;
  bool bVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  char *pcVar8;
  undefined8 uVar9;
  long lVar10;
  long *plVar11;
  long lVar12;
  long lVar13;
  
  plVar11 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  lVar12 = *plVar11;
  uVar4 = scnprintf(param_3,0x1000,"Driver version:     %d.%s\n",1,&DAT_0016736d);
  uVar5 = uVar4;
  if ((int)uVar4 < 0) goto LAB_0014a7b4;
  param_3 = (ulong)uVar4 + param_3;
  uVar5 = scnprintf(param_3,0x1000 - (ulong)uVar4,"Core lib version:   %d.%02d\n\n",2,0xc);
  if ((int)uVar5 < 0) goto LAB_0014a7b4;
  param_3 = param_3 + (ulong)uVar5;
  uVar4 = uVar5 + uVar4;
  bVar3 = *(int *)((long)plVar11 + 0x57c) == 3;
  if ((*(byte *)((long)plVar11 + 0x582) & 1) == 0) {
    if (bVar3) goto LAB_0014a4cc;
    pcVar8 = "Device is NOT connected\n";
  }
  else {
    if (!bVar3) {
      uVar7 = scnprintf(param_3,0x1000 - (ulong)uVar4,
                        "Character Dev. Node: /dev/%s* (ref. count:%d)\n\n",&DAT_00166ee8,
                        *(undefined4 *)((long)plVar11 + 900));
      uVar5 = uVar7;
      if (-1 < (int)uVar7) {
        uVar5 = scnprintf(param_3 + (ulong)uVar7,0x1000 - (ulong)(uVar7 + uVar4),
                          "TouchComm version:  %d\n",*(undefined1 *)(lVar12 + 0x80));
        if (-1 < (int)uVar5) {
          lVar10 = param_3 + (ulong)uVar7 + (ulong)uVar5;
          uVar4 = uVar7 + uVar4 + uVar5;
          pcVar8 = "Firmware mode:      Application Firmware, 0x%02x\n";
          if (*(char *)(lVar12 + 0x81) != '\x01') {
            pcVar8 = "Firmware mode:      Mode 0x%02x\n";
          }
          pcVar2 = "Firmware mode:      Bootloader, 0x%02x\n";
          if (*(char *)(lVar12 + 0x81) != '\v') {
            pcVar2 = pcVar8;
          }
          uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,pcVar2);
          if (-1 < (int)uVar5) {
            lVar10 = lVar10 + (ulong)uVar5;
            uVar4 = uVar5 + uVar4;
            uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Part number:        ");
            if (-1 < (int)uVar5) {
              if ((lVar12 != -0x82) &&
                 (puVar1 = (undefined8 *)(lVar10 + (ulong)uVar5), puVar1 != (undefined8 *)0x0)) {
                iVar6 = uVar5 + uVar4;
                uVar4 = 0x1000 - iVar6;
                if (0xf < uVar4) {
                  uVar9 = *(undefined8 *)(lVar12 + 0x8a);
                  uVar4 = iVar6 + 0x10;
                  *puVar1 = *(undefined8 *)(lVar12 + 0x82);
                  puVar1[1] = uVar9;
                  uVar5 = scnprintf(puVar1 + 2,0x1000 - (ulong)uVar4,&DAT_00167123);
                  if (-1 < (int)uVar5) {
                    lVar10 = (long)(puVar1 + 2) + (ulong)uVar5;
                    uVar4 = uVar5 + uVar4;
                    uVar7 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Packrat number:     %d\n\n",
                                      *(undefined4 *)(lVar12 + 0xc));
                    uVar5 = uVar7;
                    if (-1 < (int)uVar7) {
                      uVar4 = uVar7 + uVar4;
                      uVar5 = uVar4;
                      if (*(char *)(lVar12 + 0x81) == '\x01') {
                        lVar10 = lVar10 + (ulong)uVar7;
                        uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Config ID:          ");
                        if (-1 < (int)uVar5) {
                          lVar10 = lVar10 + (ulong)uVar5;
                          lVar13 = 0;
                          uVar4 = uVar5 + uVar4;
                          do {
                            uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"0x%2x ",
                                              *(undefined1 *)(lVar12 + 0x24 + lVar13));
                            if ((int)uVar5 < 0) goto LAB_0014a7b4;
                            lVar13 = lVar13 + 1;
                            lVar10 = lVar10 + (ulong)uVar5;
                            uVar4 = uVar5 + uVar4;
                          } while (lVar13 != 0x10);
                          uVar7 = scnprintf(lVar10,0x1000 - (ulong)uVar4,&DAT_00167123);
                          uVar5 = uVar7;
                          if ((-1 < (int)uVar7) &&
                             (uVar5 = scnprintf(lVar10 + (ulong)uVar7,
                                                0x1000 - (ulong)(uVar7 + uVar4),
                                                "Max X & Y:          %d, %d\n",
                                                *(undefined4 *)(lVar12 + 0x10),
                                                *(undefined4 *)(lVar12 + 0x14)), -1 < (int)uVar5)) {
                            uVar4 = uVar5 + uVar7 + uVar4;
                            lVar10 = lVar10 + (ulong)(uVar5 + uVar7);
                            uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                              "Num of objects:     %d\n",
                                              *(undefined4 *)(lVar12 + 0x18));
                            if (-1 < (int)uVar5) {
                              lVar10 = lVar10 + (ulong)uVar5;
                              uVar4 = uVar5 + uVar4;
                              uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                                "Num of cols & rows: %d, %d\n",
                                                *(undefined4 *)(lVar12 + 0x20),
                                                *(undefined4 *)(lVar12 + 0x1c));
                              if (-1 < (int)uVar5) {
                                lVar10 = lVar10 + (ulong)uVar5;
                                uVar4 = uVar5 + uVar4;
                                uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                                  "Max. Read Size:     %d bytes\n",
                                                  *(undefined4 *)(lVar12 + 0x3c));
                                if (-1 < (int)uVar5) {
                                  uVar4 = uVar5 + uVar4;
                                  iVar6 = scnprintf(lVar10 + (ulong)uVar5,0x1000 - (ulong)uVar4,
                                                    "Max. Write Size:    %d bytes\n",
                                                    *(undefined4 *)(lVar12 + 0x38));
                                  uVar5 = 0;
                                  if (-1 < iVar6) {
                                    uVar5 = uVar4;
                                  }
                                  uVar5 = uVar5 + iVar6;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                  goto LAB_0014a7b4;
                }
                _printk(&DAT_0016738d,"syna_pal_mem_cpy",0x10,uVar4,0x10);
              }
              _printk(&DAT_00168186,"syna_sysfs_info_show");
              uVar5 = 0xffffffea;
            }
          }
        }
      }
      goto LAB_0014a7b4;
    }
LAB_0014a4cc:
    pcVar8 = "Device in BARE connection\n";
  }
  iVar6 = scnprintf(param_3,0x1000 - (ulong)uVar4,pcVar8);
  uVar5 = iVar6 + uVar4;
LAB_0014a7b4:
  return (long)(int)uVar5;
}

