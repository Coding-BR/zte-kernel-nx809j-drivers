
/* WARNING: Control flow encountered bad instruction data */

void dri_to_soc_pack_send(long param_1,byte param_2,byte param_3,ulong param_4,void *param_5)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  ushort uVar4;
  long lVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined8 uVar8;
  ulong uVar9;
  long local_78;
  undefined4 *local_70;
  long local_68;
  
  lVar5 = sp_el0;
  local_68 = *(long *)(lVar5 + 0x710);
  puVar7 = (undefined4 *)__kmalloc_noprof((param_4 & 0xffff) + 0xe,0xdc0);
  if (puVar7 == (undefined4 *)0x0) {
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] kzalloc_ err!\n",
                "dri_to_soc_pack_send",0x664);
LAB_00102648:
    uVar8 = 0xffffffff;
  }
  else {
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                "dri_to_soc_pack_send",0x668);
    iVar6 = (uint)param_4 + 0xc;
    uVar8 = *(undefined8 *)(param_1 + 0x30);
    *puVar7 = 0x2000008;
    uVar2 = (uint)param_4 & 0xffff;
    *(char *)(puVar7 + 1) = (char)((uint)iVar6 >> 8);
    *(char *)((long)puVar7 + 5) = (char)iVar6;
    _dev_printk(&DAT_0010d797,uVar8,"[%s:%d] enter\n","get_pack_checksum",0x64b);
    iVar6 = (uint)param_3 + (uint)param_2 + uVar2;
    if ((param_4 & 0xffff) != 0) {
      uVar9 = 0;
      do {
        puVar1 = (uint *)((long)param_5 + uVar9);
        uVar9 = uVar9 + 4;
        uVar3 = (*puVar1 & 0xff00ff00) >> 8 | (*puVar1 & 0xff00ff) << 8;
        iVar6 = (uVar3 >> 0x10 | uVar3 << 0x10) + iVar6;
      } while (uVar9 < (param_4 & 0xffff));
    }
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] aw9610x check_sum = 0x%x\n",
                "get_pack_checksum",0x654,iVar6);
    iVar6 = -iVar6;
    uVar8 = *(undefined8 *)(param_1 + 0x30);
    *(char *)((long)puVar7 + 9) = (char)iVar6;
    *(char *)(puVar7 + 2) = (char)((uint)iVar6 >> 8);
    *(char *)((long)puVar7 + 6) = (char)((uint)iVar6 >> 0x18);
    *(char *)((long)puVar7 + 7) = (char)((uint)iVar6 >> 0x10);
    *(byte *)((long)puVar7 + 10) = param_2;
    *(byte *)((long)puVar7 + 0xb) = param_3;
    *(char *)(puVar7 + 3) = (char)(param_4 >> 8);
    *(char *)((long)puVar7 + 0xd) = (char)param_4;
    _dev_printk(&DAT_0010d797,uVar8,"[%s:%d] length = %d\n","dri_to_soc_pack_send",0x687,uVar2);
    if ((param_4 & 0xffff) == 0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] length == 0\n",
                  "dri_to_soc_pack_send",0x68c);
    }
    else {
      if (false) {
        __fortify_panic(0x11,param_4 & 0xffff);
                    /* WARNING: Bad instruction - Truncating control flow here */
        halt_baddata();
      }
      memcpy((void *)((long)puVar7 + 0xe),param_5,param_4 & 0xffff);
    }
    uVar4 = (short)param_4 + 0xe;
    local_78 = (ulong)uVar4 << 0x20;
    local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
    local_70 = puVar7;
    iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
    if (iVar6 < 0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n","dri_to_soc_pack_send",
                  0x69b,5,iVar6);
      local_78 = (ulong)uVar4 << 0x20;
      local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
      local_70 = puVar7;
      iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
      if (iVar6 < 0) {
        _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n","dri_to_soc_pack_send",
                    0x69b,4,iVar6);
        local_78 = (ulong)uVar4 << 0x20;
        local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
        local_70 = puVar7;
        iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
        if (iVar6 < 0) {
          _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n","dri_to_soc_pack_send"
                      ,0x69b,3,iVar6);
          local_78 = (ulong)uVar4 << 0x20;
          local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
          local_70 = puVar7;
          iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
          if (iVar6 < 0) {
            _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n",
                        "dri_to_soc_pack_send",0x69b,2,iVar6);
            local_78 = (ulong)uVar4 << 0x20;
            local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
            local_70 = puVar7;
            iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
            if (iVar6 < 0) {
              _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                          "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n",
                          "dri_to_soc_pack_send",0x69b,1,iVar6);
              local_78 = (ulong)uVar4 << 0x20;
              local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
              local_70 = puVar7;
              iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
              if (iVar6 < 0) {
                _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                            "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n",
                            "dri_to_soc_pack_send",0x69b,0,iVar6);
                kfree(puVar7);
                _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                            "[%s:%d] i2c write cmd err!!! ret = %d\n","dri_to_soc_pack_send",0x6a4,
                            iVar6);
                goto LAB_00102648;
              }
            }
          }
        }
      }
    }
    kfree(puVar7);
    uVar8 = 0;
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar8);
}

