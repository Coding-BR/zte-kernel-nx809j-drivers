
long aw9620x_awrw_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (*(long *)(lVar2 + 0x240) == 0) {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar2 + -8),"[%s:%d] p_i2c_tranfar_data is NULL\n",
                "aw9620x_awrw_get",0xb29);
    lVar2 = 0;
  }
  else {
    if ((uint)*(byte *)(lVar2 + 0x23b) * (uint)*(byte *)(lVar2 + 0x23a) == 0) {
      lVar3 = 0;
    }
    else {
      lVar4 = 0;
      lVar3 = 0;
      do {
        iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"0x%02x,",
                         (ulong)*(byte *)(*(long *)(lVar2 + 0x240) + (ulong)*(byte *)(lVar2 + 0x239)
                                         + lVar4));
        lVar4 = lVar4 + 1;
        lVar3 = lVar3 + iVar1;
      } while ((uint)lVar4 < (uint)*(byte *)(lVar2 + 0x23b) * (uint)*(byte *)(lVar2 + 0x23a));
    }
    iVar1 = snprintf((char *)(param_3 + lVar3 + -1),0x1000 - lVar3,"\n");
    devm_kfree(*(undefined8 *)(lVar2 + -8),*(undefined8 *)(lVar2 + 0x240));
    *(undefined8 *)(lVar2 + 0x240) = 0;
    lVar2 = lVar3 + iVar1 + -1;
  }
  return lVar2;
}

