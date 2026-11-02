# Revisão estática — `syna_spi_probe`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança, equivalência
semântica integral nem validação em hardware.

## Escopo e resultado

O alvo stock `00118544` tem `4392` bytes e `1098` instruções AArch64. O
Makefile liga `syna_spi_probe_exact.S`; `syna_spi_probe.c` permanece como
vista legível. A atestação `next731_syna_spi_probe_exact_v3` registra paridade
exact, KCFI, Joern, build canônico e harness host.

A repetição atual do harness foi preservada em
`syna_spi_probe_host_current_v4.json` (SHA-256
`5cfc8cd8b8c285f7caa94786e1f88f14973463b50766191f2692206faa9109a9`). No
Docker, os cinco casos passaram em dois ciclos com o mesmo binário
`f49ad49775ad4309136472eaeda5a3b7fa5d29bfb2567c4ea67023bba1571091`.
Uma repetição posterior também verifica que o recurso auxiliar em `spi + 960`
é alocado depois de `spi_setup` e continua observável nos casos de falha de
GPIO; o teardown do harness o libera depois do retorno para não atribuir ao
teste um vazamento artificial.

O relatório dessa repetição é `syna_spi_probe_host_current_v5.json` (SHA-256
`454f1c9fef2c25211f4ba1e81ae8d67cb768538b42b1554e24530af02a267a6a`), com o
binário `eb7ba059dfc9328ab983d4f2b48fd96a64fe38d427e7a8e25cbbd57782ad9db3`
nos dois ciclos.

## Cruzamento de risco

O fluxo stock preservado percorre leitura do Device Tree, reguladores VDD/VIO,
GPIO de reset/atenção/IO switch, `spi_setup`, alocações de buffers e limpeza
em ordem reversa nos caminhos de falha. O Joern registra oito achados de
lifetime para `kmalloc`/`devm_kmalloc` e `devm_kfree`; eles são pontos para
revisão de ownership, não provas isoladas de vazamento ou double-free.

A decompilação Ghidra expõe chamadas auxiliares com mais argumentos e logs
varargs que não são representados fielmente pela vista C legível. Como o
assembly exact é o objeto ligado, não se deve “corrigir” essas assinaturas no
C sem repetir KCFI, relocations, comparação AArch64 e todos os testes.

## Limitações

O harness substitui Device Tree, SPI, GPIO, reguladores, memória gerenciada e
`printk`. Não comprova polaridade elétrica, timing de reset, disponibilidade
de reguladores, IRQ, firmware ou comportamento do controlador SPI no NX809J.
Também permanece pendente uma revisão independente dos labels de cleanup e da
ordem de liberação dos recursos.

## Decisão

Não há correção de produção autorizada nesta rodada. O objeto exact permanece
apenas com a alegação offline já registrada; revisão independente, hardware,
firmware, Android input e rollback continuam abertos.
