# Ambiente de Engenharia Reversa

Este diretório armazena o ecossistema de análise estática e engenharia reversa dos módulos proprietários da ZTE do dispositivo NX809J.

## 🗂️ Estrutura

- **`decompiled_raw/`**: Arquivos `.c` recuperados através da descompilação automatizada dos arquivos `.ko` originais do telefone usando Ghidra. Contém drivers como:
  - `zte_ir`: Controle do transmissor infravermelho.
  - `zte_fingerprint`: Driver do sensor biométrico.
  - `zte_led`: Driver de controle dos LEDs de efeito (AW22XXX).
  - `zte_sensor_sensitivity`: Calibração de sensores físicos.
  - `zte_stats_info`: Monitoramento e telemetria.
- **`tools/`**: Ferramentas em Python para rodar e gerenciar o fluxo do Ghidra (`ghidra_runner.py`), realizar parsing e mapear offsets.
- **`docs/`**: Documentação técnica da metodologia e instruções para o pipeline de análise.
- **`docs/TECNICAS_AVANCADAS_RECONSTRUCAO_ANDROID_GKI_6_12.md`**: pesquisa oficial, matriz de observabilidade userdebug e melhorias priorizadas.

## 🚀 Como Executar a Análise

1. Configure o Ghidra instalando a versão recomendada (JDK 21+).
2. Execute o pipeline de análise usando a ferramenta `run_pipeline.py` para re-analisar ou processar novos binários ELF.
