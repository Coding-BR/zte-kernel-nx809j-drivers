
void syna_ioctl(long param_1,int param_2)

{
  long lVar1;
  undefined8 uVar2;
  long lVar3;
  undefined8 local_58;
  undefined8 local_50;
  undefined8 uStack_48;
  undefined8 local_40;
  undefined8 uStack_38;
  undefined4 local_2c;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x20);
  local_2c = 0;
  if (param_2 == -0x3ffb8ffd) {
    local_2c = *(undefined4 *)(lVar3 + 0x438);
                    /* WARNING: Subroutine does not return */
    mutex_lock(lVar3 + 0x470);
  }
  if (param_2 == -0x3ffb8ffe) {
    local_2c = *(undefined4 *)(lVar3 + 0x5e0);
                    /* WARNING: Subroutine does not return */
    mutex_lock(lVar3 + 0x470);
  }
  if (param_2 == -0x3ffb8fff) {
    if (*(int *)(lVar3 + 0x5e0) == 0) {
      uVar2 = 0xfffffffffffffff5;
    }
    else {
      if (*(int *)(lVar3 + 0x468) == 0) {
        local_40 = 0;
        uStack_38 = 0;
        local_50 = 0;
        uStack_48 = 0;
        local_58 = 0;
        init_wait_entry(&local_58,0);
        while( true ) {
          lVar1 = prepare_to_wait_event(lVar3 + 0x448,&local_58,1);
          if (*(int *)(lVar3 + 0x468) != 0) break;
          if (lVar1 != 0) goto LAB_0013f7c0;
          schedule();
        }
        finish_wait(lVar3 + 0x448,&local_58);
      }
LAB_0013f7c0:
      uVar2 = 0;
      *(undefined4 *)(lVar3 + 0x468) = 0;
    }
  }
  else {
    uVar2 = 0xffffffffffffffe7;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

