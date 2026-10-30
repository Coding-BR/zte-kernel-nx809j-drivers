
long ram_vbat_comp_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"ram_vbat_comp = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x8c));
  return (long)iVar1;
}

