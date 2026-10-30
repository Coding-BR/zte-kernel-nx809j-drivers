
undefined8 syna_tcm_testing_trx_trx_short(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined8 uVar4;
  undefined *puVar5;
  undefined8 *puVar6;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if ((param_1 != 0) && (param_2 != 0)) {
    local_48 = 0;
    uStack_40 = 0;
    local_58 = 0;
    uStack_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    local_78 = 0;
    uStack_70 = 0;
    local_80 = 0;
    __mutex_init(&uStack_70,"(struct mutex *)ptr",&DAT_0015ea31);
    iVar3 = syna_tcm_run_production_test(param_1,1,&local_80,0);
    if (iVar3 < 0) {
      uVar4 = _printk(&DAT_00170d30,"syna_tcm_testing_trx_trx_short",1);
      return uVar4;
    }
    if (*(long *)(param_2 + 0xd8) != 0) {
      FUN_00158d24(*(long *)(param_2 + 0xd8),&local_80);
    }
    if ((param_3 & 1) == 0) {
      puVar6 = *(undefined8 **)(param_2 + 0x38);
      if (puVar6 == (undefined8 *)0x0) {
        *(undefined1 *)(param_2 + 0x10) = 0;
        puVar5 = &DAT_00168c34;
      }
      else {
        bVar2 = FUN_00144204(local_80,local_78._4_4_,*puVar6,*(undefined4 *)(puVar6 + 1));
        *(byte *)(param_2 + 0x10) = bVar2 & 1;
        puVar5 = &DAT_0016e2fa;
        if ((bVar2 & 1) == 0) {
          puVar5 = &DAT_00168c34;
        }
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar5 = &DAT_0016e2fa;
    }
    uVar4 = _printk(&DAT_00168526,"syna_tcm_testing_trx_trx_short",puVar5);
    return uVar4;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

