
long boot_nvmem_show(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  byte local_28;
  byte local_27;
  byte local_26;
  byte local_25;
  byte local_24;
  byte local_23;
  byte local_22;
  byte local_21;
  byte local_20;
  byte local_1f;
  byte local_1e;
  byte local_1d;
  undefined2 local_1c;
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_28 = 0x2a;
  if (((&_ctype)[read_nvmem_buf] & 0x97) != 0) {
    local_28 = read_nvmem_buf;
  }
  local_27 = 0x2a;
  if (((&_ctype)[DAT_0010000d] & 0x97) != 0) {
    local_27 = DAT_0010000d;
  }
  local_23 = 0x2a;
  local_26 = local_23;
  if (((&_ctype)[DAT_0010000e] & 0x97) != 0) {
    local_26 = DAT_0010000e;
  }
  local_25 = local_23;
  if (((&_ctype)[DAT_0010000f] & 0x97) != 0) {
    local_25 = DAT_0010000f;
  }
  local_24 = local_23;
  if (((&_ctype)[DAT_00100010] & 0x97) != 0) {
    local_24 = DAT_00100010;
  }
  if (((&_ctype)[DAT_00100011] & 0x97) != 0) {
    local_23 = DAT_00100011;
  }
  local_1d = 0x2a;
  local_22 = local_1d;
  if (((&_ctype)[DAT_00100012] & 0x97) != 0) {
    local_22 = DAT_00100012;
  }
  local_21 = local_1d;
  if (((&_ctype)[DAT_00100013] & 0x97) != 0) {
    local_21 = DAT_00100013;
  }
  local_20 = local_1d;
  if (((&_ctype)[DAT_00100014] & 0x97) != 0) {
    local_20 = DAT_00100014;
  }
  local_1f = local_1d;
  if (((&_ctype)[DAT_00100015] & 0x97) != 0) {
    local_1f = DAT_00100015;
  }
  local_1e = local_1d;
  if (((&_ctype)[DAT_00100016] & 0x97) != 0) {
    local_1e = DAT_00100016;
  }
  if (((&_ctype)[DAT_00100017] & 0x97) != 0) {
    local_1d = DAT_00100017;
  }
  local_1c = 10;
  iVar2 = scnprintf(param_3,0x1000,&DAT_001016c6,&local_28);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return (long)iVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

