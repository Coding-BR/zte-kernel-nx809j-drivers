
undefined8 syna_tcm_update_flash_block(undefined8 param_1,long param_2,long param_3)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  long lVar5;
  
  lVar5 = sp_el0;
  lVar5 = *(long *)(lVar5 + 0x710);
  if (param_2 == 0) {
    puVar3 = &DAT_0016936a;
  }
  else {
    if (param_3 != 0) {
      iVar2 = syna_tcm_check_flash_block(param_1,param_2,param_3);
      if (iVar2 < 0) {
        uVar4 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        uVar4 = _printk(&DAT_00170802,"syna_tcm_update_flash_block",uVar4);
        return uVar4;
      }
      if (iVar2 == 0) {
        lVar1 = sp_el0;
        if (*(long *)(lVar1 + 0x710) == lVar5) {
          return 0;
        }
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      uVar4 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
      uVar4 = _printk(&DAT_00166e0c,"syna_tcm_update_flash_block",uVar4);
      return uVar4;
    }
    puVar3 = &DAT_00166dea;
  }
  uVar4 = _printk(puVar3,"syna_tcm_update_flash_block");
  return uVar4;
}

