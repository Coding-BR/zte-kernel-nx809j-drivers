
void tpd_get_singlegamegesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x454) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b8);
                    /* WARNING: Subroutine does not return */
  _printk(&unk_32D26,"tpd_get_singlegamegesture",*(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5bc)
         );
}

