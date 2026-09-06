
int syna_tcm_testing_build_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  undefined8 *puVar6;
  byte bVar7;
  int local_7c;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  iVar3 = -0xa1;
  if ((param_1 == 0) || (param_2 == 0)) goto LAB_0011d370;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_7c = 0;
  iVar3 = syna_tcm_identify(param_1,&local_78,0);
  if (iVar3 < 0) {
    _printk(&DAT_00132ec9,"syna_tcm_testing_build_id");
    *(undefined1 *)(param_2 + 0x10) = 0;
    iVar3 = -0xa3;
    puVar5 = &DAT_00134181;
  }
  else {
    local_7c = local_68._2_4_;
    if ((*(long *)(param_2 + 0xd8) != 0) &&
       (iVar4 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xd8),4), -1 < iVar4)) {
      syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xd8),
                       *(undefined4 *)(*(undefined8 **)(param_2 + 0xd8) + 1),&local_7c,4,4);
      *(undefined4 *)(*(long *)(param_2 + 0xd8) + 0xc) = 4;
    }
    if ((*(long *)(param_2 + 0xe0) != 0) &&
       (iVar4 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xe0),0x10), -1 < iVar4)) {
      syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xe0),
                       *(undefined4 *)(*(undefined8 **)(param_2 + 0xe0) + 1),(ulong)&local_78 | 2,
                       0x10,0x10);
      *(undefined4 *)(*(long *)(param_2 + 0xe0) + 0xc) = 0x10;
    }
    if ((param_3 & 1) == 0) {
      puVar6 = *(undefined8 **)(param_2 + 0x38);
      if (((puVar6 == (undefined8 *)0x0) || (*(uint *)(puVar6 + 1) < 4)) ||
         (*(int *)*puVar6 == local_7c)) {
        bVar7 = 1;
        puVar6 = *(undefined8 **)(param_2 + 0x40);
        if (puVar6 != (undefined8 *)0x0) goto LAB_0011d4fc;
LAB_0011d504:
        bVar2 = 1;
      }
      else {
        _printk(&DAT_001353dd,"syna_tcm_testing_0001_check_build_id");
        bVar7 = 0;
        puVar6 = *(undefined8 **)(param_2 + 0x40);
        if (puVar6 == (undefined8 *)0x0) goto LAB_0011d504;
LAB_0011d4fc:
        if (*(int *)(puVar6 + 1) == 0) goto LAB_0011d504;
        bVar2 = syna_tcm_testing_0001_check_device_id((ulong)&local_78 | 2,*puVar6);
      }
      *(byte *)(param_2 + 0x10) = bVar7 & bVar2;
      puVar5 = &DAT_001396de;
      if ((bVar7 & bVar2) == 0) {
        iVar3 = -0xa2;
        puVar5 = &DAT_00134181;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar5 = &DAT_001396de;
    }
  }
  _printk(&DAT_00133a8b,"syna_tcm_testing_build_id",puVar5);
LAB_0011d370:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return iVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

