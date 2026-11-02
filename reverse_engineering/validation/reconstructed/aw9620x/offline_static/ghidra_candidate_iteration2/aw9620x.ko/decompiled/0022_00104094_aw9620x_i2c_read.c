
void aw9620x_i2c_read(long param_1,uint param_2,uint *param_3)

{
  undefined2 uVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  uint uVar5;
  undefined1 local_90;
  undefined1 local_8f;
  uint local_8e;
  undefined8 local_88;
  undefined1 *local_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar2 = sp_el0;
  local_90 = (undefined1)(param_2 >> 8);
  local_68 = *(long *)(lVar2 + 0x710);
  uVar5 = 5;
  local_8e = 0;
  local_8f = (undefined1)param_2;
  do {
    uVar1 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
    local_88 = CONCAT62(0x20000,uVar1);
    local_78 = (ulong)CONCAT42(0x40001,uVar1);
    local_80 = &local_90;
    local_70 = (ulong)&local_90 | 2;
    iVar3 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_88,2);
    if (-1 < iVar3) {
      if ((uVar5 >> 7 & 1) == 0) {
        uVar4 = 0;
        uVar5 = (local_8e & 0xff00ff00) >> 8 | (local_8e & 0xff00ff) << 8;
        *param_3 = uVar5 >> 0x10 | uVar5 << 0x10;
        goto LAB_001041a8;
      }
      break;
    }
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] i2c read error reg: 0x%04x, ret= %d cnt= %d\n","aw9620x_i2c_read",0x23d,
                param_2 & 0xffff,iVar3,uVar5);
    usleep_range_state(2000,3000,2);
    uVar5 = uVar5 - 1;
  } while (uVar5 != 0xffffffff);
  _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c read error!\n",
              "aw9620x_i2c_read",0x244);
  uVar4 = 0xffffffff;
LAB_001041a8:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}

