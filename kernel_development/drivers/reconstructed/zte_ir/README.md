# `zte_ir` — pacote curado

Reconstrução offline do transmissor infravermelho SPI do **REDMAGIC 11 Pro+
(NX809J)** para Android 16 GKI 6.12.23.

## Fonte e binário canônicos

- Fonte: `zte_ir.c`
- Kbuild: `Makefile`
- Candidato: `zte_ir.ko`
- SHA-256: `4fa1ae637acde49f4b74062fc63a22a98f35c5b94573574dc532e3bee850b2cd`
- Módulo Linux: `zte_ir`
- OF compatible: `zte,zte_ir`

`implementation/final/zte_ir_reconstructed.ko` é um artefato histórico das
microtarefas. Ele possui outro hash e não participa da atestação atual.

## Organização

- `DOCUMENTO_TRANSICAO.md`: arquitetura, ABI e microtarefas originais.
- `reconstruction_map.json`: 8/8 funções stock ligadas ao fonte canônico.
- `zte_ir_write_exact.S`, `zte_ir_ioctl_exact.S`, `zte_ir_open_exact.S`,
  `zte_ir_release_exact.S`, `zte_ir_probe_exact.S`,
  `zte_ir_exact_bases.S` e `exact_stock_sections/`: ilhas AArch64 exact de
  `zte_ir_write`, `zte_ir_ioctl`, `zte_ir_open`, `zte_ir_release`, `zte_ir_probe` e `zte_ir_remove`, além das strings stock
  necessárias ao layout ELF.
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

Resultado atual: `zte_ir_write`, `zte_ir_ioctl`, `zte_ir_open`, `zte_ir_release`, `zte_ir_probe` e `zte_ir_remove` possuem
atestação exact offline; as demais funções permanecem na reconstrução C
safety-oriented. O10 e hardware seguem pendentes. Isso não autoriza uma
declaração de reconstrução funcional de 100%.
