# Atestação `006_zlog_register_work_deinit`

Checkpoint executado em 2026-08-31 com o protocolo difícil usando o snapshot Docker canônico em `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia`.

- Docker: 2 ciclos limpos, reproduzíveis; candidato `zte_tpd.ko` com SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce` e 6.307.336 bytes.
- Assembly/relocations: PASS; corpo `zlog_register_work_deinit` com 80 bytes idênticos ao stock.
- KCFI: PASS.
- Joern e slice de usos: PASS.
- Teste host/Docker: relatório compartilhado do harness zlog, com ciclos de sucesso, erro e teardown.
- Ghidra/P-Code: PASS no protocolo. O C decompilado do candidato foi preservado divergente como evidência bruta porque o Ghidra truncou a função após `_printk`; o fallback opt-in só aceita o caso quando bytes, sequência de instruções e forma ordenada do P-Code coincidem. A paridade de assembly permanece um gate independente obrigatório.

O runner é não-promotor por desenho; a alteração de status no manifesto é feita separadamente e limitada a este microtask.
