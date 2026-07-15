
long boot_nvmem_show(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  byte local_58;
  byte local_57;
  byte local_56;
  byte local_55;
  byte local_54;
  byte local_53;
  byte local_52;
  byte local_51;
  byte local_50;
  byte local_4f;
  byte local_4e;
  byte local_4d;
  undefined2 local_4c;
  undefined8 local_4a;
  undefined8 local_42;
  undefined8 local_3a;
  undefined8 local_32;
  undefined8 local_2a;
  undefined8 local_22;
  undefined2 local_1a;
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1a = 0;
  local_22 = 0;
  local_2a = 0;
  local_58 = 0x2a;
  if (((&_ctype)[read_nvmem_buf] & 0x97) != 0) {
    local_58 = read_nvmem_buf;
  }
  local_57 = 0x2a;
  if (((&_ctype)[DAT_0010000d] & 0x97) != 0) {
    local_57 = DAT_0010000d;
  }
  local_53 = 0x2a;
  local_56 = local_53;
  if (((&_ctype)[DAT_0010000e] & 0x97) != 0) {
    local_56 = DAT_0010000e;
  }
  local_55 = local_53;
  if (((&_ctype)[DAT_0010000f] & 0x97) != 0) {
    local_55 = DAT_0010000f;
  }
  local_54 = local_53;
  if (((&_ctype)[DAT_00100010] & 0x97) != 0) {
    local_54 = DAT_00100010;
  }
  if (((&_ctype)[DAT_00100011] & 0x97) != 0) {
    local_53 = DAT_00100011;
  }
  local_32 = 0;
  local_4d = 0x2a;
  local_52 = local_4d;
  if (((&_ctype)[DAT_00100012] & 0x97) != 0) {
    local_52 = DAT_00100012;
  }
  local_51 = local_4d;
  if (((&_ctype)[DAT_00100013] & 0x97) != 0) {
    local_51 = DAT_00100013;
  }
  local_50 = local_4d;
  if (((&_ctype)[DAT_00100014] & 0x97) != 0) {
    local_50 = DAT_00100014;
  }
  local_3a = 0;
  local_4f = local_4d;
  if (((&_ctype)[DAT_00100015] & 0x97) != 0) {
    local_4f = DAT_00100015;
  }
  local_42 = 0;
  local_4e = local_4d;
  if (((&_ctype)[DAT_00100016] & 0x97) != 0) {
    local_4e = DAT_00100016;
  }
  local_4a = 0;
  if (((&_ctype)[DAT_00100017] & 0x97) != 0) {
    local_4d = DAT_00100017;
  }
  local_4c = 10;
  iVar2 = scnprintf(param_3,0x1000,&DAT_0010181b,&local_58);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return (long)iVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

