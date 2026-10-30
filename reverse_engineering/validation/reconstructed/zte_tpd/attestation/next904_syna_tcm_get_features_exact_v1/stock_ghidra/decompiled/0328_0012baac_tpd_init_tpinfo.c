
undefined8 tpd_init_tpinfo(long param_1)

{
  undefined4 uVar1;
  ushort uVar2;
  long *plVar3;
  
  plVar3 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_init_tpinfo");
  *(undefined4 *)(param_1 + 0xcf0) = 1;
  builtin_strncpy((char *)(param_1 + 0xd18),"synaptic",8);
  builtin_strncpy((char *)(param_1 + 0xd20),"s_3910V",8);
  uVar1 = *(undefined4 *)(*plVar3 + 0xc);
  *(undefined4 *)(param_1 + 0xd14) = 4;
  *(undefined4 *)(param_1 + 0xd00) = uVar1;
  uVar2 = *(ushort *)(*plVar3 + 0xc6);
  *(uint *)(param_1 + 0xd04) = (uint)(uVar2 >> 8) | (uVar2 & 0xff00ff) << 8;
  return 0;
}

