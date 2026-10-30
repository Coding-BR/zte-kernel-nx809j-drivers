
void zte_get_xbl_log_memory_region(long *param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  undefined8 uVar4;
  char *pcVar5;
  long local_78 [11];
  
  lVar2 = sp_el0;
  local_78[10] = *(long *)(lVar2 + 0x710);
  local_78[8] = 0;
  local_78[9] = 0;
  local_78[6] = 0;
  local_78[7] = 0;
  local_78[4] = 0;
  local_78[5] = 0;
  local_78[2] = 0;
  local_78[3] = 0;
  local_78[0] = 0;
  local_78[1] = 0;
  iVar1 = __of_parse_phandle_with_args
                    (*(undefined8 *)(*param_1 + 0x2e8),"memory-region",0,0,0,local_78);
  if ((iVar1 == 0) && (local_78[0] != 0)) {
    lVar2 = of_reserved_mem_lookup();
    if (lVar2 != 0) {
      param_1[0xe] = *(long *)(lVar2 + 0x18);
      param_1[0xf] = *(long *)(lVar2 + 0x20);
      lVar3 = devm_ioremap_wc(*param_1);
      param_1[0x10] = lVar3;
      if (lVar3 == 0) {
        _dev_err(*param_1,"ztedbg unable to map xbl log memory region: %pa+%zx\n",lVar2 + 0x18,
                 param_1[0xf]);
        uVar4 = 0xfffffff0;
      }
      else {
        uVar4 = 0;
      }
      goto LAB_00100c74;
    }
    lVar2 = *param_1;
    pcVar5 = "ztedbg unable to resolve xbl log memory-region\n";
  }
  else {
    lVar2 = *param_1;
    pcVar5 = "ztedbg no xbl log memory-region specified\n";
  }
  _dev_err(lVar2,pcVar5);
  uVar4 = 0xffffffea;
LAB_00100c74:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_78[10]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

