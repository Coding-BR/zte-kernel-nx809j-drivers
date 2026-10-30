
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
aw22xxx_para_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined4 *puVar4;
  ulong uVar5;
  ulong uVar6;
  
  _printk(&DAT_00106d28,"aw22xxx_para_store");
  puVar4 = (undefined4 *)__kmalloc_cache_noprof(_sscanf,0xcc0,100);
  if (puVar4 == (undefined4 *)0x0) {
    _printk(&DAT_0010703c);
    param_4 = 0xfffffffffffffff2;
  }
  else {
    iVar3 = sscanf(param_3,
                   "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d \n",
                   puVar4,puVar4 + 1,puVar4 + 2,puVar4 + 3,puVar4 + 4,puVar4 + 5,puVar4 + 6,
                   puVar4 + 7,puVar4 + 8,puVar4 + 9,puVar4 + 10,puVar4 + 0xb,puVar4 + 0xc,
                   puVar4 + 0xd,puVar4 + 0xe,puVar4 + 0xf,puVar4 + 0x10,puVar4 + 0x11,puVar4 + 0x12,
                   puVar4 + 0x13,puVar4 + 0x14,puVar4 + 0x15,puVar4 + 0x16,puVar4 + 0x17,
                   puVar4 + 0x18);
    if (iVar3 == 0x19) {
      _printk(&DAT_00107053,"aw22xxx_para_store",0x19);
      uVar1 = write_idx;
      if (write_idx < 1000) {
        uVar5 = (ulong)write_idx * 0x19;
        iVar3 = (int)uVar5;
        (&user_para_data)[uVar5] = (char)*puVar4;
        if (iVar3 == 24999) {
LAB_00104b44:
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(1,0x104b48);
          (*pcVar2)();
        }
        uVar6 = uVar5 & 0xffffffff;
        (&DAT_0010875e)[uVar5 & 0xffffffff] = (char)puVar4[1];
        if ((((iVar3 == 0x61a6) || (*(char *)(uVar6 + 0x10875f) = (char)puVar4[2], iVar3 == 0x61a5))
            || (*(char *)(uVar6 + 0x108760) = (char)puVar4[3], iVar3 == 0x61a4)) ||
           (((*(char *)(uVar6 + 0x108761) = (char)puVar4[4], iVar3 == 0x61a3 ||
             (*(char *)(uVar6 + 0x108762) = (char)puVar4[5], iVar3 == 0x61a2)) ||
            ((*(char *)(uVar6 + 0x108763) = (char)puVar4[6], iVar3 == 0x61a1 ||
             (*(char *)(uVar6 + 0x108764) = (char)puVar4[7], iVar3 == 0x61a0))))))
        goto LAB_00104b44;
        *(char *)(uVar6 + 0x108765) = (char)puVar4[8];
        if ((((iVar3 == 0x619f) || (*(char *)(uVar6 + 0x108766) = (char)puVar4[9], iVar3 == 0x619e))
            || ((*(char *)(uVar6 + 0x108767) = (char)puVar4[10], iVar3 == 0x619d ||
                (((((*(char *)(uVar6 + 0x108768) = (char)puVar4[0xb], iVar3 == 0x619c ||
                    (*(char *)(uVar6 + 0x108769) = (char)puVar4[0xc], iVar3 == 0x619b)) ||
                   (*(char *)(uVar6 + 0x10876a) = (char)puVar4[0xd], iVar3 == 0x619a)) ||
                  (((*(char *)(uVar6 + 0x10876b) = (char)puVar4[0xe], iVar3 == 0x6199 ||
                    (*(char *)(uVar6 + 0x10876c) = (char)puVar4[0xf], iVar3 == 0x6198)) ||
                   ((*(char *)(uVar6 + 0x10876d) = (char)puVar4[0x10], iVar3 == 0x6197 ||
                    ((*(char *)(uVar6 + 0x10876e) = (char)puVar4[0x11], iVar3 == 0x6196 ||
                     (*(char *)(uVar6 + 0x10876f) = (char)puVar4[0x12], iVar3 == 0x6195)))))))) ||
                 (*(char *)(uVar6 + 0x108770) = (char)puVar4[0x13], iVar3 == 0x6194)))))) ||
           ((((*(char *)(uVar6 + 0x108771) = (char)puVar4[0x14], iVar3 == 0x6193 ||
              (*(char *)(uVar6 + 0x108772) = (char)puVar4[0x15], iVar3 == 0x6192)) ||
             (*(char *)(uVar6 + 0x108773) = (char)puVar4[0x16], iVar3 == 0x6191)) ||
            (*(char *)(uVar6 + 0x108774) = (char)puVar4[0x17], iVar3 == 0x6190))))
        goto LAB_00104b44;
        write_idx = uVar1 + 1;
        *(char *)(uVar6 + 0x108775) = (char)puVar4[0x18];
        _printk(&DAT_00107776,"aw22xxx_para_store");
      }
      else {
        _printk(&DAT_001074b4,"aw22xxx_para_store");
      }
    }
    kfree(puVar4);
  }
  return param_4;
}

