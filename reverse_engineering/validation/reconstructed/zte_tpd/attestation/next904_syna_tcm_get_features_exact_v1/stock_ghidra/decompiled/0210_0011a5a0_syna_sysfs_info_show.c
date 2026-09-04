
long syna_sysfs_info_show(long param_1,undefined8 param_2,long param_3)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  bool bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  long lVar8;
  char *pcVar9;
  long lVar10;
  long lVar11;
  long *plVar12;
  
  plVar12 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  lVar11 = *plVar12;
  uVar4 = scnprintf(param_3,0x1000,"Driver version:     %d.%s\n",1,&DAT_0013a013);
  uVar5 = uVar4;
  if ((int)uVar4 < 0) goto LAB_0011a944;
  param_3 = param_3 + (ulong)uVar4;
  uVar5 = scnprintf(param_3,0x1000 - (ulong)uVar4,"Core lib version:   %d.%02d\n\n",2,0xc);
  if ((int)uVar5 < 0) goto LAB_0011a944;
  param_3 = param_3 + (ulong)uVar5;
  uVar4 = uVar5 + uVar4;
  bVar3 = *(int *)((long)plVar12 + 0x57c) != 3;
  if ((*(byte *)((long)plVar12 + 0x582) & 1) == 0) {
    if (!bVar3) goto LAB_0011a6cc;
    pcVar9 = "Device is NOT connected\n";
  }
  else {
    if (bVar3) {
      uVar6 = scnprintf(param_3,0x1000 - (ulong)uVar4,
                        "Character Dev. Node: /dev/%s* (ref. count:%d)\n\n",&DAT_0013965d,
                        *(undefined4 *)((long)plVar12 + 900));
      uVar5 = uVar6;
      if (-1 < (int)uVar6) {
        uVar5 = scnprintf(param_3 + (ulong)uVar6,0x1000 - (ulong)(uVar6 + uVar4),
                          "TouchComm version:  %d\n",*(undefined1 *)(lVar11 + 0x80));
        if (-1 < (int)uVar5) {
          lVar10 = param_3 + (ulong)uVar6 + (ulong)uVar5;
          uVar4 = uVar5 + uVar6 + uVar4;
          if (*(char *)(lVar11 + 0x81) == '\v') {
            lVar8 = 0x1000 - (ulong)uVar4;
            pcVar9 = "Firmware mode:      Bootloader, 0x%02x\n";
          }
          else if (*(char *)(lVar11 + 0x81) == '\x01') {
            lVar8 = 0x1000 - (ulong)uVar4;
            pcVar9 = "Firmware mode:      Application Firmware, 0x%02x\n";
          }
          else {
            lVar8 = 0x1000 - (ulong)uVar4;
            pcVar9 = "Firmware mode:      Mode 0x%02x\n";
          }
          uVar6 = scnprintf(lVar10,lVar8,pcVar9);
          uVar5 = uVar6;
          if (-1 < (int)uVar6) {
            lVar10 = lVar10 + (ulong)uVar6;
            uVar5 = scnprintf(lVar10,0x1000 - (ulong)(uVar6 + uVar4),"Part number:        ");
            if (-1 < (int)uVar5) {
              if (((undefined8 *)(lVar11 + 0x82) != (undefined8 *)0x0) &&
                 (puVar1 = (undefined8 *)(lVar10 + (ulong)uVar5), puVar1 != (undefined8 *)0x0)) {
                iVar7 = uVar6 + uVar4 + uVar5;
                uVar4 = 0x1000 - iVar7;
                if (0xf < uVar4) {
                  uVar2 = *(undefined8 *)(lVar11 + 0x8a);
                  uVar4 = iVar7 + 0x10;
                  *puVar1 = *(undefined8 *)(lVar11 + 0x82);
                  puVar1[1] = uVar2;
                  uVar5 = scnprintf(puVar1 + 2,0x1000 - (ulong)uVar4,&DAT_00139994);
                  if (-1 < (int)uVar5) {
                    lVar10 = (long)(puVar1 + 2) + (ulong)uVar5;
                    uVar4 = uVar5 + uVar4;
                    uVar6 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Packrat number:     %d\n\n",
                                      *(undefined4 *)(lVar11 + 0xc));
                    uVar5 = uVar6;
                    if (-1 < (int)uVar6) {
                      uVar4 = uVar6 + uVar4;
                      uVar5 = uVar4;
                      if (*(char *)(lVar11 + 0x81) == '\x01') {
                        lVar10 = lVar10 + (ulong)uVar6;
                        uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Config ID:          ");
                        if (-1 < (int)uVar5) {
                          lVar10 = lVar10 + (ulong)uVar5;
                          lVar8 = 0;
                          uVar4 = uVar5 + uVar4;
                          do {
                            uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"0x%2x ",
                                              *(undefined1 *)(lVar11 + 0x24 + lVar8));
                            if ((int)uVar5 < 0) goto LAB_0011a944;
                            lVar8 = lVar8 + 1;
                            lVar10 = lVar10 + (ulong)uVar5;
                            uVar4 = uVar5 + uVar4;
                          } while (lVar8 != 0x10);
                          uVar6 = scnprintf(lVar10,0x1000 - (ulong)uVar4,&DAT_00139994);
                          uVar5 = uVar6;
                          if (-1 < (int)uVar6) {
                            uVar5 = scnprintf(lVar10 + (ulong)uVar6,0x1000 - (ulong)(uVar6 + uVar4),
                                              "Max X & Y:          %d, %d\n",
                                              *(undefined4 *)(lVar11 + 0x10),
                                              *(undefined4 *)(lVar11 + 0x14));
                            if (-1 < (int)uVar5) {
                              lVar10 = lVar10 + (ulong)uVar6 + (ulong)uVar5;
                              uVar4 = uVar5 + uVar6 + uVar4;
                              uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                                "Num of objects:     %d\n",
                                                *(undefined4 *)(lVar11 + 0x18));
                              if (-1 < (int)uVar5) {
                                lVar10 = lVar10 + (ulong)uVar5;
                                uVar4 = uVar5 + uVar4;
                                uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                                  "Num of cols & rows: %d, %d\n",
                                                  *(undefined4 *)(lVar11 + 0x20),
                                                  *(undefined4 *)(lVar11 + 0x1c));
                                if (-1 < (int)uVar5) {
                                  lVar10 = lVar10 + (ulong)uVar5;
                                  uVar4 = uVar5 + uVar4;
                                  uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                                    "Max. Read Size:     %d bytes\n",
                                                    *(undefined4 *)(lVar11 + 0x3c));
                                  if (-1 < (int)uVar5) {
                                    uVar4 = uVar5 + uVar4;
                                    iVar7 = scnprintf(lVar10 + (ulong)uVar5,0x1000 - (ulong)uVar4,
                                                      "Max. Write Size:    %d bytes\n",
                                                      *(undefined4 *)(lVar11 + 0x38));
                                    uVar5 = 0;
                                    if (-1 < iVar7) {
                                      uVar5 = uVar4;
                                    }
                                    uVar5 = uVar5 + iVar7;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                  goto LAB_0011a944;
                }
                _printk(&DAT_0013a172,"syna_pal_mem_cpy",0x10,uVar4,0x10);
              }
              _printk(&DAT_0013c027,"syna_sysfs_info_show");
              uVar5 = 0xffffffea;
            }
          }
        }
      }
      goto LAB_0011a944;
    }
LAB_0011a6cc:
    pcVar9 = "Device in BARE connection\n";
  }
  iVar7 = scnprintf(param_3,0x1000 - (ulong)uVar4,pcVar9);
  uVar5 = iVar7 + uVar4;
LAB_0011a944:
  return (long)(int)uVar5;
}

