
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long ghost_debug_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined8 *puVar4;
  
  lVar1 = tpd_cdev;
  if (*param_4 == 0) {
    puVar4 = (undefined8 *)__kmalloc_cache_noprof(_platform_driver_unregister,0xdc0,0x1000);
    if (puVar4 == (undefined8 *)0x0) {
      _printk(&DAT_00133d80);
      lVar3 = -0xc;
    }
    else {
      _printk(&DAT_00133d35,*(undefined1 *)(lVar1 + 0x491));
      _printk(&DAT_00136921,*(undefined1 *)(lVar1 + 0x492));
      _printk(&DAT_00133d5a,*(undefined1 *)(lVar1 + 0x493));
      _printk(&DAT_0013440b,*(undefined1 *)(lVar1 + 0x494));
      _printk(&DAT_0013a419,*(undefined1 *)(lVar1 + 0x495));
      _printk(&DAT_00139922,*(undefined4 *)(lVar1 + 0x498));
      _printk(&DAT_0013700e,*(undefined4 *)(lVar1 + 0x49c));
      _printk(&DAT_0013258f,*(undefined4 *)(lVar1 + 0x4a0));
      _printk(&DAT_00134430,*(undefined4 *)(lVar1 + 0x4a4));
      *(undefined2 *)(puVar4 + 5) = 10;
      *(undefined2 *)(puVar4 + 0x1a) = 10;
      builtin_strncpy((char *)((long)puVar4 + 0x81),"nore_cor",8);
      builtin_strncpy((char *)((long)puVar4 + 0x89),"ner_x,ig",8);
      builtin_strncpy((char *)((long)puVar4 + 0x91),"nore_cor",8);
      builtin_strncpy((char *)((long)puVar4 + 0x29),"single_t",8);
      builtin_strncpy((char *)((long)puVar4 + 0x31),"ime,mult",8);
      builtin_strncpy((char *)((long)puVar4 + 0x61),"me,ignor",8);
      builtin_strncpy((char *)((long)puVar4 + 0x69),"e_id,ign",8);
      builtin_strncpy((char *)((long)puVar4 + 0x39),"i_time,s",8);
      builtin_strncpy((char *)((long)puVar4 + 0x79),"_area,ig",8);
      builtin_strncpy((char *)((long)puVar4 + 0x71),"ore_edge",8);
      *(undefined2 *)((long)puVar4 + 0xf9) = 10;
      builtin_strncpy((char *)((long)puVar4 + 0x41),"ingle_co",8);
      builtin_strncpy((char *)((long)puVar4 + 0x49),"unt,mult",8);
      builtin_strncpy((char *)((long)puVar4 + 0x51),"i_count,",8);
      builtin_strncpy((char *)((long)puVar4 + 0x59),"start_ti",8);
      puVar4[2] = 0x2323232323232323;
      puVar4[3] = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0xe1) = 0x2323232323232323;
      builtin_strncpy((char *)(puVar4 + 0x17),",801,801",8);
      builtin_strncpy((char *)(puVar4 + 0x18)," > ghost",8);
      builtin_strncpy((char *)(puVar4 + 0x19),"_debug \n",8);
      builtin_strncpy((char *)(puVar4 + 4),"#######\n",8);
      *(undefined8 *)((long)puVar4 + 0xe9) = 0x2323232323232323;
      builtin_strncpy((char *)(puVar4 + 0x13),"rner_y \n",8);
      builtin_strncpy((char *)(puVar4 + 0x14),"echo 25,",8);
      builtin_strncpy((char *)(puVar4 + 0x15),"20,5,8,3",8);
      builtin_strncpy((char *)(puVar4 + 0x16),"5,9,3201",8);
      builtin_strncpy((char *)((long)puVar4 + 0xf1),"#######\n",8);
      *puVar4 = 0x2323232323232323;
      puVar4[1] = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0xd9) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0xd1) = 0x2323232323232323;
      iVar2 = snprintf((char *)((long)puVar4 + 0xfa),0x1000,"ghost_check_single_time is %d\n",
                       (ulong)*(byte *)(lVar1 + 0x491));
      lVar3 = (long)iVar2 + 0xfa;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0xf06 - (long)iVar2,
                       "ghost_check_multi_time is %d\n",(ulong)*(byte *)(lVar1 + 0x492));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_single_count is %d\n",(ulong)*(byte *)(lVar1 + 0x493));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_multi_count is %d\n",(ulong)*(byte *)(lVar1 + 0x494));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_start_time is %d\n",(ulong)*(byte *)(lVar1 + 0x495));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,"ghost_check_ignore_id is %d\n"
                       ,(ulong)*(uint *)(lVar1 + 0x498));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_ignore_edge_area is %d\n",(ulong)*(uint *)(lVar1 + 0x49c));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_ignore_corner_x is %d\n",(ulong)*(uint *)(lVar1 + 0x4a0));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_ignore_corner_y is %d\n",(ulong)*(uint *)(lVar1 + 0x4a4));
      lVar3 = lVar3 + iVar2;
      simple_read_from_buffer(param_2,param_3,param_4,puVar4,lVar3);
      kfree(puVar4);
    }
  }
  else {
    lVar3 = 0;
  }
  return lVar3;
}

