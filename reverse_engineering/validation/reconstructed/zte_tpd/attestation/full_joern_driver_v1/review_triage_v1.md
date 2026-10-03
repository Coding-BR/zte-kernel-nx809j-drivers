# Triagem inicial dos achados Joern — zte_tpd

Estado: `OPEN — não é aprovação de segurança`

## Base verificável

- Relatório: `joern_gate_report.json`
- SHA-256 do relatório: `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56`
- Gate Joern: estrito, `367/367`, parse limpo, sem chamadas não resolvidas
- Achados: `783` (`773 high`, `10 critical`)
- Esta triagem não altera código de produção, status de microtarefa ou mapa.

## Achados críticos

| Grupo | Funções | Decisão atual | Evidência adicional necessária |
|---|---|---|---|
| Caminho fatal | `edge_long_press_up` | Revisar contra o domínio stock de `index`; não remover `BUG`/`BUG_ON` por conveniência | Ghidra/P-Code, assembly e teste de limites no harness |
| Escrita GPIO | `syna_spi_hw_reset`, `syna_spi_power_on` | Não é defeito estático confirmado; preservar polaridade, ordem e delays | revisão independente e teste controlado no NX809J |
| Escrita SPI | `syna_spi_read`, `syna_spi_write` | Não é defeito estático confirmado; `spi_sync` é efeito externo esperado | revisão de buffers, locks e retorno; hardware controlado |

## Concentrações high que exigem revisão

- `syna_tcm_v1_read_message`: 71 achados, principalmente sincronização e
  lifetime.
- `syna_cdev_ioctls`: 37 achados, incluindo lifetime e fronteira userspace.
- `syna_tcm_v1_write_message`: 22 achados de sincronização.
- `tpd_report_work_deinit`: 20 achados de sincronização.
- `syna_cdev_process_reports`: 18 achados de lifetime/sincronização.
- `tp_edge_report_limit_write`: 14 achados de entrada userspace.

Essas contagens são priorização de revisão, não contagem de bugs. Joern não
recupera sozinho ownership, validade de ponteiros, semântica MMIO, contratos
de firmware ou segurança da API. Cada item deve ser confrontado com Ghidra,
P-Code, relocations, assembly, headers GKI e os testes diretos da função.

## Critério para fechar um item

Um achado só pode ser encerrado quando a análise identifica o contrato stock,
o candidato preserva esse contrato, há teste direto cobrindo o caminho e um
revisor independente registra a decisão. Sem isso, o item permanece `OPEN`;
hardware continua um gate separado.
