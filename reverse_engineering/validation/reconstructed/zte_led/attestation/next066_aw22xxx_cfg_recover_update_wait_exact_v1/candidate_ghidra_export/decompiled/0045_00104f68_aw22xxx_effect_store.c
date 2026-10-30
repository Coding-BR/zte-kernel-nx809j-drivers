
void aw22xxx_effect_store(undefined8 param_1,undefined8 param_2,char *param_3)

{
  long lVar1;
  int iVar2;
  undefined4 local_4c;
  undefined8 local_48;
  
  lVar1 = sp_el0;
  local_48 = *(undefined8 *)(lVar1 + 0x710);
  local_4c = 0;
  iVar2 = sscanf(param_3,"%x",&local_4c);
  if (iVar2 == 1) {
    _printk(&DAT_00108314,"aw22xxx_effect_store",local_4c);
    return;
  }
  _printk(&DAT_001080f2,"aw22xxx_effect_store");
  return;
}

