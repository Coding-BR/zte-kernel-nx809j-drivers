
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined1 * string_change(long param_1,char *param_2,int *param_3)

{
  bool bVar1;
  ulong uVar2;
  bool bVar3;
  bool bVar4;
  code *pcVar5;
  undefined1 uVar6;
  size_t sVar7;
  char *__s;
  undefined1 *puVar8;
  char *pcVar9;
  char *pcVar10;
  long lVar11;
  undefined8 uVar12;
  undefined8 uVar13;
  undefined8 uVar14;
  undefined8 uVar15;
  ulong uVar16;
  int iVar17;
  undefined1 uVar18;
  char *local_80;
  char *local_78;
  char *local_70;
  long local_68;
  
  lVar11 = sp_el0;
  local_68 = *(long *)(lVar11 + 0x710);
  if ((param_2 == (char *)0x0) || (*param_2 == '\0')) {
    puVar8 = (undefined1 *)__kmalloc_cache_noprof(_vfree,0xcc0,1);
    if (puVar8 != (undefined1 *)0x0) {
      *puVar8 = 0;
    }
  }
  else {
    sVar7 = strlen(param_2);
    __s = (char *)__kmalloc_noprof(sVar7 + 1,0xcc0);
    if (__s == (char *)0x0) {
      puVar8 = (undefined1 *)0x0;
    }
    else {
      memcpy(__s,param_2,sVar7 + 1);
      sVar7 = strlen(param_2);
      uVar2 = sVar7 * 3;
      puVar8 = (undefined1 *)__kmalloc_noprof(uVar2,0xcc0);
      if (puVar8 != (undefined1 *)0x0) {
        pcVar9 = strchr(__s,0x3a);
        pcVar10 = (char *)0x0;
        local_70 = __s;
        if (pcVar9 == (char *)0x0) {
LAB_0014f758:
          local_78 = pcVar10;
          if ((*__s == '\0') || (pcVar9 = strsep(&local_70,","), pcVar9 == (char *)0x0))
          goto joined_r0x0014f848;
          bVar4 = false;
          uVar18 = 0;
          iVar17 = 0;
          bVar1 = true;
          do {
            pcVar10 = (char *)trim();
            if (*pcVar10 != '\0') {
              uVar6 = simple_strtoul(pcVar10,0,0x10);
              if ((iVar17 < 0) || (uVar16 = (ulong)iVar17, uVar2 <= uVar16)) goto LAB_0014fbb4;
              iVar17 = iVar17 + 1;
              if (bVar1) {
                bVar4 = true;
                uVar18 = uVar6;
              }
              puVar8[uVar16] = uVar6;
              bVar1 = false;
            }
            pcVar9 = strsep(&local_70,",");
            pcVar10 = local_78;
          } while (pcVar9 != (char *)0x0);
        }
        else {
          pcVar10 = pcVar9 + 1;
          *pcVar9 = '\0';
          if (__s != (char *)0x0) goto LAB_0014f758;
          local_78 = pcVar10;
          pcVar10 = pcVar9 + 1;
joined_r0x0014f848:
          bVar4 = false;
          uVar18 = 0;
          iVar17 = 0;
        }
        if (((pcVar10 != (char *)0x0) && (*pcVar10 != '\0')) &&
           (pcVar10 = strsep(&local_78,"."), pcVar10 != (char *)0x0)) {
          bVar1 = true;
          do {
            pcVar10 = (char *)trim();
            if (*pcVar10 != '\0') {
              bVar3 = false;
              if (!bVar1) {
                bVar3 = bVar4;
              }
              if (bVar3) {
                if ((iVar17 < 0) || (uVar16 = (ulong)iVar17, uVar2 <= uVar16)) {
LAB_0014fbb4:
                    /* WARNING: Does not return */
                  pcVar5 = (code *)SoftwareBreakpoint(1,0x14fbb8);
                  (*pcVar5)();
                }
                iVar17 = iVar17 + 1;
                puVar8[uVar16] = uVar18;
              }
              pcVar9 = strchr(pcVar10,0x3a);
              if (pcVar9 != (char *)0x0) {
                *pcVar9 = '\0';
                lVar11 = trim(pcVar10);
                pcVar10 = (char *)trim(pcVar9 + 1);
                if (lVar11 != 0) {
                  uVar6 = simple_strtoul(lVar11,0,0x10);
                  if ((iVar17 < 0) || (uVar16 = (ulong)iVar17, uVar2 <= uVar16)) goto LAB_0014fbb4;
                  iVar17 = iVar17 + 1;
                  puVar8[uVar16] = uVar6;
                }
              }
              local_80 = pcVar10;
              pcVar10 = strsep(&local_80,",");
              if (pcVar10 != (char *)0x0) {
                uVar12 = trim();
                pcVar10 = strsep(&local_80,",");
                if (pcVar10 != (char *)0x0) {
                  uVar13 = trim();
                  pcVar10 = strsep(&local_80,",");
                  if (pcVar10 != (char *)0x0) {
                    uVar14 = trim();
                    pcVar10 = strsep(&local_80,",");
                    if (pcVar10 != (char *)0x0) {
                      uVar15 = trim();
                      simple_strtoul(uVar12,0,10);
                      simple_strtoul(uVar13,0,10);
                      simple_strtoul(uVar14,0,10);
                      simple_strtoul(uVar15,0,10);
                      puVar8 = (undefined1 *)
                               _printk(&DAT_00169442,"change_coordinate",
                                       *(undefined4 *)(param_1 + 0x608));
                      return puVar8;
                    }
                  }
                }
              }
              bVar1 = false;
            }
            pcVar10 = strsep(&local_78,".");
          } while (pcVar10 != (char *)0x0);
        }
        kfree(__s);
        *param_3 = iVar17;
        goto LAB_0014fc5c;
      }
      kfree();
    }
  }
  *param_3 = 0;
LAB_0014fc5c:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return puVar8;
}

