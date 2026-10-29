# Exportação Ghidra do candidato `get_ram_num`

Exportação Headless criada a partir do módulo candidato compilado pelo ciclo
Docker. A identidade do módulo, da ferramenta e do script está em
`ghidra_candidate_export_run.json`.

- Módulo candidato SHA-256:
  `88575e71b2d8de5883a93ad6f3abbdc9e53cbbd5117e51727f87a43b269a1da9`.
- A exportação completa está em `ghidra_candidate_export/haptic_86938.ko`.
- O pacote reduzido usado na comparação está em
  `ghidra_candidate_scoped/haptic_86938.ko` e contém `get_ram_num`.
- O `hard_driver_job.get_ram_num.json` vincula esse pacote ao job de validação.
- `ghidra_candidate_export_run.json` vincula o módulo, o MD5 conferido pelo
  Ghidra, o hash do script e os manifests das exportações.

A comparação semântica está no checkpoint irmão
`haptic_get_ram_num_fix_final_20261029`. O C normalizado coincide; a sequência
ordenada de P-Code não coincide e permanece bloqueada.
