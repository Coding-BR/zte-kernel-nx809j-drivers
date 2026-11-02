# Revisão de concorrência — rodada 17

## Resultado

Confirmei uma janela estática de uso após liberação no buffer global `cdev + 0xc58`, mesmo depois da correção de falha de `vmalloc` na branch de hardening.

`tp_self_test_write` aloca o buffer, executa os testes e os três callers de teste copiam resultados por `tpd_copy_to_tp_firmware_data`. Ao mesmo tempo, `tp_self_test_read` executa o callback de exibição e libera incondicionalmente o mesmo buffer. O reader não adquire o mutex existente. O helper de cópia usa `READ_ONCE` para buscar o ponteiro, mas isso não protege a vida do objeto nem impede que a memória seja liberada antes do `memcpy`. O epílogo do writer também dereferencia o slot sem verificar se continua válido.

## Por que os callbacks podem se sobrepor

No kernel alvo usado pelo Docker, commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, `proc_reg_read` e `proc_reg_write` despacham diretamente para `pde_read`/`pde_write`, que chamam os callbacks `proc_ops`. Esse caminho não serializa o estado interno do driver. `tp_self_test` é registrado com modo `0664`, com callbacks de leitura e escrita.

## Cobertura incompleta do mutex existente

O mutex em `cdev + 0xc60` é inicializado como `ztp_dev->cmd_mutex`. Handlers de ruído, firmware upgrade e alguns trechos de `fwimage` o usam; o allocator, o helper de cópia, o reader e o writer do self-test não o usam. Além disso, `fwimage_show/store` verificam e dereferenciam o slot antes de obter esse mutex.

Não recomendo simplesmente segurar `cmd_mutex` durante todo `tp_self_test_write`: o callback executa testes de comando, então essa mudança pode causar lock recursivo ou deadlock. A correção completa precisa de um contrato de vida do buffer dedicado e cobrir todos os acessos a `cdev + 0xc58` e `cdev + 0x448`, incluindo o cleanup do reader e o epílogo do writer.

## Decisão e próximos passos

Registrei o risco como uma revisão estática; não alterei o código nesta rodada. A correção anterior continua isolada como desvio de hardening e a branch `reconstruction/zte-tpd-syna-release-attested` permanece stock-exact. O próximo batch deve implementar sincronização dedicada somente após fechar o inventário de todos os acessos e a ordem dos locks, compilar no snapshot Docker e publicar sua atestação na branch de hardening.

Os hashes dos 11 arquivos de código revisados coincidem entre o repositório e `kernel-docker-workspace\engenharia\curated\zte_tpd`. O commit do kernel e os hashes de `fs/proc/inode.c` e `fs/read_write.c` constam em `review.json`.

## Limites

- A corrida foi confirmada por análise de caminhos e despacho do kernel; não forcei o interleaving em runtime.
- Não rodei build porque nenhum código mudou nesta rodada.
- Não foi executado teste em hardware ou com sanitizer.
- A revisão não afirma que a correção completa de sincronização já existe.
