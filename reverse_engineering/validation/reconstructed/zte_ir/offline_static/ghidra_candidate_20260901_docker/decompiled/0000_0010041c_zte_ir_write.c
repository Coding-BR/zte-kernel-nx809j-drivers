
/* WARNING: Type propagation algorithm not settling */

void zte_ir_write(long param_1,long param_2,ulong param_3)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  long local_158 [33];
  
  lVar4 = sp_el0;
  local_158[0x20] = *(long *)(lVar4 + 0x710);
  if ((param_1 == 0) || (lVar4 = *(long *)(param_1 + 0x20), lVar4 == 0)) {
    uVar2 = 0xffffffffffffffed;
  }
  else {
    uVar2 = 0xffffffffffffffea;
    if (((param_2 != 0) && (param_3 != 0)) && ((param_3 & 3) == 0)) {
      if (param_3 < 0x27101) {
        local_158[0x1e] = 0;
        local_158[0x1f] = 0;
        local_158[0x1c] = 0;
        local_158[0x1d] = 0;
        local_158[0x1a] = 0;
        local_158[0x1b] = 0;
        local_158[0x18] = 0;
        local_158[0x19] = 0;
        local_158[0x16] = 0;
        local_158[0x17] = 0;
        local_158[0x14] = 0;
        local_158[0x15] = 0;
        local_158[0x12] = 0;
        local_158[0x13] = 0;
        local_158[0x10] = 0;
        local_158[0x11] = 0;
        local_158[0xe] = 0;
        local_158[0xf] = 0;
        local_158[0xc] = 0;
        local_158[0xd] = 0;
        local_158[10] = 0;
        local_158[0xb] = 0;
        local_158[8] = 0;
        local_158[9] = 0;
        local_158[6] = 0;
        local_158[7] = 0;
        local_158[4] = 0;
        local_158[5] = 0;
        local_158[2] = 0;
        local_158[3] = 0;
        local_158[0] = 0;
        local_158[1] = 0;
        uVar3 = memdup_user(param_2,param_3);
        uVar2 = uVar3;
        if (uVar3 < 0xfffffffffffff001) {
          mutex_lock(lVar4 + 0x138a8);
          if ((*(byte *)(lVar4 + 0x138ec) & 1) == 0) {
            lVar5 = *(long *)(lVar4 + 0x13890);
            if (lVar5 == 0) {
              uVar2 = 0xffffffffffffffed;
            }
            else {
              iVar1 = zte_ir_encode_pulses
                                (lVar4,uVar3,param_3 >> 2,*(undefined4 *)(lVar4 + 0x13888),local_158
                                );
              if (iVar1 == 0) {
                uVar2 = param_3;
                if (local_158[0] != 0) {
                  local_158[0xf] = lVar4 + 4;
                  local_158[0x1e] = 0;
                  local_158[0x1f] = 0;
                  local_158[0x1c] = 0;
                  local_158[0x1d] = 0;
                  local_158[0x1b] = 0;
                  local_158[0x18] = 0;
                  local_158[0x19] = 0;
                  local_158[0x16] = 0;
                  local_158[0x17] = 0;
                  local_158[0x14] = 0;
                  local_158[0x15] = 0;
                  local_158[0x12] = 0;
                  local_158[0x13] = 0;
                  local_158[0x10] = 0;
                  local_158[0x11] = (long)(uint)((int)local_158[0] << 1);
                  local_158[0x1a] = (long)*(uint *)(lVar4 + 0x13888);
                  spi_message_init(local_158 + 1);
                  spi_message_add_tail(local_158 + 0xf,local_158 + 1);
                  iVar1 = spi_sync(lVar5,local_158 + 1);
                  if (iVar1 != 0) {
                    uVar2 = (ulong)iVar1;
                    _dev_err(lVar5,"unable to deliver the signal,ret = %d\n");
                  }
                }
              }
              else {
                uVar2 = (long)iVar1;
              }
            }
          }
          else {
            uVar2 = 0xffffffffffffff94;
          }
          mutex_unlock(lVar4 + 0x138a8);
          kfree(uVar3);
        }
      }
      else {
        uVar2 = 0xfffffffffffffff9;
      }
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_158[0x20]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

