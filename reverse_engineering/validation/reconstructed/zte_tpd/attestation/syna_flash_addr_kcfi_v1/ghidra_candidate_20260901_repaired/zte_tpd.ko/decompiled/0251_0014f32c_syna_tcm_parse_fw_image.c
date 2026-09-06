
undefined8 syna_tcm_parse_fw_image(int *param_1,int param_2,int *param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  size_t __n;
  undefined8 uVar5;
  undefined *puVar6;
  char *pcVar7;
  long lVar8;
  long lVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  ulong __maxlen;
  char *__string;
  
  if (param_1 == (int *)0x0) {
    puVar6 = &DAT_0016f5b4;
  }
  else if (param_3 == (int *)0x0) {
    puVar6 = &DAT_0016f9b2;
  }
  else if (param_2 == 0) {
    puVar6 = &DAT_0016d75a;
  }
  else {
    memset(param_3 + 1,0,0x30c);
    *(int **)(param_3 + 2) = param_1;
    *param_3 = param_2;
    if (*param_1 == 0x4818472b) {
      iVar2 = param_1[1];
      if (iVar2 != 0) {
        iVar11 = 0;
        pcVar7 = " ";
        uVar12 = 8;
        do {
          piVar1 = (int *)((long)param_1 + (ulong)*(uint *)((long)param_1 + (ulong)uVar12));
          if (*piVar1 == 0x7c05e516) {
            uVar10 = 0x16;
            while( true ) {
              if (uVar10 < 0x17) {
                __maxlen = *(ulong *)(&UNK_0019bc48 + (ulong)uVar10 * 8);
                __string = (&PTR_s_APP_CODE_0019bd00)[uVar10];
              }
              else {
                __maxlen = 2;
                __string = pcVar7;
              }
              __n = strnlen(__string,__maxlen);
              if (__maxlen < __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(2,__maxlen,__n + 1);
              }
              if (__maxlen <= __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(4,__maxlen,__n + 1);
              }
              iVar3 = strncmp((char *)(piVar1 + 1),__string,__n);
              if (iVar3 == 0) break;
              uVar10 = uVar10 - 1;
              if (uVar10 == 0xfffffffe) {
                uVar5 = _printk(&DAT_0016d804,"syna_tcm_get_partition_id",piVar1 + 1);
                return uVar5;
              }
            }
            if (uVar10 < 0x17) {
              uVar10 = uVar10 + 1;
              lVar9 = 0x1c;
              lVar8 = 0x24;
LAB_0014f4a4:
              param_3 = param_3 + (ulong)uVar10 * 8 + 4;
              if (param_3 == (int *)0x0) {
                puVar6 = &DAT_00168734;
              }
              else {
                if (piVar1 != (int *)0x0) {
                  iVar2 = *(int *)((long)piVar1 + lVar9);
                  lVar8 = (long)piVar1 + lVar8;
                  if (uVar10 == 0x14) {
                    *(long *)(param_3 + 2) = lVar8;
                    *(undefined1 *)(param_3 + 6) = 0x14;
                    param_3[4] = iVar2;
                    param_3[5] = 0;
                    *(undefined1 *)param_3 = 1;
                    uVar5 = _printk(&DAT_0016f9ee,"syna_tcm_save_flash_partition_data",iVar2);
                    return uVar5;
                  }
                  uVar12 = piVar1[8];
                  uVar4 = crc32_le(0xffffffff,lVar8,iVar2);
                  if (uVar12 == ~uVar4) {
                    iVar11 = piVar1[6];
                    *(char *)(param_3 + 6) = (char)uVar10;
                    iVar11 = iVar11 << 1;
                    *(long *)(param_3 + 2) = lVar8;
                    param_3[7] = uVar12;
                    *(undefined1 *)param_3 = 1;
                    param_3[4] = iVar2;
                    param_3[5] = iVar11;
                    if (uVar10 - 1 < 0x17) {
                      pcVar7 = (&PTR_s_APP_CODE_0019bdb8)[uVar10 - 1];
                    }
                    uVar5 = _printk(&DAT_0016940c,"syna_tcm_save_flash_partition_data",pcVar7,iVar11
                                    ,iVar11,iVar2);
                    return uVar5;
                  }
                  if (uVar10 - 1 < 0x17) {
                    pcVar7 = (&PTR_s_APP_CODE_0019bdb8)[uVar10 - 1];
                  }
                  uVar5 = _printk(&DAT_00171e56,"syna_tcm_save_flash_partition_data",pcVar7,uVar12);
                  return uVar5;
                }
                puVar6 = &DAT_001730ac;
              }
              uVar5 = _printk(puVar6,"syna_tcm_save_flash_partition_data");
              return uVar5;
            }
          }
          else if (*piVar1 == -0x3e04be28) {
            uVar10 = 0x14;
            lVar9 = 4;
            lVar8 = 8;
            goto LAB_0014f4a4;
          }
          iVar11 = iVar11 + 1;
          uVar12 = uVar12 + 4;
        } while (iVar11 != iVar2);
      }
      return 0;
    }
    puVar6 = &DAT_00168042;
  }
  uVar5 = _printk(puVar6,"syna_tcm_parse_fw_image");
  return uVar5;
}

