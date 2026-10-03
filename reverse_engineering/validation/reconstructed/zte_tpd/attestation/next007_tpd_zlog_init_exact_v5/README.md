# Atestação `007_tpd_zlog_init`

Checkpoint executado em 2026-08-31 com Docker canônico, Joern e comparação Ghidra/P-Code vinculada por MD5 ao mesmo módulo candidato.

- Docker: 2 ciclos limpos e reproduzíveis; candidato `zte_tpd.ko` com SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce` e 6.307.336 bytes.
- Assembly/relocations: PASS; 46 instruções e corpo de 184 bytes.
- KCFI: PASS.
- Joern e slice de usos: PASS.
- Ghidra/P-Code: PASS; 184 bytes, 93 registros P-Code e C normalizado equivalente. O MD5 do export (`55e4ef25df5f63e11544ff8716f186ce`) coincide com o módulo Docker.
- Teste host/Docker: harness direto com inicialização, reinitialização, zero-jiffies, seleção de dispositivo, flags, buffer e os 19 timers zlog.

O runner é não-promotor por desenho; a alteração de status no manifesto é limitada a este microtask. Hardware NX809J e runtime Android permanecem fora deste checkpoint.
