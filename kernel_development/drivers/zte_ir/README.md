# `zte_ir` — pacote curado

Reconstrução offline do transmissor infravermelho SPI do **REDMAGIC 11 Pro+
(NX809J)** para Android 16 GKI 6.12.23.

## Fonte e binário canônicos

- Fonte: `zte_ir.c`
- Kbuild: `Makefile`
- Candidato: `zte_ir.ko`
- SHA-256: `1a1d1362729f91510ec7dca7ffb1c4865105abef8c3ded90f7c8b00a6d8d4ffc`
- Módulo Linux: `zte_ir`
- OF compatible: `zte,zte_ir`

`implementation/final/zte_ir_reconstructed.ko` é um artefato histórico das
microtarefas. Ele possui outro hash e não participa da atestação atual.

## Organização

- `DOCUMENTO_TRANSICAO.md`: arquitetura, ABI e microtarefas originais.
- `reconstruction_map.json`: 8/8 funções stock ligadas ao fonte canônico.
- `tests/`: harness que inclui diretamente `zte_ir.c`.
- `headers/`, `implementation/`, `evidence/` e `reports/`: histórico técnico e
  provas intermediárias, sem substituir a identidade do candidato canônico.
- `GUIA_TESTE_CONTROLADO_OUTRO_AMBIENTE.md`: teste no aparelho com rollback.

## Validação offline

```powershell
python .\tools\validate_reconstructed_drivers.py `
  --curated-root .\curated `
  --run-root .\runs\NX809J-20260711T011653Z `
  --driver zte_ir --rebuild `
  --work-root .\validation\work `
  --output .\validation\zte_ir\driver_audit_final.json `
  --markdown .\validation\zte_ir\DRIVER_AUDIT_FINAL.md `
  --target-kernel-manifest .\config\target_kernel.json

python .\curated\zte_ir\tests\run_host_tests.py

python .\tools\audit_offline_reconstruction.py `
  --engineering-root . --driver zte_ir `
  --output .\validation\zte_ir\offline_reconstruction_audit.json `
  --markdown .\validation\zte_ir\OFFLINE_RECONSTRUCTION_AUDIT.md `
  --allow-incomplete
```

Resultado atual: O0–O9 `PASS`; O10 pendente; hardware `DEFERRED`. Isso não
autoriza uma declaração de reconstrução funcional de 100%.
