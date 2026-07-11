# zte_ir curated analysis

Pacote curado e reproduzível para a reconstrução do driver SPI IR do NX809J.

- `DOCUMENTO_TRANSICAO.md`: documento autoritativo com exatamente as três seções solicitadas.
- `GUIA_TESTE_CONTROLADO_OUTRO_AMBIENTE.md`: runbook seguro para troca temporária do módulo, validação e rollback em outro ambiente.
- `headers/`: ABI, prefixo stock byte a byte e extensão de lifetime separada.
- `tools/`: captura ADB, extração/comparação KCFI e validações de layout.
- `implementation/`: funções atômicas, harnesses e status de execução.
- `evidence/`: evidência gerada, sem modificar a execução oficial do Ghidra.
- `reports/`: resultados das validações automatizadas.

O documento automático em `../../runs/NX809J-20260711T011653Z/04_documents/zte_ir.ko/` permanece como saída bruta da pipeline. Para implementação, este pacote curado o substitui: a heurística genérica confundiu offsets de estruturas do kernel com offsets da estrutura privada do driver.

Execução completa, com o smartphone conectado:

```powershell
python .\tools\run_curated_analysis.py --serial 9125319102E9
```

O comando recompila o probe KCFI, captura runtime/DT via ADB, consulta layouts no `vmlinux`, compila os headers contra a árvore real e atualiza `MANIFEST.json` somente quando todas as validações passam.

O módulo integrado é gerado em
`implementation/final/zte_ir_reconstructed.ko`. A pipeline exige duas
compilações limpas com SHA-256 idêntico, `modpost` sem símbolo ausente, todos
os namespaces resolvidos e os oito callbacks KCFI iguais ao módulo stock.
Esse artefato não é carregado automaticamente no aparelho.

Verificação posterior da cadeia de hashes, sem recapturar o aparelho:

```powershell
python .\tools\verify_manifest.py
```
