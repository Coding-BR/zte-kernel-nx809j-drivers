# Atestação `008_get_tp_algo_item_id`

Checkpoint executado em 2026-08-31 com o snapshot curado do Docker, Ghidra 12.1.2 headless, Joern e comparação AArch64/KCFI.

- Docker: 2 ciclos limpos e reproduzíveis; módulo candidato SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- Assembly/relocations: PASS; 89 instruções e 356 bytes, com sequência de chamadas e relocations equivalentes.
- KCFI: PASS; type ID stock/candidato `0x7bff871d`.
- Ghidra/P-Code: PASS; 356 bytes e 198 operações P-Code. O export candidato foi reanalisado no mesmo módulo e tem MD5 `55e4ef25df5f63e11544ff8716f186ce`.
- Joern estrito e slice de usos: PASS.
- Harness host ASan/UBSan: PASS; nove casos cobrindo os sete itens, prioridade, erro `-EIO` e logging.

O comparador registra uma exceção opt-in e estreita para o artefato de propagação do retorno de `_printk` no C decompilado candidato. Ela não substitui bytes, P-Code, identidade MD5, KCFI, Joern ou assembly independente. Runtime Android e hardware NX809J permanecem fora deste checkpoint.
