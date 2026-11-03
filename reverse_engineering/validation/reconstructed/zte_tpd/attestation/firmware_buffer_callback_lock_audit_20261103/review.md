# Auditoria estática do buffer de firmware e callbacks — 2026-11-03

## Resultado

A auditoria não encontrou defeito adicional nos caminhos analisados. O bloqueio de vida útil do descritor e a ordem dos mutexes estão coerentes estaticamente com a hardening já aplicada. As nove funções mantêm o estado `HARDENED_STOCK_DEVIATION`; esta evidência não as promove a equivalência stock-exact.

## Evidência decisiva

- O Ghidra stock mostra `zte_touch_probe` alocando `0x1008` bytes com flags `0xdc0`. No kernel montado do volume Docker, `GFP_KERNEL = 0xcc0` e `__GFP_ZERO = 0x100`; `devm_kmalloc` recebe o mesmo mask. Os slots +`0xe18` (`FW_upgrade`) e +`0xee8` (`get_noise`) começam zerados nesse caminho.
- A rotina stock de registro preenche callbacks em +`0xf98` e +`0xfa0`, mas não esses dois slots. A varredura do assembly stock encontrou somente dois loads nesses offsets, cada um protegido por teste de nulo; nenhum store foi encontrado.
- A ordem observada é `tp_firmware_data_mutex` → `cmd_mutex`. Os helpers de alocação e cópia usam apenas `cmd_mutex`; o callback do self-test é chamado sem manter `cmd_mutex`, evitando aquisição recursiva no caminho de cópia.
- Os 12 arquivos-fonte revisados coincidem com a árvore curada do Docker. Os 12 hashes também coincidem com a árvore de fontes do build canônico de duas passagens já concluído, cujo módulo tem SHA-256 `adaccd92ac5b2b657626d0e3912441d386a1ef04a7326abfd3251ac4c660c143`. Não houve alteração de C nesta auditoria, portanto não foi feito build redundante.

## Alertas ainda abertos

As contagens Joern preservadas são de relatórios exact-v4 anteriores à hardening; não as reclassifiquei nem as marquei como resolvidas. É necessário executar Joern novamente sobre a branch hardening e revisar seus resultados. Execução no aparelho, stress concorrente, falha forçada do alocador, KASAN/UBSAN e revisão humana independente continuam pendentes.

A atestação com hashes de entrada e detalhes da inspeção está em `review.json` (SHA-256 `5ac5b9f2c1b753bba80338d09c6153d5280adfd2d80af31471b833b0242bb397`). O mapa foi atualizado para apontá-la; hash do mapa depois da atualização: `344aaec170d068d07f69ccecf30d682b05eb5cca609374de6de330dc6566b149`.
