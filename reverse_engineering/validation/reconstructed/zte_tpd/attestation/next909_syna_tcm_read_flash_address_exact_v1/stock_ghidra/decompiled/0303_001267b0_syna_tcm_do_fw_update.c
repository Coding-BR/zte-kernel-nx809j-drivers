
void syna_tcm_do_fw_update(long param_1,long param_2,int param_3,uint param_4,ulong param_5)

{
  char *pcVar1;
  long lVar2;
  int iVar3;
  int iVar4;
  char cVar5;
  uint uVar6;
  undefined1 *puVar7;
  ulong uVar8;
  undefined *puVar9;
  undefined *puVar10;
  undefined8 uVar11;
  uint uVar12;
  undefined4 uVar13;
  undefined1 auStack_378 [120];
  long local_300;
  uint local_2f8;
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    puVar7 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != 0) && (param_3 != 0)) {
      if (param_4 == 0) {
        param_4 = 0;
        uVar13 = 0;
        uVar12 = 0;
      }
      else {
        uVar12 = param_4 >> 0x10;
        uVar13 = *(undefined4 *)(param_1 + 0x1e8);
        param_4 = param_4 & 0xffff;
      }
      memset(auStack_378,0,0x310);
      _printk(&DAT_00134e08,"syna_tcm_do_fw_update");
      uVar6 = syna_tcm_parse_fw_image(param_2,param_3,auStack_378);
      if ((int)uVar6 < 0) {
        uVar8 = (ulong)uVar6;
        _printk(&DAT_00133b3c,"syna_tcm_do_fw_update");
        goto LAB_001268a4;
      }
      if ((param_5 & 1) == 0) {
        if (local_2f8 < 0x22) {
          puVar9 = &DAT_0013919c;
LAB_00126914:
          _printk(puVar9,"syna_tcm_compare_image_id_info");
          uVar8 = 0;
          goto LAB_001268a4;
        }
        cVar5 = *(char *)(param_1 + 8);
        iVar3 = *(int *)(param_1 + 0xc);
        lVar2 = 0x10;
        if (cVar5 != '\x02') {
          lVar2 = 0xe;
        }
        iVar4 = *(int *)(local_300 + lVar2);
        _printk(&DAT_0013c982,"syna_tcm_compare_image_id_info",iVar3,iVar4);
        if (iVar4 == iVar3) {
          lVar2 = 0x14;
          if (cVar5 != '\x02') {
            lVar2 = 0x12;
          }
          pcVar1 = (char *)(local_300 + lVar2);
          if (((((*pcVar1 == *(char *)(param_1 + 0xc0)) && (pcVar1[1] == *(char *)(param_1 + 0xc1)))
               && (pcVar1[2] == *(char *)(param_1 + 0xc2))) &&
              (((pcVar1[3] == *(char *)(param_1 + 0xc3) && (pcVar1[4] == *(char *)(param_1 + 0xc4)))
               && ((pcVar1[5] == *(char *)(param_1 + 0xc5) &&
                   ((pcVar1[6] == *(char *)(param_1 + 0xc6) &&
                    (pcVar1[7] == *(char *)(param_1 + 199))))))))) &&
             ((pcVar1[8] == *(char *)(param_1 + 200) &&
              (((((pcVar1[9] == *(char *)(param_1 + 0xc9) &&
                  (pcVar1[10] == *(char *)(param_1 + 0xca))) &&
                 (pcVar1[0xb] == *(char *)(param_1 + 0xcb))) &&
                ((pcVar1[0xc] == *(char *)(param_1 + 0xcc) &&
                 (pcVar1[0xd] == *(char *)(param_1 + 0xcd))))) &&
               ((pcVar1[0xe] == *(char *)(param_1 + 0xce) &&
                (pcVar1[0xf] == *(char *)(param_1 + 0xcf))))))))) {
            puVar9 = &DAT_001329c6;
            goto LAB_00126914;
          }
          puVar9 = &DAT_001373ac;
          uVar11 = 1;
          puVar10 = &DAT_001391d4;
        }
        else {
          puVar9 = &UNK_0013d6ae;
          uVar11 = 9;
          puVar10 = &DAT_0013c9bc;
        }
        _printk(puVar10,"syna_tcm_compare_image_id_info");
        _printk(puVar9,"syna_tcm_compare_image_id_info");
      }
      else {
        uVar11 = 9;
      }
      uVar8 = syna_tcm_do_fw_update_ex(param_1,auStack_378,uVar11,uVar12,param_4,uVar13,1);
      goto LAB_001268a4;
    }
    puVar7 = &DAT_00138b6e;
  }
  _printk(puVar7,"syna_tcm_do_fw_update");
  uVar8 = 0xffffff0f;
LAB_001268a4:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar8);
}

