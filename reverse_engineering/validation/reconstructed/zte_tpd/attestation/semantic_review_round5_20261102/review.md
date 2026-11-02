# Revisão semântica do zte_tpd — rodada 5

## Balanço do mutex em `syna_ioctl`

Os 8 alertas Joern são 4 pontos reais: dois `mutex_lock` e dois `mutex_unlock`. Cada comando que copia um inteiro para userspace libera o mesmo mutex tanto após sucesso quanto após `copy_to_user` falhar. O Ghidra stock mostra os mesmos caminhos de saída. O mutex em `tcm + 0x470` é inicializado por `syna_dev_probe` antes de `misc_register` publicar a interface. Não encontrei vazamento do lock nessa função.

## Risco separado no estado do frame

O cruzamento dos campos revelou uma lacuna de sincronização herdada do stock. `syna_ioctl` lê `tcm + 0x438` e `tcm + 0x5e0` antes de bloquear `frame_mutex` em `+0x470`. O callback de relatório para a entidade 17 lê o flag em `+0x5e0` e, quando ativo, copia até 204800 bytes para o buffer em `+0x460`, atualizando o tamanho em `+0x438` e o estado em `+0x468` sem esse mutex. `tpd_set_frame_data` muda o flag antes de chamar `zte_reset_frame_list`; o reset bloqueia `+0x470` enquanto limpa metadados e buffer. `syna_dev_suspend` também limpa o flag sem esse lock.

Se o callback e o caminho de controle se sobrepõem, o ioctl pode observar um snapshot antigo e o reset pode concorrer com a cópia de um frame. O limite de cópia é 204800 bytes, igual à alocação feita no probe; não há evidência nesta análise de escrita fora dos limites nem de uso após liberação. A sobreposição não foi reproduzida em runtime, então mantenho a classificação como risco funcional condicional.

O comportamento está presente no Ghidra/assembly stock. Mantive o baseline exato. Uma correção exigiria uma variante explícita de hardening com contrato único para flag, buffer, reset e snapshot do ioctl, após verificar ordem dos locks no callback.

## Evidência e estado

As fontes do repositório correspondem aos arquivos do snapshot Docker e ao manifesto de 848 entradas do build canônico da rodada 4. Como este lote não mudou nenhum insumo Kbuild, não gerei outro módulo. O relatório reutilizado comprova dois ciclos reprodutíveis para o snapshot atual. A reconstrução segue offline; hardware/runtime continuam pendentes.

## Próximo lote

Investigar `string_change` e seus chamadores, preservando a distinção entre alertas de call site, races confirmadas e hardening que altera o stock.
