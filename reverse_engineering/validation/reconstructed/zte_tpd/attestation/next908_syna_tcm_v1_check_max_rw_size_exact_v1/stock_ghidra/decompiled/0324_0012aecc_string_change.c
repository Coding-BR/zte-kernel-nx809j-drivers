
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined1 * string_change(long param_1,char *param_2,int *param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  bool bVar4;
  ulong uVar5;
  bool bVar6;
  bool bVar7;
  code *pcVar8;
  undefined1 uVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  size_t sVar14;
  char *__s;
  undefined1 *puVar15;
  char *pcVar16;
  char *pcVar17;
  long lVar18;
  undefined8 uVar19;
  undefined8 uVar20;
  undefined8 uVar21;
  undefined8 uVar22;
  undefined1 uVar23;
  ulong uVar24;
  undefined1 uVar25;
  undefined1 uVar26;
  undefined1 uVar27;
  undefined1 uVar28;
  byte bVar29;
  undefined1 uVar30;
  int iVar31;
  undefined1 uVar32;
  char *local_80;
  char *local_78;
  char *local_70;
  long local_68;
  
  lVar18 = sp_el0;
  local_68 = *(long *)(lVar18 + 0x710);
  if ((param_2 == (char *)0x0) || (*param_2 == '\0')) {
    puVar15 = (undefined1 *)__kmalloc_cache_noprof(_remove_proc_entry,0xcc0,1);
    if (puVar15 != (undefined1 *)0x0) {
      *puVar15 = 0;
    }
  }
  else {
    sVar14 = strlen(param_2);
    __s = (char *)__kmalloc_noprof(sVar14 + 1,0xcc0);
    if (__s == (char *)0x0) {
      puVar15 = (undefined1 *)0x0;
    }
    else {
      memcpy(__s,param_2,sVar14 + 1);
      sVar14 = strlen(param_2);
      uVar5 = sVar14 * 3;
      puVar15 = (undefined1 *)__kmalloc_noprof(uVar5,0xcc0);
      if (puVar15 != (undefined1 *)0x0) {
        pcVar16 = strchr(__s,0x3a);
        pcVar17 = (char *)0x0;
        local_70 = __s;
        if (pcVar16 == (char *)0x0) {
LAB_0012af98:
          local_78 = pcVar17;
          if ((*__s == '\0') || (pcVar16 = strsep(&local_70,","), pcVar16 == (char *)0x0))
          goto joined_r0x0012b088;
          bVar7 = false;
          uVar32 = 0;
          iVar31 = 0;
          bVar4 = true;
          do {
            pcVar17 = (char *)trim();
            if (*pcVar17 != '\0') {
              uVar9 = simple_strtoul(pcVar17,0,0x10);
              if ((iVar31 < 0) || (uVar24 = (ulong)iVar31, uVar5 <= uVar24)) goto LAB_0012b3f4;
              iVar31 = iVar31 + 1;
              if (bVar4) {
                bVar7 = true;
                uVar32 = uVar9;
              }
              puVar15[uVar24] = uVar9;
              bVar4 = false;
            }
            pcVar16 = strsep(&local_70,",");
            pcVar17 = local_78;
          } while (pcVar16 != (char *)0x0);
        }
        else {
          pcVar17 = pcVar16 + 1;
          *pcVar16 = '\0';
          if (__s != (char *)0x0) goto LAB_0012af98;
          local_78 = pcVar17;
          pcVar17 = pcVar16 + 1;
joined_r0x0012b088:
          bVar7 = false;
          uVar32 = 0;
          iVar31 = 0;
        }
        if (((pcVar17 != (char *)0x0) && (*pcVar17 != '\0')) &&
           (pcVar17 = strsep(&local_78,"."), pcVar17 != (char *)0x0)) {
          bVar4 = true;
          do {
            pcVar17 = (char *)trim();
            if (*pcVar17 != '\0') {
              bVar6 = false;
              if (!bVar4) {
                bVar6 = bVar7;
              }
              if (bVar6) {
                if ((iVar31 < 0) || (uVar24 = (ulong)iVar31, uVar5 <= uVar24)) goto LAB_0012b3f4;
                iVar31 = iVar31 + 1;
                puVar15[uVar24] = uVar32;
              }
              pcVar16 = strchr(pcVar17,0x3a);
              if (pcVar16 != (char *)0x0) {
                *pcVar16 = '\0';
                lVar18 = trim(pcVar17);
                pcVar17 = (char *)trim(pcVar16 + 1);
                if (lVar18 != 0) {
                  uVar9 = simple_strtoul(lVar18,0,0x10);
                  if ((iVar31 < 0) || (uVar24 = (ulong)iVar31, uVar5 <= uVar24)) goto LAB_0012b3f4;
                  iVar31 = iVar31 + 1;
                  puVar15[uVar24] = uVar9;
                }
              }
              local_80 = pcVar17;
              pcVar17 = strsep(&local_80,",");
              if (pcVar17 != (char *)0x0) {
                uVar19 = trim();
                pcVar17 = strsep(&local_80,",");
                if (pcVar17 != (char *)0x0) {
                  uVar20 = trim();
                  pcVar17 = strsep(&local_80,",");
                  if (pcVar17 != (char *)0x0) {
                    uVar21 = trim();
                    pcVar17 = strsep(&local_80,",");
                    if (pcVar17 != (char *)0x0) {
                      uVar22 = trim();
                      iVar10 = simple_strtoul(uVar19,0,10);
                      iVar11 = simple_strtoul(uVar20,0,10);
                      iVar12 = simple_strtoul(uVar21,0,10);
                      iVar13 = simple_strtoul(uVar22,0,10);
                      _printk(&DAT_0013496c,"change_coordinate",*(undefined4 *)(param_1 + 0x608));
                      if (*(int *)(param_1 + 0x608) == 3) {
                        iVar3 = iVar13 * 10 + -1;
                        uVar1 = (0xa80 - iVar12) * 10 - 1;
                        uVar2 = (0xa80 - iVar10) * 10 | 1;
                        uVar26 = (undefined1)((uint)iVar3 >> 8);
                        uVar9 = (undefined1)(((0xa80 - iVar10) * 5 & 0x7fffffffU) >> 7);
                        uVar28 = (undefined1)(uVar1 >> 8);
LAB_0012b2ec:
                        uVar23 = (undefined1)uVar2;
                        uVar25 = (undefined1)iVar3;
                        uVar27 = (undefined1)uVar1;
                        bVar29 = (char)iVar11 * '\n' | 1;
                        uVar30 = (undefined1)((uint)(iVar11 * 10) >> 8);
                      }
                      else {
                        if (*(int *)(param_1 + 0x608) == 1) {
                          uVar2 = iVar12 * 10 - 1;
                          iVar3 = (0x4c0 - iVar11) * 10 + -1;
                          uVar9 = (undefined1)(uVar2 >> 8);
                          uVar1 = iVar10 * 10 | 1;
                          uVar26 = (undefined1)((uint)iVar3 >> 8);
                          uVar28 = (undefined1)((iVar10 * 5 & 0x7fffffffU) >> 7);
                          iVar11 = 0x4c0 - iVar13;
                          goto LAB_0012b2ec;
                        }
                        uVar23 = 0;
                        uVar9 = 0;
                        uVar25 = 0;
                        uVar26 = 0;
                        uVar27 = 0;
                        uVar28 = 0;
                        bVar29 = 0;
                        uVar30 = 0;
                      }
                      if ((iVar31 < 0) || (uVar5 <= (ulong)(long)iVar31)) {
LAB_0012b3f4:
                    /* WARNING: Does not return */
                        pcVar8 = (code *)SoftwareBreakpoint(1,0x12b3f8);
                        (*pcVar8)();
                      }
                      iVar11 = iVar31 + 1;
                      puVar15[iVar31] = bVar29;
                      if ((iVar11 < 0) || (uVar5 <= (ulong)(long)iVar11)) goto LAB_0012b3f4;
                      iVar10 = iVar31 + 2;
                      puVar15[iVar11] = uVar30;
                      if ((iVar10 < 0) || (uVar5 <= (ulong)(long)iVar10)) goto LAB_0012b3f4;
                      iVar11 = iVar31 + 3;
                      puVar15[iVar10] = uVar27;
                      if ((iVar11 < 0) || (uVar5 <= (ulong)(long)iVar11)) goto LAB_0012b3f4;
                      iVar10 = iVar31 + 4;
                      puVar15[iVar11] = uVar28;
                      if ((iVar10 < 0) || (uVar5 <= (ulong)(long)iVar10)) goto LAB_0012b3f4;
                      iVar11 = iVar31 + 5;
                      puVar15[iVar10] = uVar25;
                      if ((iVar11 < 0) || (uVar5 <= (ulong)(long)iVar11)) goto LAB_0012b3f4;
                      iVar10 = iVar31 + 6;
                      puVar15[iVar11] = uVar26;
                      if ((iVar10 < 0) || (uVar5 <= (ulong)(long)iVar10)) goto LAB_0012b3f4;
                      iVar11 = iVar31 + 7;
                      puVar15[iVar10] = uVar23;
                      if ((iVar11 < 0) || (uVar5 <= (ulong)(long)iVar11)) goto LAB_0012b3f4;
                      iVar31 = iVar31 + 8;
                      puVar15[iVar11] = uVar9;
                    }
                  }
                }
              }
              bVar4 = false;
            }
            pcVar17 = strsep(&local_78,".");
          } while (pcVar17 != (char *)0x0);
        }
        kfree(__s);
        *param_3 = iVar31;
        goto LAB_0012b49c;
      }
      kfree();
    }
  }
  *param_3 = 0;
LAB_0012b49c:
  lVar18 = sp_el0;
  if (*(long *)(lVar18 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return puVar15;
}

