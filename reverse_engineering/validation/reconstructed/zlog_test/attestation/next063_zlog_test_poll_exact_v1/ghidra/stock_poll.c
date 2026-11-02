
int poll(pollfd *__fds,nfds_t __nfds,int __timeout)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = get_random_u32(__fds,__nfds,__timeout);
  iVar2 = 5;
  if ((uVar1 & 1) != 0) {
    iVar2 = 0;
  }
  _printk(&DAT_0010144f,&DAT_0010116e,&DAT_0010116e,uVar1,iVar2);
  return iVar2;
}

