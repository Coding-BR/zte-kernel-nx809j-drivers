
void tpd_set_singlefpgesture(long param_1,int param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(uint *)(lVar1 + 0x5b8) = (uint)(0 < param_2);
    *(uint *)(lVar1 + 0x5b0) =
         *(uint *)(lVar1 + 0x5b4) | *(uint *)(lVar1 + 0x5bc) | (uint)(0 < param_2);
                    /* WARNING: Subroutine does not return */
    _printk(&unk_3526D,"tpd_set_singlefpgesture");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3B5E0,"tpd_set_singlefpgesture");
}

