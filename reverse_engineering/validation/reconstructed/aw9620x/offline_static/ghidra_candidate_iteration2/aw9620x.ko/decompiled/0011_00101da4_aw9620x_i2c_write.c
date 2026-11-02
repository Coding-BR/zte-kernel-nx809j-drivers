
void aw9620x_i2c_write(long param_1,uint param_2,ulong param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  ulong uVar4;
  undefined8 local_60;
  undefined1 *local_58;
  undefined1 local_50;
  undefined1 local_4f;
  undefined1 local_4e;
  undefined1 local_4d;
  undefined1 local_4c;
  undefined1 local_4b;
  long local_48;
  
  lVar1 = sp_el0;
  local_4e = (undefined1)(param_3 >> 0x18);
  local_4d = (undefined1)(param_3 >> 0x10);
  local_48 = *(long *)(lVar1 + 0x710);
  uVar4 = param_3 & 0xffffffff;
  local_4c = (undefined1)(param_3 >> 8);
  local_50 = (undefined1)(param_2 >> 8);
  local_4b = (undefined1)param_3;
  local_4f = (undefined1)param_2;
  local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
  local_58 = &local_50;
  iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
  if (iVar2 < 0) {
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n",
                "aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,5);
    usleep_range_state(2000,3000,2);
    local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
    local_58 = &local_50;
    iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
    if (iVar2 < 0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n",
                  "aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,4);
      usleep_range_state(2000,3000,2);
      local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
      local_58 = &local_50;
      iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
      if (iVar2 < 0) {
        _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n",
                    "aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,3);
        usleep_range_state(2000,3000,2);
        local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
        local_58 = &local_50;
        iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
        if (iVar2 < 0) {
          _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n",
                      "aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,2);
          usleep_range_state(2000,3000,2);
          local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
          local_58 = &local_50;
          iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
          if (iVar2 < 0) {
            _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n"
                        ,"aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,1);
            usleep_range_state(2000,3000,2);
            local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
            local_58 = &local_50;
            iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
            if (iVar2 < 0) {
              _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                          "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n"
                          ,"aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,0);
              usleep_range_state(2000,3000,2);
              _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c write error!\n"
                          ,"aw9620x_i2c_write",0x26b);
              uVar3 = 0xffffffff;
              goto LAB_00101e34;
            }
          }
        }
      }
    }
  }
  uVar3 = 0;
LAB_00101e34:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

