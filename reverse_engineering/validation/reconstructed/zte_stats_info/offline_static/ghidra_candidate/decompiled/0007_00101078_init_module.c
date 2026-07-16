
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int init_module(void)

{
  uint uVar1;
  int iVar2;
  ulong uVar3;
  long lVar4;
  ulong uVar5;
  
  uVar3 = 0;
  do {
    uVar1 = (uint)(-1L << (uVar3 & 0x3f)) & ___cpu_possible_mask;
    if (uVar1 == 0) break;
    uVar3 = ((ulong)uVar1 & 0xaaaaaaaaaaaaaaaa) >> 1 | ((ulong)uVar1 & 0x5555555555555555) << 1;
    uVar3 = (uVar3 & 0xcccccccccccccccc) >> 2 | (uVar3 & 0x3333333333333333) << 2;
    uVar3 = (uVar3 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar3 & 0xf0f0f0f0f0f0f0f) << 4;
    uVar3 = (uVar3 & 0xff00ff00ff00ff00) >> 8 | (uVar3 & 0xff00ff00ff00ff) << 8;
    uVar5 = LZCOUNT((uVar3 >> 0x10 | (uVar3 & 0xffff0000ffff) << 0x10) << 0x20);
    lVar4 = *(long *)(&__per_cpu_offset + uVar5 * 8);
    *(long *)(zte_listener_array + lVar4 + 0x40) = lVar4 + 0x1011c0;
    *(long *)(zte_listener_array + lVar4 + 0x48) = lVar4 + 0x1011c0;
    __init_rwsem(zte_listener_array + *(long *)(&__per_cpu_offset + uVar5 * 8),
                 "&(per_cpu(zte_listener_array, i).sem)",&zte_taskstats_init_early___key);
    uVar3 = uVar5 + 1;
  } while (uVar5 < 0x1f);
  iVar2 = genl_register_family(&zte_family);
  if (iVar2 == 0) {
    _printk(&DAT_0010142f,1);
  }
  return iVar2;
}

