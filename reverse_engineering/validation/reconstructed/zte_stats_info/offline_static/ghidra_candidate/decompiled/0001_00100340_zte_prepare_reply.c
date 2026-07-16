
undefined8 zte_prepare_reply(int *param_1,long *param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  long lVar5;
  long lVar6;
  long lVar7;
  undefined8 uVar8;
  int iVar9;
  
  lVar6 = __alloc_skb((param_3 + 7U & 0xffc) + 0x13 & 0xffc,0xcc0,0,0xffffffff);
  if (lVar6 == 0) {
    uVar8 = 0xfffffff4;
  }
  else {
    if (param_1 == (int *)0x0) {
      lVar7 = sp_el0;
      *(int *)(lVar7 + 0x10) = *(int *)(lVar7 + 0x10) + 1;
      lVar5 = tpidr_el1;
      piVar1 = (int *)(&zte_taskstats_seqnum + lVar5);
      do {
        iVar2 = *piVar1;
        cVar3 = '\x01';
        bVar4 = (bool)ExclusiveMonitorPass(piVar1,0x10);
        if (bVar4) {
          *piVar1 = iVar2 + 1;
          cVar3 = ExclusiveMonitorsStatus();
        }
      } while (cVar3 != '\0');
      lVar5 = *(long *)(lVar7 + 0x10) + -1;
      *(int *)(lVar7 + 0x10) = (int)lVar5;
      if ((lVar5 == 0) || (*(long *)(lVar7 + 0x10) == 0)) {
        preempt_schedule_notrace();
      }
      iVar9 = 0;
    }
    else {
      iVar2 = *param_1;
      iVar9 = param_1[1];
    }
    lVar7 = genlmsg_put(lVar6,iVar9,iVar2,&zte_family,0,2);
    if (lVar7 == 0) {
      sk_skb_reason_drop(0,lVar6,2);
      uVar8 = 0xffffffea;
    }
    else {
      uVar8 = 0;
      *param_2 = lVar6;
    }
  }
  return uVar8;
}

