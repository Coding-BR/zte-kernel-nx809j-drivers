
undefined8 syna_tcm_testing_build_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined *puVar4;
  undefined8 *puVar5;
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
  if ((param_1 == 0) || (param_2 == 0)) {
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == local_48) {
      return 0xffffff5f;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_7c = 0;
  iVar3 = syna_tcm_identify(param_1,&local_78,0);
  if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e4cb,"syna_tcm_testing_build_id");
  }
  local_7c = local_68._2_4_;
  if ((*(long *)(param_2 + 0xd8) != 0) &&
     (iVar3 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xd8),4), -1 < iVar3)) {
    syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xd8),
                     *(undefined4 *)(*(undefined8 **)(param_2 + 0xd8) + 1),&local_7c,4,4);
    *(undefined4 *)(*(long *)(param_2 + 0xd8) + 0xc) = 4;
  }
  if ((*(long *)(param_2 + 0xe0) != 0) &&
     (iVar3 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xe0),0x10), -1 < iVar3)) {
    syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xe0),
                     *(undefined4 *)(*(undefined8 **)(param_2 + 0xe0) + 1),(ulong)&local_78 | 2,0x10
                     ,0x10);
    *(undefined4 *)(*(long *)(param_2 + 0xe0) + 0xc) = 0x10;
  }
  if ((param_3 & 1) == 0) {
    puVar5 = *(undefined8 **)(param_2 + 0x38);
    if (((puVar5 != (undefined8 *)0x0) && (3 < *(uint *)(puVar5 + 1))) &&
       (*(int *)*puVar5 != local_7c)) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017f5f4,"syna_tcm_testing_0001_check_build_id");
    }
    puVar5 = *(undefined8 **)(param_2 + 0x40);
    if ((puVar5 == (undefined8 *)0x0) || (*(int *)(puVar5 + 1) == 0)) {
      bVar2 = 1;
    }
    else {
      bVar2 = syna_tcm_testing_0001_check_device_id((ulong)&local_78 | 2,*puVar5);
    }
    *(byte *)(param_2 + 0x10) = bVar2 & 1;
    puVar4 = &DAT_001811bb;
    if ((bVar2 & 1) == 0) {
      puVar4 = &DAT_0017ebda;
    }
  }
  else {
    *(undefined1 *)(param_2 + 0x10) = 1;
    puVar4 = &DAT_001811bb;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017e97b,"syna_tcm_testing_build_id",puVar4);
}

