
long ramdisk_nvmem_show(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  int iVar1;
  
  iVar1 = scnprintf(param_3,0x1000,&DAT_0010105a,&extract_buffer);
  return (long)iVar1;
}

