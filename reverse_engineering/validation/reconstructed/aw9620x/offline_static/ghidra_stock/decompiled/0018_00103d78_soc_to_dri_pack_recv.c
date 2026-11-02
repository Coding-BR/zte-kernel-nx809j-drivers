
void soc_to_dri_pack_recv(long param_1,long param_2,int param_3,undefined8 param_4)

{
  undefined2 uVar1;
  undefined2 uVar2;
  long lVar3;
  int iVar4;
  undefined8 uVar5;
  undefined8 local_68;
  undefined8 local_60;
  undefined8 local_58;
  long local_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","soc_to_dri_pack_recv"
              ,0x6b2);
  uVar5 = 0xffffffff;
  if ((param_2 != 0) && (param_3 != 0)) {
    uVar1 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
    local_68 = CONCAT62(0x20000,uVar1);
    local_58._0_4_ = CONCAT22(1,uVar1);
    uVar1 = (undefined2)param_3;
    local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
    local_58 = (ulong)(uint6)local_58;
    local_60 = param_4;
    local_50 = param_2;
    iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
    if (iVar4 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n","soc_to_dri_pack_recv",
                  0x6bb,5,iVar4);
      uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
      local_68 = CONCAT62(0x20000,uVar2);
      local_58._0_4_ = CONCAT22(1,uVar2);
      local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
      local_58 = (ulong)(uint6)local_58;
      local_60 = param_4;
      local_50 = param_2;
      iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
      if (iVar4 < 0) {
        _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n","soc_to_dri_pack_recv",
                    0x6bb,4,iVar4);
        uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
        local_68 = CONCAT62(0x20000,uVar2);
        local_58._0_4_ = CONCAT22(1,uVar2);
        local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
        local_58 = (ulong)(uint6)local_58;
        local_60 = param_4;
        local_50 = param_2;
        iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
        if (iVar4 < 0) {
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n","soc_to_dri_pack_recv",
                      0x6bb,3,iVar4);
          uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
          local_68 = CONCAT62(0x20000,uVar2);
          local_58._0_4_ = CONCAT22(1,uVar2);
          local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
          local_58 = (ulong)(uint6)local_58;
          local_60 = param_4;
          local_50 = param_2;
          iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
          if (iVar4 < 0) {
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n",
                        "soc_to_dri_pack_recv",0x6bb,2,iVar4);
            uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
            local_68 = CONCAT62(0x20000,uVar2);
            local_58._0_4_ = CONCAT22(1,uVar2);
            local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
            local_58 = (ulong)(uint6)local_58;
            local_60 = param_4;
            local_50 = param_2;
            iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
            if (iVar4 < 0) {
              _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                          "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n",
                          "soc_to_dri_pack_recv",0x6bb,1,iVar4);
              uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
              local_68 = CONCAT62(0x20000,uVar2);
              local_58._0_4_ = CONCAT22(1,uVar2);
              local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
              local_58 = (ulong)(uint6)local_58;
              local_60 = param_4;
              local_50 = param_2;
              iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
              if (iVar4 < 0) {
                _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                            "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n",
                            "soc_to_dri_pack_recv",0x6bb,0,iVar4);
                _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                            "[%s:%d] aw9620x i2c read cmd err!!! ret = %d\n","soc_to_dri_pack_recv",
                            0x6c3,iVar4);
                uVar5 = 0xffffffff;
                goto LAB_00103e30;
              }
            }
          }
        }
      }
    }
    uVar5 = 0;
  }
LAB_00103e30:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}

