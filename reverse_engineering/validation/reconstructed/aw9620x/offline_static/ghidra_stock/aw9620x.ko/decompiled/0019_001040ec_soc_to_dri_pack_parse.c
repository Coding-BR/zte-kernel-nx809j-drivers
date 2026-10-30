
void soc_to_dri_pack_parse(long param_1,int param_2,char param_3,char param_4)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  ushort *puVar6;
  undefined8 uVar7;
  char *pcVar8;
  undefined8 uVar9;
  undefined2 local_5c [2];
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  uVar1 = param_2 + 0xc;
  local_5c[0] = 0x18;
  puVar6 = (ushort *)__kmalloc_noprof(uVar1,0xdc0);
  uVar7 = *(undefined8 *)(param_1 + 0x30);
  if (puVar6 == (ushort *)0x0) {
    pcVar8 = "[%s:%d] kzalloc_ err!\n";
    uVar9 = 0x6da;
LAB_00104358:
    _dev_printk(&DAT_0010dd3c,uVar7,pcVar8,"soc_to_dri_pack_parse",uVar9);
  }
  else {
    _dev_printk(&DAT_0010eb37,uVar7,"[%s:%d] enter\n","soc_to_dri_pack_parse",0x6de);
    iVar5 = soc_to_dri_pack_recv(param_1,puVar6,uVar1,local_5c);
    if (iVar5 == 0) {
      if (uVar1 < 2) {
LAB_00104394:
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(1,0x104398);
        (*pcVar4)();
      }
      *puVar6 = *puVar6 >> 8 | *puVar6 << 8;
      if (((uVar1 & 0xfffffffe) == 2) || ((uVar1 & 0xfffffffe) == 2)) goto LAB_00104394;
      puVar6[1] = puVar6[1] >> 8 | puVar6[1] << 8;
      if ((uVar1 < 10) || (((uVar1 & 0xfffffffe) == 10 || ((uVar1 & 0xfffffffe) == 10))))
      goto LAB_00104394;
      puVar6[5] = puVar6[5] >> 8 | puVar6[5] << 8;
      if ((uVar1 < 4) || (((uVar1 & 0xfffffffc) == 4 || ((uVar1 & 0xfffffffc) == 4))))
      goto LAB_00104394;
      uVar2 = (*(uint *)(puVar6 + 2) & 0xff00ff00) >> 8 | (*(uint *)(puVar6 + 2) & 0xff00ff) << 8;
      *(uint *)(puVar6 + 2) = uVar2 >> 0x10 | uVar2 << 0x10;
      if (uVar1 < 0x10) goto LAB_00104394;
      iVar5 = *(int *)(puVar6 + 6);
      _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] header= 0x%x, size= 0x%x, length= 0x%x, checksum= 0x%x,module= 0x%x, command= 0x%x, length=0x%x, cmd_status = %d\n"
                  ,"soc_to_dri_pack_parse",0x6f8);
      if ((((char)puVar6[4] == param_3) && (iVar5 == 0)) && (*(char *)((long)puVar6 + 9) == param_4)
         ) {
        _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] soc_to_dri_pack_parse ok\n","soc_to_dri_pack_parse",0x6fb);
        kfree(puVar6);
        uVar7 = 0;
        goto LAB_00104360;
      }
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      pcVar8 = "[%s:%d] soc_to_dri_pack_parse err!!!\n";
      uVar9 = 0x6fd;
      goto LAB_00104358;
    }
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] pack parse err\n",
                "soc_to_dri_pack_parse",0x6e7);
    kfree(puVar6);
  }
  uVar7 = 0xffffffff;
LAB_00104360:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar7);
}

