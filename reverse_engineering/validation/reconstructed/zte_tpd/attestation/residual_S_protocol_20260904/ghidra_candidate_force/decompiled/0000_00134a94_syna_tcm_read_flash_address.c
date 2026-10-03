
int syna_tcm_read_flash_address
              (long param_1,undefined4 param_2,uint param_3,long *param_4,int param_5)

{
  char cVar1;
  int iVar2;
  void *__s;
  long lVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  undefined4 uVar7;
  size_t __n;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  local_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f0 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00168a84;
  }
  else {
    if (param_4 != (long *)0x0) {
      if (param_5 == 0) {
        uVar7 = 0;
      }
      else {
        uVar7 = *(undefined4 *)(param_1 + 0x1e8);
      }
      cVar1 = *(char *)(param_1 + 9);
      if (cVar1 == '\v') {
        iVar2 = 0;
      }
      else {
        iVar2 = syna_tcm_set_up_flash_access(param_1,&local_f0,param_5,uVar7);
        if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00167f0e,"syna_tcm_read_flash_address");
        }
      }
      local_70 = local_70 & 0xffffffffffffff00;
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e0d4);
      if (param_3 != 0) {
        __n = (size_t)*(uint *)(param_4 + 1);
        __s = (void *)*param_4;
        if (*(uint *)(param_4 + 1) < param_3) {
          if (__s != (void *)0x0) {
            lVar3 = syna_request_managed_device();
            if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
              _printk(&DAT_00171996,"syna_pal_mem_free");
            }
            devm_kfree(lVar3,__s);
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
            puVar6 = &DAT_00171996;
LAB_00134d24:
                    /* WARNING: Subroutine does not return */
            _printk(puVar6,"syna_pal_mem_alloc");
          }
          if ((int)param_3 < 1) {
            puVar6 = &DAT_0016da92;
            goto LAB_00134d24;
          }
          __n = (size_t)param_3;
          __s = (void *)devm_kmalloc(lVar3,__n,0xdc0);
          *param_4 = (long)__s;
          if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016c730,"syna_tcm_buf_alloc",param_3);
          }
          *(uint *)(param_4 + 1) = param_3;
        }
        memset(__s,0,__n);
        *(undefined4 *)((long)param_4 + 0xc) = 0;
        iVar2 = syna_tcm_read_flash(param_1,param_2,*param_4,param_3,param_5);
        if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016f4b2,"syna_tcm_read_flash_address",param_3,param_2);
        }
        iVar2 = 0;
        *(uint *)((long)param_4 + 0xc) = param_3;
      }
      if (cVar1 == '\x01') {
        syna_tcm_switch_fw_mode(param_1,1,param_5);
      }
      lVar3 = local_b0;
      if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      }
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171996,"syna_pal_mem_free");
      }
      if (lVar3 != 0) {
        devm_kfree(lVar4,lVar3);
      }
      lVar3 = sp_el0;
      if (*(long *)(lVar3 + 0x710) == local_58) {
        return iVar2;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    puVar5 = &DAT_001707de;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_read_flash_address");
}

